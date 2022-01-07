
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kuid_t ;


 int init_user_ns ;
 int make_kuid (int *,int ) ;

__attribute__((used)) static inline kuid_t xfs_uid_to_kuid(uint32_t uid)
{
 return make_kuid(&init_user_ns, uid);
}
