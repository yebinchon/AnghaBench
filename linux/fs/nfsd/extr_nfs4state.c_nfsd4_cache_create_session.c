
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_create_session {int dummy; } ;
struct nfsd4_clid_slot {int sl_cr_ses; int sl_status; } ;
typedef int __be32 ;


 int memcpy (int *,struct nfsd4_create_session*,int) ;

__attribute__((used)) static void
nfsd4_cache_create_session(struct nfsd4_create_session *cr_ses,
      struct nfsd4_clid_slot *slot, __be32 nfserr)
{
 slot->sl_status = nfserr;
 memcpy(&slot->sl_cr_ses, cr_ses, sizeof(*cr_ses));
}
