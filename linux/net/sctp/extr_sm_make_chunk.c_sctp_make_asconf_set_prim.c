
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int type; } ;
union sctp_addr_param {scalar_t__ crr_id; TYPE_1__ param_hdr; } ;
struct TYPE_4__ {int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
struct sctp_addip_param {scalar_t__ crr_id; TYPE_1__ param_hdr; } ;
typedef int param ;


 int SCTP_PARAM_SET_PRIMARY ;
 int htons (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,union sctp_addr_param*) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 struct sctp_chunk* sctp_make_asconf (struct sctp_association*,union sctp_addr*,int) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*) ;

struct sctp_chunk *sctp_make_asconf_set_prim(struct sctp_association *asoc,
          union sctp_addr *addr)
{
 struct sctp_af *af = sctp_get_af_specific(addr->v4.sin_family);
 union sctp_addr_param addrparam;
 struct sctp_addip_param param;
 struct sctp_chunk *retval;
 int len = sizeof(param);
 int addrlen;

 addrlen = af->to_addr_param(addr, &addrparam);
 if (!addrlen)
  return ((void*)0);
 len += addrlen;


 retval = sctp_make_asconf(asoc, addr, len);
 if (!retval)
  return ((void*)0);

 param.param_hdr.type = SCTP_PARAM_SET_PRIMARY;
 param.param_hdr.length = htons(len);
 param.crr_id = 0;

 sctp_addto_chunk(retval, sizeof(param), &param);
 sctp_addto_chunk(retval, addrlen, &addrparam);

 return retval;
}
