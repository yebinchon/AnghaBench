
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;
struct aa_file_ctx {int label; } ;


 struct aa_label* aa_get_label_rcu (int *) ;

__attribute__((used)) static inline struct aa_label *aa_get_file_label(struct aa_file_ctx *ctx)
{
 return aa_get_label_rcu(&ctx->label);
}
