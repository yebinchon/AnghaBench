
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct user_namespace {int uid_map; } ;
typedef int kuid_t ;


 int KUIDT_INIT (int ) ;
 int map_id_down (int *,int ) ;

kuid_t make_kuid(struct user_namespace *ns, uid_t uid)
{

 return KUIDT_INIT(map_id_down(&ns->uid_map, uid));
}
