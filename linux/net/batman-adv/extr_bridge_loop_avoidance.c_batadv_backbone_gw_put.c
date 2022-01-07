
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_bla_backbone_gw {int refcount; } ;


 int batadv_backbone_gw_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_backbone_gw_put(struct batadv_bla_backbone_gw *backbone_gw)
{
 kref_put(&backbone_gw->refcount, batadv_backbone_gw_release);
}
