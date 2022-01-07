
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_first_dso () ;
 int may_cache_fd () ;

__attribute__((used)) static void check_data_close(void)
{
 bool cache_fd = may_cache_fd();

 if (!cache_fd)
  close_first_dso();
}
