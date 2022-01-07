
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct aa_label {int secid; } ;


 struct aa_label* aa_get_task_label (struct task_struct*) ;
 int aa_put_label (struct aa_label*) ;

__attribute__((used)) static void apparmor_task_getsecid(struct task_struct *p, u32 *secid)
{
 struct aa_label *label = aa_get_task_label(p);
 *secid = label->secid;
 aa_put_label(label);
}
