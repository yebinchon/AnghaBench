
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class {int usage_mask; } ;
typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;


 int LOCK_USAGE_DIR_MASK ;
 int lock_flag (int) ;

__attribute__((used)) static char get_usage_char(struct lock_class *class, enum lock_usage_bit bit)
{




 char c = '.';
 if (class->usage_mask & lock_flag(bit + LOCK_USAGE_DIR_MASK)) {
  c = '+';
  if (class->usage_mask & lock_flag(bit))
   c = '?';
 } else if (class->usage_mask & lock_flag(bit))
  c = '-';

 return c;
}
