
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_uint_from_file (char const*,char*) ;

__attribute__((used)) static int determine_kprobe_perf_type(void)
{
 const char *file = "/sys/bus/event_source/devices/kprobe/type";

 return parse_uint_from_file(file, "%d\n");
}
