
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coredump_params {int pos; } ;


 int dump_skip (struct coredump_params*,int) ;

int dump_align(struct coredump_params *cprm, int align)
{
 unsigned mod = cprm->pos & (align - 1);
 if (align & (align - 1))
  return 0;
 return mod ? dump_skip(cprm, align - mod) : 1;
}
