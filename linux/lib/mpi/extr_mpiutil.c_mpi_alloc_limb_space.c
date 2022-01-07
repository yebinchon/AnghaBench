
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mpi_ptr_t ;
typedef int mpi_limb_t ;


 int GFP_KERNEL ;
 int * kmalloc (size_t,int ) ;

mpi_ptr_t mpi_alloc_limb_space(unsigned nlimbs)
{
 size_t len = nlimbs * sizeof(mpi_limb_t);

 if (!len)
  return ((void*)0);

 return kmalloc(len, GFP_KERNEL);
}
