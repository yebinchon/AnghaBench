
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct inode {void* i_mtime; void* i_ctime; int i_ino; int i_sb; } ;
struct dentry {int dummy; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int ino_t ;
struct TYPE_2__ {int commit_mutex; } ;


 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int JFS_CREATE ;
 TYPE_1__* JFS_IP (struct inode*) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int dtInsert (int ,struct inode*,struct component_name*,int *,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int jfs_info (char*,int,...) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

__attribute__((used)) static int jfs_link(struct dentry *old_dentry,
      struct inode *dir, struct dentry *dentry)
{
 int rc;
 tid_t tid;
 struct inode *ip = d_inode(old_dentry);
 ino_t ino;
 struct component_name dname;
 struct btstack btstack;
 struct inode *iplist[2];

 jfs_info("jfs_link: %pd %pd", old_dentry, dentry);

 rc = dquot_initialize(dir);
 if (rc)
  goto out;

 tid = txBegin(ip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);




 if ((rc = get_UCSname(&dname, dentry)))
  goto out_tx;

 if ((rc = dtSearch(dir, &dname, &ino, &btstack, JFS_CREATE)))
  goto free_dname;




 ino = ip->i_ino;
 if ((rc = dtInsert(tid, dir, &dname, &ino, &btstack)))
  goto free_dname;


 inc_nlink(ip);
 ip->i_ctime = current_time(ip);
 dir->i_ctime = dir->i_mtime = current_time(dir);
 mark_inode_dirty(dir);
 ihold(ip);

 iplist[0] = ip;
 iplist[1] = dir;
 rc = txCommit(tid, 2, &iplist[0], 0);

 if (rc) {
  drop_nlink(ip);
  iput(ip);
 } else
  d_instantiate(dentry, ip);

      free_dname:
 free_UCSname(&dname);

      out_tx:
 txEnd(tid);

 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dir)->commit_mutex);

      out:
 jfs_info("jfs_link: rc:%d", rc);
 return rc;
}
