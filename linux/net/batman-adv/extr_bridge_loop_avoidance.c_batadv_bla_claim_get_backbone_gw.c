
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_bla_claim {int backbone_lock; struct batadv_bla_backbone_gw* backbone_gw; } ;
struct batadv_bla_backbone_gw {int refcount; } ;


 int kref_get (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct batadv_bla_backbone_gw *
batadv_bla_claim_get_backbone_gw(struct batadv_bla_claim *claim)
{
 struct batadv_bla_backbone_gw *backbone_gw;

 spin_lock_bh(&claim->backbone_lock);
 backbone_gw = claim->backbone_gw;
 kref_get(&backbone_gw->refcount);
 spin_unlock_bh(&claim->backbone_lock);

 return backbone_gw;
}
