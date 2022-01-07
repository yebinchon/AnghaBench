
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_list_str; } ;


 int dprintf (char*,int ) ;
 TYPE_1__ p0 ;
 int strdup (char const*) ;

__attribute__((used)) static int parse_cpu_list(const char *arg)
{
 p0.cpu_list_str = strdup(arg);

 dprintf("got CPU list: {%s}\n", p0.cpu_list_str);

 return 0;
}
