
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data {int file; } ;
typedef int ssize_t ;


 int perf_data_file__write (int *,void*,size_t) ;

ssize_t perf_data__write(struct perf_data *data,
         void *buf, size_t size)
{
 return perf_data_file__write(&data->file, buf, size);
}
