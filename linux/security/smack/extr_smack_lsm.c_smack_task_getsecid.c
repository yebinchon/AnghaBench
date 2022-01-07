
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct smack_known {int smk_secid; } ;


 struct smack_known* smk_of_task_struct (struct task_struct*) ;

__attribute__((used)) static void smack_task_getsecid(struct task_struct *p, u32 *secid)
{
 struct smack_known *skp = smk_of_task_struct(p);

 *secid = skp->smk_secid;
}
