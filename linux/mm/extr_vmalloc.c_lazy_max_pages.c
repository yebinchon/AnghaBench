
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;
 unsigned int fls (int ) ;
 int num_online_cpus () ;

__attribute__((used)) static unsigned long lazy_max_pages(void)
{
 unsigned int log;

 log = fls(num_online_cpus());

 return log * (32UL * 1024 * 1024 / PAGE_SIZE);
}
