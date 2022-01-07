
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {scalar_t__ len; int name; } ;
struct ocfs2_cluster_connection {int dummy; } ;
struct inode {int dummy; } ;
struct dlmfs_inode_private {struct ocfs2_cluster_connection* ip_conn; } ;
struct dentry {struct qstr d_name; } ;


 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ GROUP_NAME_MAX ;
 scalar_t__ IS_ERR (struct ocfs2_cluster_connection*) ;
 int ML_ERROR ;
 int PTR_ERR (struct ocfs2_cluster_connection*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 struct inode* dlmfs_get_inode (struct inode*,struct dentry*,int) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 struct ocfs2_cluster_connection* user_dlm_register (struct qstr const*) ;

__attribute__((used)) static int dlmfs_mkdir(struct inode * dir,
         struct dentry * dentry,
         umode_t mode)
{
 int status;
 struct inode *inode = ((void*)0);
 const struct qstr *domain = &dentry->d_name;
 struct dlmfs_inode_private *ip;
 struct ocfs2_cluster_connection *conn;

 mlog(0, "mkdir %.*s\n", domain->len, domain->name);


 if (domain->len >= GROUP_NAME_MAX) {
  status = -EINVAL;
  mlog(ML_ERROR, "invalid domain name for directory.\n");
  goto bail;
 }

 inode = dlmfs_get_inode(dir, dentry, mode | S_IFDIR);
 if (!inode) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 ip = DLMFS_I(inode);

 conn = user_dlm_register(domain);
 if (IS_ERR(conn)) {
  status = PTR_ERR(conn);
  mlog(ML_ERROR, "Error %d could not register domain \"%.*s\"\n",
       status, domain->len, domain->name);
  goto bail;
 }
 ip->ip_conn = conn;

 inc_nlink(dir);
 d_instantiate(dentry, inode);
 dget(dentry);

 status = 0;
bail:
 if (status < 0)
  iput(inode);
 return status;
}
