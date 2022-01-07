
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; TYPE_1__* ops; } ;
struct disasm_line {int al; TYPE_2__ ins; int ops; } ;
struct TYPE_3__ {int (* free ) (int *) ;} ;


 int annotation_line__delete (int *) ;
 int ins__delete (int *) ;
 int stub1 (int *) ;
 int zfree (int *) ;

void disasm_line__free(struct disasm_line *dl)
{
 if (dl->ins.ops && dl->ins.ops->free)
  dl->ins.ops->free(&dl->ops);
 else
  ins__delete(&dl->ops);
 zfree(&dl->ins.name);
 annotation_line__delete(&dl->al);
}
