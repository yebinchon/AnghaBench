
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* name; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ ins; } ;
struct TYPE_8__ {TYPE_2__ locked; } ;
struct disasm_line {TYPE_4__ ins; TYPE_3__ ops; } ;
struct annotate_browser {int arch; } ;
struct TYPE_10__ {int node; } ;


 TYPE_5__ al ;
 int ins__is_fused (int ,char const*,char*) ;
 scalar_t__ ins__is_lock (TYPE_4__*) ;
 struct disasm_line* list_prev_entry (struct disasm_line*,int ) ;

__attribute__((used)) static bool is_fused(struct annotate_browser *ab, struct disasm_line *cursor)
{
 struct disasm_line *pos = list_prev_entry(cursor, al.node);
 const char *name;

 if (!pos)
  return 0;

 if (ins__is_lock(&pos->ins))
  name = pos->ops.locked.ins.name;
 else
  name = pos->ins.name;

 if (!name || !cursor->ins.name)
  return 0;

 return ins__is_fused(ab->arch, name, cursor->ins.name);
}
