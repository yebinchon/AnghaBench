
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem_reg {int dummy; } ;
struct xdp_umem {int id; } ;


 int ENOMEM ;
 struct xdp_umem* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct xdp_umem*) ;
 struct xdp_umem* kzalloc (int,int ) ;
 int umem_ida ;
 int xdp_umem_reg (struct xdp_umem*,struct xdp_umem_reg*) ;

struct xdp_umem *xdp_umem_create(struct xdp_umem_reg *mr)
{
 struct xdp_umem *umem;
 int err;

 umem = kzalloc(sizeof(*umem), GFP_KERNEL);
 if (!umem)
  return ERR_PTR(-ENOMEM);

 err = ida_simple_get(&umem_ida, 0, 0, GFP_KERNEL);
 if (err < 0) {
  kfree(umem);
  return ERR_PTR(err);
 }
 umem->id = err;

 err = xdp_umem_reg(umem, mr);
 if (err) {
  ida_simple_remove(&umem_ida, umem->id);
  kfree(umem);
  return ERR_PTR(err);
 }

 return umem;
}
