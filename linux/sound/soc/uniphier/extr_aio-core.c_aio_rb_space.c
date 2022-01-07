
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uniphier_aio_sub {int compr_bytes; int rd_offs; int wr_offs; } ;


 int rb_space (int ,int ,int ) ;

u64 aio_rb_space(struct uniphier_aio_sub *sub)
{
 return rb_space(sub->wr_offs, sub->rd_offs, sub->compr_bytes);
}
