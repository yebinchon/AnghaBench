
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int root_dir; } ;
struct TYPE_2__ {int default_guest_kallsyms; } ;


 scalar_t__ machine__is_default_guest (struct machine*) ;
 int scnprintf (char*,size_t,char*,int ) ;
 TYPE_1__ symbol_conf ;

void machine__get_kallsyms_filename(struct machine *machine, char *buf,
        size_t bufsz)
{
 if (machine__is_default_guest(machine))
  scnprintf(buf, bufsz, "%s", symbol_conf.default_guest_kallsyms);
 else
  scnprintf(buf, bufsz, "%s/proc/kallsyms", machine->root_dir);
}
