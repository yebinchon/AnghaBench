
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int projid_map; } ;
typedef int projid_t ;
typedef int kprojid_t ;


 int KPROJIDT_INIT (int ) ;
 int map_id_down (int *,int ) ;

kprojid_t make_kprojid(struct user_namespace *ns, projid_t projid)
{

 return KPROJIDT_INIT(map_id_down(&ns->projid_map, projid));
}
