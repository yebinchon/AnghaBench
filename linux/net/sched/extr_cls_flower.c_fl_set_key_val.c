
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int TCA_FLOWER_UNSPEC ;
 int memset (void*,int,int) ;
 int nla_memcpy (void*,struct nlattr*,int) ;

__attribute__((used)) static void fl_set_key_val(struct nlattr **tb,
      void *val, int val_type,
      void *mask, int mask_type, int len)
{
 if (!tb[val_type])
  return;
 nla_memcpy(val, tb[val_type], len);
 if (mask_type == TCA_FLOWER_UNSPEC || !tb[mask_type])
  memset(mask, 0xff, len);
 else
  nla_memcpy(mask, tb[mask_type], len);
}
