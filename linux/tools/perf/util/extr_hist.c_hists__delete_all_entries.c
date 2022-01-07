
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int entries_collapsed; int * entries_in_array; } ;


 int hists__delete_entries (struct hists*) ;
 int hists__delete_remaining_entries (int *) ;

__attribute__((used)) static void hists__delete_all_entries(struct hists *hists)
{
 hists__delete_entries(hists);
 hists__delete_remaining_entries(&hists->entries_in_array[0]);
 hists__delete_remaining_entries(&hists->entries_in_array[1]);
 hists__delete_remaining_entries(&hists->entries_collapsed);
}
