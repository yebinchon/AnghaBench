
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root_cached {int dummy; } ;
struct hists {int nr_non_filtered_entries; int nr_entries; struct rb_root_cached entries; struct rb_root_cached* entries_in; struct rb_root_cached entries_collapsed; } ;
struct hist_entry {int filtered; int rb_node; int rb_node_in; TYPE_1__* parent_he; } ;
struct TYPE_2__ {struct rb_root_cached hroot_out; struct rb_root_cached hroot_in; } ;


 int hist_entry__delete (struct hist_entry*) ;
 scalar_t__ hists__has (struct hists*,int ) ;
 int need_collapse ;
 int rb_erase_cached (int *,struct rb_root_cached*) ;

__attribute__((used)) static void hists__delete_entry(struct hists *hists, struct hist_entry *he)
{
 struct rb_root_cached *root_in;
 struct rb_root_cached *root_out;

 if (he->parent_he) {
  root_in = &he->parent_he->hroot_in;
  root_out = &he->parent_he->hroot_out;
 } else {
  if (hists__has(hists, need_collapse))
   root_in = &hists->entries_collapsed;
  else
   root_in = hists->entries_in;
  root_out = &hists->entries;
 }

 rb_erase_cached(&he->rb_node_in, root_in);
 rb_erase_cached(&he->rb_node, root_out);

 --hists->nr_entries;
 if (!he->filtered)
  --hists->nr_non_filtered_entries;

 hist_entry__delete(he);
}
