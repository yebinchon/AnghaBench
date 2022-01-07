
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kuid_t ;


 int from_kuid (int *,int ) ;
 int init_user_ns ;

__attribute__((used)) static inline uint32_t xfs_kuid_to_uid(kuid_t uid)
{
 return from_kuid(&init_user_ns, uid);
}
