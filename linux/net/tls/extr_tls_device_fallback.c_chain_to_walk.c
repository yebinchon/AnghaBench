
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; scalar_t__ length; } ;
struct scatter_walk {int offset; struct scatterlist* sg; } ;


 int scatterwalk_crypto_chain (struct scatterlist*,int ,int) ;
 int sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,scalar_t__,int) ;

__attribute__((used)) static void chain_to_walk(struct scatterlist *sg, struct scatter_walk *walk)
{
 struct scatterlist *src = walk->sg;
 int diff = walk->offset - src->offset;

 sg_set_page(sg, sg_page(src),
      src->length - diff, walk->offset);

 scatterwalk_crypto_chain(sg, sg_next(src), 2);
}
