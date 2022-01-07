
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kgid_t ;


 int from_kgid (int *,int ) ;
 int init_user_ns ;

__attribute__((used)) static inline uint32_t xfs_kgid_to_gid(kgid_t gid)
{
 return from_kgid(&init_user_ns, gid);
}
