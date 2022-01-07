
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int label; int lock; } ;


 int aa_get_label (struct aa_label*) ;
 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 struct aa_file_ctx* file_ctx (struct file*) ;
 int rcu_assign_pointer (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int apparmor_file_alloc_security(struct file *file)
{
 struct aa_file_ctx *ctx = file_ctx(file);
 struct aa_label *label = begin_current_label_crit_section();

 spin_lock_init(&ctx->lock);
 rcu_assign_pointer(ctx->label, aa_get_label(label));
 end_current_label_crit_section(label);
 return 0;
}
