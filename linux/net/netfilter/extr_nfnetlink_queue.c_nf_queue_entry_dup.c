
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_queue_entry {int size; } ;


 int GFP_ATOMIC ;
 struct nf_queue_entry* kmemdup (struct nf_queue_entry*,int ,int ) ;
 int nf_queue_entry_get_refs (struct nf_queue_entry*) ;

__attribute__((used)) static struct nf_queue_entry *
nf_queue_entry_dup(struct nf_queue_entry *e)
{
 struct nf_queue_entry *entry = kmemdup(e, e->size, GFP_ATOMIC);
 if (entry)
  nf_queue_entry_get_refs(entry);
 return entry;
}
