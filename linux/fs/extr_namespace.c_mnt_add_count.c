
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int mnt_count; TYPE_1__* mnt_pcp; } ;
struct TYPE_2__ {int mnt_count; } ;


 int preempt_disable () ;
 int preempt_enable () ;
 int this_cpu_add (int ,int) ;

__attribute__((used)) static inline void mnt_add_count(struct mount *mnt, int n)
{



 preempt_disable();
 mnt->mnt_count += n;
 preempt_enable();

}
