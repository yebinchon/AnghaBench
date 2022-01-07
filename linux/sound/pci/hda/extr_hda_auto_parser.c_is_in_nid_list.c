
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const hda_nid_t ;



__attribute__((used)) static int is_in_nid_list(hda_nid_t nid, const hda_nid_t *list)
{
 for (; *list; list++)
  if (*list == nid)
   return 1;
 return 0;
}
