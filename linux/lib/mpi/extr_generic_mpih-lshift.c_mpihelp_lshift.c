
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mpi_size_t ;
typedef unsigned int* mpi_ptr_t ;
typedef unsigned int mpi_limb_t ;


 unsigned int BITS_PER_MPI_LIMB ;

mpi_limb_t
mpihelp_lshift(mpi_ptr_t wp, mpi_ptr_t up, mpi_size_t usize, unsigned int cnt)
{
 mpi_limb_t high_limb, low_limb;
 unsigned sh_1, sh_2;
 mpi_size_t i;
 mpi_limb_t retval;

 sh_1 = cnt;
 wp += 1;
 sh_2 = BITS_PER_MPI_LIMB - sh_1;
 i = usize - 1;
 low_limb = up[i];
 retval = low_limb >> sh_2;
 high_limb = low_limb;
 while (--i >= 0) {
  low_limb = up[i];
  wp[i] = (high_limb << sh_1) | (low_limb >> sh_2);
  high_limb = low_limb;
 }
 wp[i] = high_limb << sh_1;

 return retval;
}
