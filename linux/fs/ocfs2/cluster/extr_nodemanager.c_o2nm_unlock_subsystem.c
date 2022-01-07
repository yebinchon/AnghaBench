
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int su_mutex; } ;
struct TYPE_4__ {TYPE_1__ cs_subsys; } ;


 int mutex_unlock (int *) ;
 TYPE_2__ o2nm_cluster_group ;

__attribute__((used)) static inline void o2nm_unlock_subsystem(void)
{
 mutex_unlock(&o2nm_cluster_group.cs_subsys.su_mutex);
}
