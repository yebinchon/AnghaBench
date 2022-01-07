
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr_param {int dummy; } sctp_addr_param ;
typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_paramhdr {int length; int type; } ;
struct sctp_bind_addr {int dummy; } ;
struct sctp_af {int (* from_addr_param ) (union sctp_addr*,union sctp_addr_param*,int ,int ) ;} ;
typedef int gfp_t ;
typedef int addr ;
typedef int __u8 ;
typedef int __u16 ;


 int EINVAL ;
 int SCTP_ADDR_SRC ;
 int htons (int ) ;
 int ntohs (int ) ;
 int param_type2af (int ) ;
 int sctp_add_bind_addr (struct sctp_bind_addr*,union sctp_addr*,int,int ,int ) ;
 int sctp_bind_addr_clean (struct sctp_bind_addr*) ;
 int sctp_bind_addr_state (struct sctp_bind_addr*,union sctp_addr*) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*,int ,int ) ;
 scalar_t__ unlikely (int) ;

int sctp_raw_to_bind_addrs(struct sctp_bind_addr *bp, __u8 *raw_addr_list,
      int addrs_len, __u16 port, gfp_t gfp)
{
 union sctp_addr_param *rawaddr;
 struct sctp_paramhdr *param;
 union sctp_addr addr;
 int retval = 0;
 int len;
 struct sctp_af *af;


 while (addrs_len) {
  param = (struct sctp_paramhdr *)raw_addr_list;
  rawaddr = (union sctp_addr_param *)raw_addr_list;

  af = sctp_get_af_specific(param_type2af(param->type));
  if (unlikely(!af)) {
   retval = -EINVAL;
   sctp_bind_addr_clean(bp);
   break;
  }

  af->from_addr_param(&addr, rawaddr, htons(port), 0);
  if (sctp_bind_addr_state(bp, &addr) != -1)
   goto next;
  retval = sctp_add_bind_addr(bp, &addr, sizeof(addr),
         SCTP_ADDR_SRC, gfp);
  if (retval) {

   sctp_bind_addr_clean(bp);
   break;
  }

next:
  len = ntohs(param->length);
  addrs_len -= len;
  raw_addr_list += len;
 }

 return retval;
}
