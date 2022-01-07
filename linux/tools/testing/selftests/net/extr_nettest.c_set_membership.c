
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_2__ imr_address; TYPE_1__ imr_multiaddr; } ;
typedef int mreq ;


 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_ADD_MEMBERSHIP ;
 scalar_t__ htonl (int ) ;
 int log_err_errno (char*) ;
 int log_error (char*) ;
 int setsockopt (int,int ,int ,struct ip_mreqn*,int) ;

__attribute__((used)) static int set_membership(int sd, uint32_t grp, uint32_t addr, int ifindex)
{
 uint32_t if_addr = addr;
 struct ip_mreqn mreq;
 int rc;

 if (addr == htonl(INADDR_ANY) && !ifindex) {
  log_error("Either local address or device needs to be given for multicast membership\n");
  return -1;
 }

 mreq.imr_multiaddr.s_addr = grp;
 mreq.imr_address.s_addr = if_addr;
 mreq.imr_ifindex = ifindex;

 rc = setsockopt(sd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq, sizeof(mreq));
 if (rc < 0) {
  log_err_errno("setsockopt(IP_ADD_MEMBERSHIP)");
  return -1;
 }

 return 0;
}
