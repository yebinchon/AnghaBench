
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int dummy; } ;


 int batadv_tt_global_size_mod (struct batadv_orig_node*,unsigned short,int) ;

__attribute__((used)) static void batadv_tt_global_size_inc(struct batadv_orig_node *orig_node,
          unsigned short vid)
{
 batadv_tt_global_size_mod(orig_node, vid, 1);
}
