
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int gid_map; } ;
typedef int kgid_t ;
typedef int gid_t ;


 int KGIDT_INIT (int ) ;
 int map_id_down (int *,int ) ;

kgid_t make_kgid(struct user_namespace *ns, gid_t gid)
{

 return KGIDT_INIT(map_id_down(&ns->gid_map, gid));
}
