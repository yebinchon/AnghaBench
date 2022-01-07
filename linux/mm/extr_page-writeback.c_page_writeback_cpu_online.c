
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writeback_set_ratelimit () ;

__attribute__((used)) static int page_writeback_cpu_online(unsigned int cpu)
{
 writeback_set_ratelimit();
 return 0;
}
