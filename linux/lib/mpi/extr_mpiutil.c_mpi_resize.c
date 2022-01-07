
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpi_limb_t ;
struct TYPE_3__ {unsigned int alloced; void* d; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (unsigned int,int,int ) ;
 void* kmalloc_array (unsigned int,int,int ) ;
 int kzfree (void*) ;
 int memcpy (void*,void*,int) ;

int mpi_resize(MPI a, unsigned nlimbs)
{
 void *p;

 if (nlimbs <= a->alloced)
  return 0;

 if (a->d) {
  p = kmalloc_array(nlimbs, sizeof(mpi_limb_t), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
  memcpy(p, a->d, a->alloced * sizeof(mpi_limb_t));
  kzfree(a->d);
  a->d = p;
 } else {
  a->d = kcalloc(nlimbs, sizeof(mpi_limb_t), GFP_KERNEL);
  if (!a->d)
   return -ENOMEM;
 }
 a->alloced = nlimbs;
 return 0;
}
