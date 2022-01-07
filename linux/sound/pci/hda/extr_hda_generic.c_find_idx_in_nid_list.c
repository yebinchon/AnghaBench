
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const hda_nid_t ;



__attribute__((used)) static int find_idx_in_nid_list(hda_nid_t nid, const hda_nid_t *list, int nums)
{
 int i;
 for (i = 0; i < nums; i++)
  if (list[i] == nid)
   return i;
 return -1;
}
