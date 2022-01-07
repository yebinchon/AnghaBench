
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int create_sid; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 int d_inode (struct dentry*) ;
 struct cred* prepare_creds () ;
 struct task_security_struct* selinux_cred (struct cred*) ;
 int selinux_inode_getsecid (int ,int *) ;

__attribute__((used)) static int selinux_inode_copy_up(struct dentry *src, struct cred **new)
{
 u32 sid;
 struct task_security_struct *tsec;
 struct cred *new_creds = *new;

 if (new_creds == ((void*)0)) {
  new_creds = prepare_creds();
  if (!new_creds)
   return -ENOMEM;
 }

 tsec = selinux_cred(new_creds);

 selinux_inode_getsecid(d_inode(src), &sid);
 tsec->create_sid = sid;
 *new = new_creds;
 return 0;
}
