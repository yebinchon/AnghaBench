
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* subsystem; int argc; char const** argv; scalar_t__ index; } ;


 TYPE_1__ trace_probe_log ;

void trace_probe_log_init(const char *subsystem, int argc, const char **argv)
{
 trace_probe_log.subsystem = subsystem;
 trace_probe_log.argc = argc;
 trace_probe_log.argv = argv;
 trace_probe_log.index = 0;
}
