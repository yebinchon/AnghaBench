
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kgid_t ;


 int CAP_IPC_LOCK ;
 scalar_t__ capable (int ) ;
 scalar_t__ in_group_p (int ) ;
 int init_user_ns ;
 int make_kgid (int *,int ) ;
 int sysctl_hugetlb_shm_group ;

__attribute__((used)) static int can_do_hugetlb_shm(void)
{
 kgid_t shm_group;
 shm_group = make_kgid(&init_user_ns, sysctl_hugetlb_shm_group);
 return capable(CAP_IPC_LOCK) || in_group_p(shm_group);
}
