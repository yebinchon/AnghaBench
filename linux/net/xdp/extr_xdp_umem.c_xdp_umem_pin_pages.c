
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {long npgs; int * pgs; int address; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int ENOMEM ;
 unsigned int FOLL_LONGTERM ;
 unsigned int FOLL_WRITE ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 TYPE_2__* current ;
 int down_read (int *) ;
 long get_user_pages (int ,long,unsigned int,int *,int *) ;
 int * kcalloc (long,int,int) ;
 int kfree (int *) ;
 int up_read (int *) ;
 int xdp_umem_unpin_pages (struct xdp_umem*) ;

__attribute__((used)) static int xdp_umem_pin_pages(struct xdp_umem *umem)
{
 unsigned int gup_flags = FOLL_WRITE;
 long npgs;
 int err;

 umem->pgs = kcalloc(umem->npgs, sizeof(*umem->pgs),
       GFP_KERNEL | __GFP_NOWARN);
 if (!umem->pgs)
  return -ENOMEM;

 down_read(&current->mm->mmap_sem);
 npgs = get_user_pages(umem->address, umem->npgs,
         gup_flags | FOLL_LONGTERM, &umem->pgs[0], ((void*)0));
 up_read(&current->mm->mmap_sem);

 if (npgs != umem->npgs) {
  if (npgs >= 0) {
   umem->npgs = npgs;
   err = -ENOMEM;
   goto out_pin;
  }
  err = npgs;
  goto out_pgs;
 }
 return 0;

out_pin:
 xdp_umem_unpin_pages(umem);
out_pgs:
 kfree(umem->pgs);
 umem->pgs = ((void*)0);
 return err;
}
