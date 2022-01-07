
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;


 unsigned long JUMP_LABEL_NOP_SIZE ;
 unsigned long jump_entry_code (struct jump_entry*) ;

__attribute__((used)) static int addr_conflict(struct jump_entry *entry, void *start, void *end)
{
 if (jump_entry_code(entry) <= (unsigned long)end &&
     jump_entry_code(entry) + JUMP_LABEL_NOP_SIZE > (unsigned long)start)
  return 1;

 return 0;
}
