
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;
struct aa_file_ctx {int label; int lock; } ;
typedef int gfp_t ;


 int aa_get_label (struct aa_label*) ;
 struct aa_file_ctx* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline struct aa_file_ctx *aa_alloc_file_ctx(struct aa_label *label,
          gfp_t gfp)
{
 struct aa_file_ctx *ctx;

 ctx = kzalloc(sizeof(struct aa_file_ctx), gfp);
 if (ctx) {
  spin_lock_init(&ctx->lock);
  rcu_assign_pointer(ctx->label, aa_get_label(label));
 }
 return ctx;
}
