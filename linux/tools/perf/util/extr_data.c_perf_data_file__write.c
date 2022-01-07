
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data_file {int fd; } ;
typedef int ssize_t ;


 int writen (int ,void*,size_t) ;

ssize_t perf_data_file__write(struct perf_data_file *file,
         void *buf, size_t size)
{
 return writen(file->fd, buf, size);
}
