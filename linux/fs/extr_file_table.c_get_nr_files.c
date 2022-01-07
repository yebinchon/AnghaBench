
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nr_files ;
 long percpu_counter_read_positive (int *) ;

__attribute__((used)) static long get_nr_files(void)
{
 return percpu_counter_read_positive(&nr_files);
}
