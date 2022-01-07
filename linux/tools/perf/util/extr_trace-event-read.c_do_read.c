
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_read (int ,void*,int) ;
 int input_fd ;
 int pr_debug (char*,int,int) ;
 int trace_data_size ;

__attribute__((used)) static int do_read(void *data, int size)
{
 int r;

 r = __do_read(input_fd, data, size);
 if (r <= 0) {
  pr_debug("reading input file (size expected=%d received=%d)",
    size, r);
  return -1;
 }

 trace_data_size += r;

 return r;
}
