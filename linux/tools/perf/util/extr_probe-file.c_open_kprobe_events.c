
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int open_trace_file (char*,int) ;

__attribute__((used)) static int open_kprobe_events(bool readwrite)
{
 return open_trace_file("kprobe_events", readwrite);
}
