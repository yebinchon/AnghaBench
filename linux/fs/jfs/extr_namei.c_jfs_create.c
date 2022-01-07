
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int umode_t ;
typedef int tid_t ;
struct TYPE_4__ {int ixpxd; } ;
struct tblock {TYPE_1__ u; int ino; int xflag; } ;
struct inode {int i_mtime; int i_ctime; TYPE_2__* i_mapping; int * i_fop; int * i_op; int i_ino; int i_sb; } ;
struct dentry {int d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int ino_t ;
struct TYPE_6__ {int commit_mutex; int ixpxd; } ;
struct TYPE_5__ {int * a_ops; } ;


 int COMMIT_CREATE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int EIO ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_CREATE ;
 TYPE_3__* JFS_IP (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int dtInsert (int ,struct inode*,struct component_name*,int *,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int free_ea_wmap (struct inode*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 struct inode* ialloc (struct inode*,int ) ;
 int jfs_aops ;
 int jfs_err (char*,...) ;
 int jfs_file_inode_operations ;
 int jfs_file_operations ;
 int jfs_info (char*,...) ;
 int jfs_init_acl (int ,struct inode*,struct inode*) ;
 int jfs_init_security (int ,struct inode*,struct inode*,int *) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 int xtInitRoot (int ,struct inode*) ;

__attribute__((used)) static int jfs_create(struct inode *dip, struct dentry *dentry, umode_t mode,
  bool excl)
{
 int rc = 0;
 tid_t tid;
 struct inode *ip = ((void*)0);
 ino_t ino;
 struct component_name dname;
 struct btstack btstack;
 struct inode *iplist[2];
 struct tblock *tblk;

 jfs_info("jfs_create: dip:0x%p name:%pd", dip, dentry);

 rc = dquot_initialize(dip);
 if (rc)
  goto out1;





 if ((rc = get_UCSname(&dname, dentry)))
  goto out1;






 ip = ialloc(dip, mode);
 if (IS_ERR(ip)) {
  rc = PTR_ERR(ip);
  goto out2;
 }

 tid = txBegin(dip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 rc = jfs_init_acl(tid, ip, dip);
 if (rc)
  goto out3;

 rc = jfs_init_security(tid, ip, dip, &dentry->d_name);
 if (rc) {
  txAbort(tid, 0);
  goto out3;
 }

 if ((rc = dtSearch(dip, &dname, &ino, &btstack, JFS_CREATE))) {
  jfs_err("jfs_create: dtSearch returned %d", rc);
  txAbort(tid, 0);
  goto out3;
 }

 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_CREATE;
 tblk->ino = ip->i_ino;
 tblk->u.ixpxd = JFS_IP(ip)->ixpxd;

 iplist[0] = dip;
 iplist[1] = ip;




 xtInitRoot(tid, ip);





 ino = ip->i_ino;
 if ((rc = dtInsert(tid, dip, &dname, &ino, &btstack))) {
  if (rc == -EIO) {
   jfs_err("jfs_create: dtInsert returned -EIO");
   txAbort(tid, 1);
  } else
   txAbort(tid, 0);
  goto out3;
 }

 ip->i_op = &jfs_file_inode_operations;
 ip->i_fop = &jfs_file_operations;
 ip->i_mapping->a_ops = &jfs_aops;

 mark_inode_dirty(ip);

 dip->i_ctime = dip->i_mtime = current_time(dip);

 mark_inode_dirty(dip);

 rc = txCommit(tid, 2, &iplist[0], 0);

      out3:
 txEnd(tid);
 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dip)->commit_mutex);
 if (rc) {
  free_ea_wmap(ip);
  clear_nlink(ip);
  discard_new_inode(ip);
 } else {
  d_instantiate_new(dentry, ip);
 }

      out2:
 free_UCSname(&dname);

      out1:

 jfs_info("jfs_create: rc:%d", rc);
 return rc;
}
