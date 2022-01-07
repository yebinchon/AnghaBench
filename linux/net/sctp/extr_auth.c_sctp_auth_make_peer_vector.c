
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_auth_bytes {int dummy; } ;
struct TYPE_2__ {int peer_hmacs; int peer_chunks; int peer_random; } ;
struct sctp_association {TYPE_1__ peer; } ;
typedef int gfp_t ;


 struct sctp_auth_bytes* sctp_auth_make_key_vector (int ,int ,int ,int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_make_peer_vector(
        const struct sctp_association *asoc,
        gfp_t gfp)
{
 return sctp_auth_make_key_vector(asoc->peer.peer_random,
      asoc->peer.peer_chunks,
      asoc->peer.peer_hmacs,
      gfp);
}
