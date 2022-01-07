
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct gfs2_sbd {TYPE_1__* sd_statfs_inode; TYPE_1__* sd_rindex; TYPE_1__* sd_quota_inode; scalar_t__ sd_rindex_uptodate; int sd_journal_ready; int sd_master_dir; } ;
struct TYPE_4__ {int i_rwsem; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int UNDO ;
 int complete_all (int *) ;
 struct inode* d_inode (int ) ;
 int fs_err (struct gfs2_sbd*,char*,int) ;
 int gfs2_clear_rgrpd (struct gfs2_sbd*) ;
 void* gfs2_lookup_simple (struct inode*,char*) ;
 int gfs2_quota_imutex_key ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int init_journal (struct gfs2_sbd*,int) ;
 int iput (TYPE_1__*) ;
 int lockdep_set_class (int *,int *) ;

__attribute__((used)) static int init_inodes(struct gfs2_sbd *sdp, int undo)
{
 int error = 0;
 struct inode *master = d_inode(sdp->sd_master_dir);

 if (undo)
  goto fail_qinode;

 error = init_journal(sdp, undo);
 complete_all(&sdp->sd_journal_ready);
 if (error)
  goto fail;


 sdp->sd_statfs_inode = gfs2_lookup_simple(master, "statfs");
 if (IS_ERR(sdp->sd_statfs_inode)) {
  error = PTR_ERR(sdp->sd_statfs_inode);
  fs_err(sdp, "can't read in statfs inode: %d\n", error);
  goto fail_journal;
 }


 sdp->sd_rindex = gfs2_lookup_simple(master, "rindex");
 if (IS_ERR(sdp->sd_rindex)) {
  error = PTR_ERR(sdp->sd_rindex);
  fs_err(sdp, "can't get resource index inode: %d\n", error);
  goto fail_statfs;
 }
 sdp->sd_rindex_uptodate = 0;


 sdp->sd_quota_inode = gfs2_lookup_simple(master, "quota");
 if (IS_ERR(sdp->sd_quota_inode)) {
  error = PTR_ERR(sdp->sd_quota_inode);
  fs_err(sdp, "can't get quota file inode: %d\n", error);
  goto fail_rindex;
 }




 lockdep_set_class(&sdp->sd_quota_inode->i_rwsem,
     &gfs2_quota_imutex_key);

 error = gfs2_rindex_update(sdp);
 if (error)
  goto fail_qinode;

 return 0;

fail_qinode:
 iput(sdp->sd_quota_inode);
fail_rindex:
 gfs2_clear_rgrpd(sdp);
 iput(sdp->sd_rindex);
fail_statfs:
 iput(sdp->sd_statfs_inode);
fail_journal:
 init_journal(sdp, UNDO);
fail:
 return error;
}
