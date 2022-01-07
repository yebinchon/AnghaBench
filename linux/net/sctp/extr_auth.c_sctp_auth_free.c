
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int * auth_hmacs; int * auth_chunk_list; int * auth_hmacs_list; } ;


 int kfree (int *) ;
 int sctp_auth_destroy_hmacs (int *) ;

void sctp_auth_free(struct sctp_endpoint *ep)
{
 kfree(ep->auth_hmacs_list);
 kfree(ep->auth_chunk_list);
 ep->auth_hmacs_list = ((void*)0);
 ep->auth_chunk_list = ((void*)0);
 sctp_auth_destroy_hmacs(ep->auth_hmacs);
 ep->auth_hmacs = ((void*)0);
}
