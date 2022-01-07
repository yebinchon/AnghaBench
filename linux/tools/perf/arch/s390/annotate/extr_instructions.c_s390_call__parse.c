
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map_symbol {struct map* map; } ;
struct map {int (* map_ip ) (struct map*,int ) ;} ;
struct TYPE_4__ {scalar_t__ addr; int sym; int * name; } ;
struct ins_operands {char* raw; TYPE_2__ target; } ;
struct TYPE_3__ {char skip_functions_char; } ;
struct arch {TYPE_1__ objdump; } ;
struct addr_map_symbol {int sym; int addr; struct map* map; } ;


 int map__objdump_2mem (struct map*,scalar_t__) ;
 scalar_t__ map__rip_2objdump (struct map*,int ) ;
 scalar_t__ map_groups__find_ams (struct addr_map_symbol*) ;
 char* strchr (char*,char) ;
 int * strdup (char*) ;
 scalar_t__ strtoull (char*,char**,int) ;
 int stub1 (struct map*,int ) ;

__attribute__((used)) static int s390_call__parse(struct arch *arch, struct ins_operands *ops,
       struct map_symbol *ms)
{
 char *endptr, *tok, *name;
 struct map *map = ms->map;
 struct addr_map_symbol target = {
  .map = map,
 };

 tok = strchr(ops->raw, ',');
 if (!tok)
  return -1;

 ops->target.addr = strtoull(tok + 1, &endptr, 16);

 name = strchr(endptr, '<');
 if (name == ((void*)0))
  return -1;

 name++;

 if (arch->objdump.skip_functions_char &&
     strchr(name, arch->objdump.skip_functions_char))
  return -1;

 tok = strchr(name, '>');
 if (tok == ((void*)0))
  return -1;

 *tok = '\0';
 ops->target.name = strdup(name);
 *tok = '>';

 if (ops->target.name == ((void*)0))
  return -1;
 target.addr = map__objdump_2mem(map, ops->target.addr);

 if (map_groups__find_ams(&target) == 0 &&
     map__rip_2objdump(target.map, map->map_ip(target.map, target.addr)) == ops->target.addr)
  ops->target.sym = target.sym;

 return 0;
}
