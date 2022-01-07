
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_bla_claim {int refcount; } ;


 int batadv_claim_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_claim_put(struct batadv_bla_claim *claim)
{
 kref_put(&claim->refcount, batadv_claim_release);
}
