
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct nameidata {int dummy; } ;
struct filename {int dummy; } ;


 int AUDIT_INODE_NOEVAL ;
 int ECHILD ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct filename*) ;
 unsigned int LOOKUP_RCU ;
 unsigned int LOOKUP_REVAL ;
 int PTR_ERR (struct filename*) ;
 int audit_inode (struct filename*,int ,int ) ;
 scalar_t__ likely (int) ;
 int path_mountpoint (struct nameidata*,unsigned int,struct path*) ;
 int putname (struct filename*) ;
 int restore_nameidata () ;
 int set_nameidata (struct nameidata*,int,struct filename*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
filename_mountpoint(int dfd, struct filename *name, struct path *path,
   unsigned int flags)
{
 struct nameidata nd;
 int error;
 if (IS_ERR(name))
  return PTR_ERR(name);
 set_nameidata(&nd, dfd, name);
 error = path_mountpoint(&nd, flags | LOOKUP_RCU, path);
 if (unlikely(error == -ECHILD))
  error = path_mountpoint(&nd, flags, path);
 if (unlikely(error == -ESTALE))
  error = path_mountpoint(&nd, flags | LOOKUP_REVAL, path);
 if (likely(!error))
  audit_inode(name, path->dentry, AUDIT_INODE_NOEVAL);
 restore_nameidata();
 putname(name);
 return error;
}
