
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins {int dummy; } ;
struct arch {int nr_instructions_allocated; int nr_instructions; struct ins* instructions; } ;


 struct ins* calloc (size_t,int) ;
 int memcpy (struct ins*,struct ins*,int) ;
 struct ins* realloc (struct ins*,size_t) ;

__attribute__((used)) static int arch__grow_instructions(struct arch *arch)
{
 struct ins *new_instructions;
 size_t new_nr_allocated;

 if (arch->nr_instructions_allocated == 0 && arch->instructions)
  goto grow_from_non_allocated_table;

 new_nr_allocated = arch->nr_instructions_allocated + 128;
 new_instructions = realloc(arch->instructions, new_nr_allocated * sizeof(struct ins));
 if (new_instructions == ((void*)0))
  return -1;

out_update_instructions:
 arch->instructions = new_instructions;
 arch->nr_instructions_allocated = new_nr_allocated;
 return 0;

grow_from_non_allocated_table:
 new_nr_allocated = arch->nr_instructions + 128;
 new_instructions = calloc(new_nr_allocated, sizeof(struct ins));
 if (new_instructions == ((void*)0))
  return -1;

 memcpy(new_instructions, arch->instructions, arch->nr_instructions);
 goto out_update_instructions;
}
