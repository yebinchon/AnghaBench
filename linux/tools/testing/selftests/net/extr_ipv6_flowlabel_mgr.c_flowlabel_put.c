
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_flowlabel_req {int flr_label; int flr_action; } ;
typedef int req ;


 int IPV6_FLOWLABEL_MGR ;
 int IPV6_FL_A_PUT ;
 int SOL_IPV6 ;
 int htonl (int ) ;
 int setsockopt (int,int ,int ,struct in6_flowlabel_req*,int) ;

__attribute__((used)) static int flowlabel_put(int fd, uint32_t label)
{
 struct in6_flowlabel_req req = {
  .flr_action = IPV6_FL_A_PUT,
  .flr_label = htonl(label),
 };

 return setsockopt(fd, SOL_IPV6, IPV6_FLOWLABEL_MGR, &req, sizeof(req));
}
