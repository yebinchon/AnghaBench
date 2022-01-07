
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_task_ctx {int onexec; int previous; int nnp; } ;


 int aa_get_label (int ) ;

__attribute__((used)) static inline void aa_dup_task_ctx(struct aa_task_ctx *new,
       const struct aa_task_ctx *old)
{
 *new = *old;
 aa_get_label(new->nnp);
 aa_get_label(new->previous);
 aa_get_label(new->onexec);
}
