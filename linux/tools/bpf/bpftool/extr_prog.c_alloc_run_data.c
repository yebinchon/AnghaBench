
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (unsigned int,int) ;
 int errno ;
 int p_err (char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int alloc_run_data(void **data_ptr, unsigned int size_out)
{
 *data_ptr = calloc(size_out, 1);
 if (!*data_ptr) {
  p_err("failed to allocate memory for output data/ctx: %s",
        strerror(errno));
  return -1;
 }

 return 0;
}
