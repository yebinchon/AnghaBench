
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int orig; int capabilities; } ;
struct batadv_dat_candidate {struct batadv_orig_node* orig_node; } ;
typedef scalar_t__ batadv_dat_addr_t ;


 int BATADV_ORIG_CAPA_HAS_DAT ;
 scalar_t__ batadv_compare_eth (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool batadv_is_orig_node_eligible(struct batadv_dat_candidate *res,
      int select, batadv_dat_addr_t tmp_max,
      batadv_dat_addr_t max,
      batadv_dat_addr_t last_max,
      struct batadv_orig_node *candidate,
      struct batadv_orig_node *max_orig_node)
{
 bool ret = 0;
 int j;


 if (!test_bit(BATADV_ORIG_CAPA_HAS_DAT, &candidate->capabilities))
  goto out;


 for (j = 0; j < select; j++)
  if (res[j].orig_node == candidate)
   break;

 if (j < select)
  goto out;

 if (tmp_max > last_max)
  goto out;



 if (tmp_max < max)
  goto out;



 if (tmp_max == max && max_orig_node &&
     batadv_compare_eth(candidate->orig, max_orig_node->orig))
  goto out;

 ret = 1;
out:
 return ret;
}
