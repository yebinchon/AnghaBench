
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; } ;


 int SYMBOL_CHOICEVAL ;

__attribute__((used)) static inline bool sym_is_choice_value(struct symbol *sym)
{
 return sym->flags & SYMBOL_CHOICEVAL ? 1 : 0;
}
