
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nft_set const* set; } ;
struct nft_set_gc_batch {TYPE_1__ head; } ;
struct nft_set {int dummy; } ;
typedef int gfp_t ;


 struct nft_set_gc_batch* kzalloc (int,int ) ;

struct nft_set_gc_batch *nft_set_gc_batch_alloc(const struct nft_set *set,
      gfp_t gfp)
{
 struct nft_set_gc_batch *gcb;

 gcb = kzalloc(sizeof(*gcb), gfp);
 if (gcb == ((void*)0))
  return gcb;
 gcb->head.set = set;
 return gcb;
}
