
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_flags {int lookup_flags; } ;
struct nameidata {int dummy; } ;
struct filename {int dummy; } ;
struct file {int dummy; } ;


 int ECHILD ;
 struct file* ERR_PTR (int ) ;
 int ESTALE ;
 int LOOKUP_RCU ;
 int LOOKUP_REVAL ;
 struct file* path_openat (struct nameidata*,struct open_flags const*,int) ;
 int restore_nameidata () ;
 int set_nameidata (struct nameidata*,int,struct filename*) ;
 scalar_t__ unlikely (int) ;

struct file *do_filp_open(int dfd, struct filename *pathname,
  const struct open_flags *op)
{
 struct nameidata nd;
 int flags = op->lookup_flags;
 struct file *filp;

 set_nameidata(&nd, dfd, pathname);
 filp = path_openat(&nd, op, flags | LOOKUP_RCU);
 if (unlikely(filp == ERR_PTR(-ECHILD)))
  filp = path_openat(&nd, op, flags);
 if (unlikely(filp == ERR_PTR(-ESTALE)))
  filp = path_openat(&nd, op, flags | LOOKUP_REVAL);
 restore_nameidata();
 return filp;
}
