
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target {int me; } ;
struct nft_expr_ops {struct xt_target* data; } ;


 int kfree (struct nft_expr_ops const*) ;
 int module_put (int ) ;

__attribute__((used)) static void nft_target_release_ops(const struct nft_expr_ops *ops)
{
 struct xt_target *target = ops->data;

 module_put(target->me);
 kfree(ops);
}
