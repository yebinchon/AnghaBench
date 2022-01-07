
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mpi_size_t ;
struct TYPE_5__ {scalar_t__ nlimbs; scalar_t__ sign; int d; } ;
typedef TYPE_1__* MPI ;


 int mpi_normalize (TYPE_1__*) ;
 int mpihelp_cmp (int ,int ,scalar_t__) ;

int mpi_cmp(MPI u, MPI v)
{
 mpi_size_t usize, vsize;
 int cmp;

 mpi_normalize(u);
 mpi_normalize(v);
 usize = u->nlimbs;
 vsize = v->nlimbs;
 if (!u->sign && v->sign)
  return 1;
 if (u->sign && !v->sign)
  return -1;
 if (usize != vsize && !u->sign && !v->sign)
  return usize - vsize;
 if (usize != vsize && u->sign && v->sign)
  return vsize - usize;
 if (!usize)
  return 0;
 cmp = mpihelp_cmp(u->d, v->d, usize);
 if (u->sign)
  return -cmp;
 return cmp;
}
