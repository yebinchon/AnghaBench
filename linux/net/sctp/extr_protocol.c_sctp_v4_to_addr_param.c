
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int length; int type; } ;
struct TYPE_8__ {TYPE_2__ addr; TYPE_1__ param_hdr; } ;
union sctp_addr_param {TYPE_3__ v4; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {TYPE_4__ sin_addr; } ;
union sctp_addr {TYPE_5__ v4; } ;
struct sctp_ipv4addr_param {int dummy; } ;


 int SCTP_PARAM_IPV4_ADDRESS ;
 int htons (int) ;

__attribute__((used)) static int sctp_v4_to_addr_param(const union sctp_addr *addr,
     union sctp_addr_param *param)
{
 int length = sizeof(struct sctp_ipv4addr_param);

 param->v4.param_hdr.type = SCTP_PARAM_IPV4_ADDRESS;
 param->v4.param_hdr.length = htons(length);
 param->v4.addr.s_addr = addr->v4.sin_addr.s_addr;

 return length;
}
