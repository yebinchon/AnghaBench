
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tvlv_tt_change {int dummy; } ;



__attribute__((used)) static int batadv_tt_len(int changes_num)
{
 return changes_num * sizeof(struct batadv_tvlv_tt_change);
}
