
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_fchannel; } ;


 int __free_session (struct nfsd4_session*) ;
 int nfsd4_del_conns (struct nfsd4_session*) ;
 int nfsd4_put_drc_mem (int *) ;

__attribute__((used)) static void free_session(struct nfsd4_session *ses)
{
 nfsd4_del_conns(ses);
 nfsd4_put_drc_mem(&ses->se_fchannel);
 __free_session(ses);
}
