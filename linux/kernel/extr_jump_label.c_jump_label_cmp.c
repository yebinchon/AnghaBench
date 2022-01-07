
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;


 scalar_t__ jump_entry_code (struct jump_entry const*) ;
 scalar_t__ jump_entry_key (struct jump_entry const*) ;

__attribute__((used)) static int jump_label_cmp(const void *a, const void *b)
{
 const struct jump_entry *jea = a;
 const struct jump_entry *jeb = b;




 if (jump_entry_key(jea) < jump_entry_key(jeb))
  return -1;

 if (jump_entry_key(jea) > jump_entry_key(jeb))
  return 1;






 if (jump_entry_code(jea) < jump_entry_code(jeb))
  return -1;

 if (jump_entry_code(jea) > jump_entry_code(jeb))
  return 1;

 return 0;
}
