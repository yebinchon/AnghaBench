
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kgid_t ;


 int init_user_ns ;
 int make_kgid (int *,int ) ;

__attribute__((used)) static inline kgid_t xfs_gid_to_kgid(uint32_t gid)
{
 return make_kgid(&init_user_ns, gid);
}
