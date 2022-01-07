
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_queue_entry {int dummy; } ;


 int kfree (struct nf_queue_entry*) ;
 int nf_queue_entry_release_refs (struct nf_queue_entry*) ;

__attribute__((used)) static void free_entry(struct nf_queue_entry *entry)
{
 nf_queue_entry_release_refs(entry);
 kfree(entry);
}
