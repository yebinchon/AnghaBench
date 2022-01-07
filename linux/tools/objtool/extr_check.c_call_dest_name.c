
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct instruction {TYPE_1__* call_dest; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static inline const char *call_dest_name(struct instruction *insn)
{
 if (insn->call_dest)
  return insn->call_dest->name;

 return "{dynamic}";
}
