
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {struct smack_known* smk_forked; } ;
struct smack_known {int dummy; } ;



__attribute__((used)) static inline struct smack_known *smk_of_forked(const struct task_smack *tsp)
{
 return tsp->smk_forked;
}
