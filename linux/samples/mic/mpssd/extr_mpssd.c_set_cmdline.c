
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {int id; int name; } ;


 int PATH_MAX ;
 int mpsslog (char*,int ,char*) ;
 int setsysfs (int ,char*,char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void
set_cmdline(struct mic_info *mic)
{
 char buffer[PATH_MAX];
 int len;

 len = snprintf(buffer, PATH_MAX,
  "clocksource=tsc highres=off nohz=off ");
 len += snprintf(buffer + len, PATH_MAX - len,
  "cpufreq_on;corec6_off;pc3_off;pc6_off ");
 len += snprintf(buffer + len, PATH_MAX - len,
  "ifcfg=static;address,172.31.%d.1;netmask,255.255.255.0",
  mic->id + 1);

 setsysfs(mic->name, "cmdline", buffer);
 mpsslog("%s: Command line: \"%s\"\n", mic->name, buffer);
 snprintf(buffer, PATH_MAX, "172.31.%d.1", mic->id + 1);
 mpsslog("%s: IPADDR: \"%s\"\n", mic->name, buffer);
}
