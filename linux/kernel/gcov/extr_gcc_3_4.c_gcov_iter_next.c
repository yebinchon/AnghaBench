
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gcov_iterator {int record; size_t type; size_t num_types; TYPE_1__* info; int function; int count; } ;
struct TYPE_6__ {int * n_ctrs; } ;
struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {int n_functions; } ;


 int EINVAL ;
 TYPE_3__* get_func (struct gcov_iterator*) ;
 TYPE_2__* get_type (struct gcov_iterator*) ;

int gcov_iter_next(struct gcov_iterator *iter)
{
 switch (iter->record) {
 case 134:
 case 129:
 case 131:
 case 130:
 case 132:
 case 135:

  iter->record++;
  break;
 case 137:

  iter->count++;

 case 136:
  if (iter->count < get_func(iter)->n_ctrs[iter->type]) {
   iter->record = 9;
   break;
  }

  get_type(iter)->offset += iter->count;
  iter->count = 0;
  iter->type++;

 case 133:
  if (iter->type < iter->num_types) {
   iter->record = 7;
   break;
  }

  iter->type = 0;
  iter->function++;

 case 128:
  if (iter->function < iter->info->n_functions)
   iter->record = 3;
  else
   iter->record = -1;
  break;
 }

 if (iter->record == -1)
  return -EINVAL;
 else
  return 0;
}
