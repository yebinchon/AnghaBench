
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int MPI ;


 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (unsigned int,int ) ;
 unsigned int mpi_get_size (int ) ;
 int mpi_read_buffer (int ,void*,unsigned int,unsigned int*,int*) ;

void *mpi_get_buffer(MPI a, unsigned *nbytes, int *sign)
{
 uint8_t *buf;
 unsigned int n;
 int ret;

 if (!nbytes)
  return ((void*)0);

 n = mpi_get_size(a);

 if (!n)
  n++;

 buf = kmalloc(n, GFP_KERNEL);

 if (!buf)
  return ((void*)0);

 ret = mpi_read_buffer(a, buf, n, nbytes, sign);

 if (ret) {
  kfree(buf);
  return ((void*)0);
 }
 return buf;
}
