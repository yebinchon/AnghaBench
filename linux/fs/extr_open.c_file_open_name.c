
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct open_flags {int dummy; } ;
struct filename {int dummy; } ;
struct file {int dummy; } ;


 int AT_FDCWD ;
 struct file* ERR_PTR (int) ;
 int build_open_flags (int,int ,struct open_flags*) ;
 struct file* do_filp_open (int ,struct filename*,struct open_flags*) ;

struct file *file_open_name(struct filename *name, int flags, umode_t mode)
{
 struct open_flags op;
 int err = build_open_flags(flags, mode, &op);
 return err ? ERR_PTR(err) : do_filp_open(AT_FDCWD, name, &op);
}
