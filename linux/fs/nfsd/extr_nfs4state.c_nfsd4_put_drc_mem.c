
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_channel_attrs {int maxreqs; } ;


 int nfsd_drc_lock ;
 int nfsd_drc_mem_used ;
 int slot_bytes (struct nfsd4_channel_attrs*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfsd4_put_drc_mem(struct nfsd4_channel_attrs *ca)
{
 int slotsize = slot_bytes(ca);

 spin_lock(&nfsd_drc_lock);
 nfsd_drc_mem_used -= slotsize * ca->maxreqs;
 spin_unlock(&nfsd_drc_lock);
}
