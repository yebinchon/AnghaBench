
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_inject {int bytes_written; int output; } ;
typedef scalar_t__ ssize_t ;


 int errno ;
 scalar_t__ perf_data__write (int *,void*,size_t) ;

__attribute__((used)) static int output_bytes(struct perf_inject *inject, void *buf, size_t sz)
{
 ssize_t size;

 size = perf_data__write(&inject->output, buf, sz);
 if (size < 0)
  return -errno;

 inject->bytes_written += size;
 return 0;
}
