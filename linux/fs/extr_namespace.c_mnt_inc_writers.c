
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int mnt_writers; TYPE_1__* mnt_pcp; } ;
struct TYPE_2__ {int mnt_writers; } ;


 int this_cpu_inc (int ) ;

__attribute__((used)) static inline void mnt_inc_writers(struct mount *mnt)
{



 mnt->mnt_writers++;

}
