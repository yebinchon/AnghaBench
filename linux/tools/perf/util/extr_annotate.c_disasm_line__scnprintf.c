
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int name; int ops; } ;
struct disasm_line {TYPE_2__ ops; TYPE_1__ ins; } ;


 int ins__scnprintf (TYPE_1__*,char*,size_t,TYPE_2__*,int) ;
 int scnprintf (char*,size_t,char*,int,int ,int ) ;

int disasm_line__scnprintf(struct disasm_line *dl, char *bf, size_t size, bool raw, int max_ins_name)
{
 if (raw || !dl->ins.ops)
  return scnprintf(bf, size, "%-*s %s", max_ins_name, dl->ins.name, dl->ops.raw);

 return ins__scnprintf(&dl->ins, bf, size, &dl->ops, max_ins_name);
}
