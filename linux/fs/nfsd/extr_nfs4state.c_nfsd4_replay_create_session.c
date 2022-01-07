
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_create_session {int dummy; } ;
struct nfsd4_clid_slot {int sl_status; int sl_cr_ses; } ;
typedef int __be32 ;


 int memcpy (struct nfsd4_create_session*,int *,int) ;

__attribute__((used)) static __be32
nfsd4_replay_create_session(struct nfsd4_create_session *cr_ses,
       struct nfsd4_clid_slot *slot)
{
 memcpy(cr_ses, &slot->sl_cr_ses, sizeof(*cr_ses));
 return slot->sl_status;
}
