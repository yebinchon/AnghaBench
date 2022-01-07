
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _RET_IP_ ;
 int kasan_report (unsigned long,size_t,int,int ) ;

void __asan_report_load_n_noabort(unsigned long addr, size_t size)
{
 kasan_report(addr, size, 0, _RET_IP_);
}
