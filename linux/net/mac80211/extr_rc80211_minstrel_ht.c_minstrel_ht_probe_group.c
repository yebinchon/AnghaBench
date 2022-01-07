
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_ht_sta {int dummy; } ;
struct mcs_group {scalar_t__ bw; int streams; } ;



__attribute__((used)) static bool
minstrel_ht_probe_group(struct minstrel_ht_sta *mi, const struct mcs_group *tp_group,
      int tp_idx, const struct mcs_group *group)
{
 if (group->bw < tp_group->bw)
  return 0;

 if (group->streams == tp_group->streams)
  return 1;

 if (tp_idx < 4 && group->streams == tp_group->streams - 1)
  return 1;

 return group->streams == tp_group->streams + 1;
}
