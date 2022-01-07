
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fd {int dummy; } ;


 int ovl_real_fdget_meta (struct file const*,struct fd*,int) ;

__attribute__((used)) static int ovl_real_fdget(const struct file *file, struct fd *real)
{
 return ovl_real_fdget_meta(file, real, 0);
}
