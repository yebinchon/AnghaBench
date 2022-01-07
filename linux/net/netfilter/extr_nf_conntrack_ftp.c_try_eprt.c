
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int port; } ;
struct TYPE_6__ {TYPE_2__ tcp; } ;
struct TYPE_4__ {scalar_t__ ip6; int ip; } ;
struct nf_conntrack_man {scalar_t__ l3num; TYPE_3__ u; TYPE_1__ u3; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int get_ipv6_addr (char const*,size_t,struct in6_addr*,char) ;
 int get_port (char const*,int,size_t,char,int *) ;
 int htonl (int) ;
 scalar_t__ isdigit (char) ;
 int pr_debug (char*,...) ;
 int try_number (char const*,size_t,int*,int,char,char) ;

__attribute__((used)) static int try_eprt(const char *data, size_t dlen, struct nf_conntrack_man *cmd,
      char term, unsigned int *offset)
{
 char delim;
 int length;



 if (dlen <= 3) {
  pr_debug("EPRT: too short\n");
  return 0;
 }
 delim = data[0];
 if (isdigit(delim) || delim < 33 || delim > 126 || data[2] != delim) {
  pr_debug("try_eprt: invalid delimiter.\n");
  return 0;
 }

 if ((cmd->l3num == PF_INET && data[1] != '1') ||
     (cmd->l3num == PF_INET6 && data[1] != '2')) {
  pr_debug("EPRT: invalid protocol number.\n");
  return 0;
 }

 pr_debug("EPRT: Got %c%c%c\n", delim, data[1], delim);

 if (data[1] == '1') {
  u_int32_t array[4];


  length = try_number(data + 3, dlen - 3, array, 4, '.', delim);
  if (length != 0)
   cmd->u3.ip = htonl((array[0] << 24) | (array[1] << 16)
        | (array[2] << 8) | array[3]);
 } else {

  length = get_ipv6_addr(data + 3, dlen - 3,
           (struct in6_addr *)cmd->u3.ip6, delim);
 }

 if (length == 0)
  return 0;
 pr_debug("EPRT: Got IP address!\n");

 return get_port(data, 3 + length + 1, dlen, delim, &cmd->u.tcp.port);
}
