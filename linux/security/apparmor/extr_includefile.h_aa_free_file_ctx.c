
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_file_ctx {int label; } ;


 int aa_put_label (int ) ;
 int kzfree (struct aa_file_ctx*) ;
 int rcu_access_pointer (int ) ;

__attribute__((used)) static inline void aa_free_file_ctx(struct aa_file_ctx *ctx)
{
 if (ctx) {
  aa_put_label(rcu_access_pointer(ctx->label));
  kzfree(ctx);
 }
}
