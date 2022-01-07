
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_sb_info {scalar_t__ s_es; } ;
struct TYPE_2__ {void* explicit_ptr; int offset; } ;
struct ext4_attr {int attr_ptr; TYPE_1__ u; } ;






__attribute__((used)) static void *calc_ptr(struct ext4_attr *a, struct ext4_sb_info *sbi)
{
 switch (a->attr_ptr) {
 case 130:
  return a->u.explicit_ptr;
 case 129:
  return (void *) (((char *) sbi) + a->u.offset);
 case 128:
  return (void *) (((char *) sbi->s_es) + a->u.offset);
 }
 return ((void*)0);
}
