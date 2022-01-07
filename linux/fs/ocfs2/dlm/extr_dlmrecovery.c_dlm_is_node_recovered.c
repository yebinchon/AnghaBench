
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_ctxt {int spinlock; int recovery_map; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int dlm_is_node_recovered(struct dlm_ctxt *dlm, u8 node)
{
 int recovered;
 spin_lock(&dlm->spinlock);
 recovered = !test_bit(node, dlm->recovery_map);
 spin_unlock(&dlm->spinlock);
 return recovered;
}
