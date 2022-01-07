
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_xdr_opaque_data {struct nfs4_ff_layout_mirror* data; } ;
struct nfs4_ff_layout_mirror {int dummy; } ;


 int ff_layout_put_mirror (struct nfs4_ff_layout_mirror*) ;

__attribute__((used)) static void
ff_layout_free_layoutstats(struct nfs4_xdr_opaque_data *opaque)
{
 struct nfs4_ff_layout_mirror *mirror = opaque->data;

 ff_layout_put_mirror(mirror);
}
