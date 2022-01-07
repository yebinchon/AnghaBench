
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int dummy; } ;


 int free_session_slots (struct nfsd4_session*) ;
 int kfree (struct nfsd4_session*) ;

__attribute__((used)) static void __free_session(struct nfsd4_session *ses)
{
 free_session_slots(ses);
 kfree(ses);
}
