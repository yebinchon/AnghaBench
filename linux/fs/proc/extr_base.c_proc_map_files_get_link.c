
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 char const* ERR_PTR (int ) ;
 int capable (int ) ;
 char const* proc_pid_get_link (struct dentry*,struct inode*,struct delayed_call*) ;

__attribute__((used)) static const char *
proc_map_files_get_link(struct dentry *dentry,
   struct inode *inode,
          struct delayed_call *done)
{
 if (!capable(CAP_SYS_ADMIN))
  return ERR_PTR(-EPERM);

 return proc_pid_get_link(dentry, inode, done);
}
