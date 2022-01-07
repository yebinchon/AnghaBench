
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_desc {struct msi_desc* affinity; } ;


 int kfree (struct msi_desc*) ;

void free_msi_entry(struct msi_desc *entry)
{
 kfree(entry->affinity);
 kfree(entry);
}
