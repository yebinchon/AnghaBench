
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libperf_print_fn_t ;


 int _SC_PAGE_SIZE ;
 int __libperf_pr ;
 int page_size ;
 int sysconf (int ) ;

void libperf_init(libperf_print_fn_t fn)
{
 page_size = sysconf(_SC_PAGE_SIZE);
 __libperf_pr = fn;
}
