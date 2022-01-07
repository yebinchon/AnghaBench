
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int* s6_addr; } ;
struct in6_flowlabel_req {TYPE_1__ flr_dst; int flr_share; int flr_flags; int flr_label; int flr_action; } ;
typedef int req ;


 int IPV6_FLOWLABEL_MGR ;
 int IPV6_FL_A_GET ;
 int SOL_IPV6 ;
 int errno ;
 int error (int,int ,char*) ;
 int htonl (int ) ;
 scalar_t__ setsockopt (int,int ,int ,struct in6_flowlabel_req*,int) ;

__attribute__((used)) static void flowlabel_get(int fd, uint32_t label, uint8_t share, uint16_t flags)
{
 struct in6_flowlabel_req req = {
  .flr_action = IPV6_FL_A_GET,
  .flr_label = htonl(label),
  .flr_flags = flags,
  .flr_share = share,
 };


 req.flr_dst.s6_addr[0] = 0xfd;
 req.flr_dst.s6_addr[15] = 0x1;

 if (setsockopt(fd, SOL_IPV6, IPV6_FLOWLABEL_MGR, &req, sizeof(req)))
  error(1, errno, "setsockopt flowlabel get");
}
