
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;
struct cred {int dummy; } ;


 int FMODE_NOACCOUNT ;
 int IS_ERR (struct file*) ;
 struct file* __alloc_file (int,struct cred const*) ;

struct file *alloc_empty_file_noaccount(int flags, const struct cred *cred)
{
 struct file *f = __alloc_file(flags, cred);

 if (!IS_ERR(f))
  f->f_mode |= FMODE_NOACCOUNT;

 return f;
}
