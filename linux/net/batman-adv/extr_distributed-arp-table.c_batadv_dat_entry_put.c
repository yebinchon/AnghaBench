
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_dat_entry {int refcount; } ;


 int batadv_dat_entry_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_dat_entry_put(struct batadv_dat_entry *dat_entry)
{
 kref_put(&dat_entry->refcount, batadv_dat_entry_release);
}
