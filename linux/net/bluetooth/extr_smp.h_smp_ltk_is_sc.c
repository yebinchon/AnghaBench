
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_ltk {int type; } ;





__attribute__((used)) static inline bool smp_ltk_is_sc(struct smp_ltk *key)
{
 switch (key->type) {
 case 129:
 case 128:
  return 1;
 }

 return 0;
}
