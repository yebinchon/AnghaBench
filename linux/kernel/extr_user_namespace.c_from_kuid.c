
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct user_namespace {int uid_map; } ;
typedef int kuid_t ;


 int __kuid_val (int ) ;
 int map_id_up (int *,int ) ;

uid_t from_kuid(struct user_namespace *targ, kuid_t kuid)
{

 return map_id_up(&targ->uid_map, __kuid_val(kuid));
}
