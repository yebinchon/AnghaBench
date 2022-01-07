
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {int* mask; } ;


 int AUDIT_BIT (unsigned long) ;
 int AUDIT_BITMASK_SIZE ;
 int AUDIT_WORD (unsigned long) ;

__attribute__((used)) static int audit_in_mask(const struct audit_krule *rule, unsigned long val)
{
 int word, bit;

 if (val > 0xffffffff)
  return 0;

 word = AUDIT_WORD(val);
 if (word >= AUDIT_BITMASK_SIZE)
  return 0;

 bit = AUDIT_BIT(val);

 return rule->mask[word] & bit;
}
