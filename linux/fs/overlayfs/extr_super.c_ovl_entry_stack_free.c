
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_entry {unsigned int numlower; TYPE_1__* lowerstack; } ;
struct TYPE_2__ {int dentry; } ;


 int dput (int ) ;

__attribute__((used)) static void ovl_entry_stack_free(struct ovl_entry *oe)
{
 unsigned int i;

 for (i = 0; i < oe->numlower; i++)
  dput(oe->lowerstack[i].dentry);
}
