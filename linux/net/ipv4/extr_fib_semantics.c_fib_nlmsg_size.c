
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct fib_nh_common {scalar_t__ nhc_lwtstate; } ;
struct fib_info {scalar_t__ nh; } ;


 int NLMSG_ALIGN (int) ;
 unsigned int RTAX_MAX ;
 unsigned int TCP_CA_NAME_MAX ;
 struct fib_nh_common* fib_info_nhc (struct fib_info*,unsigned int) ;
 unsigned int fib_info_num_path (struct fib_info*) ;
 scalar_t__ lwtunnel_get_encap_size (scalar_t__) ;
 int nla_total_size (unsigned int) ;

__attribute__((used)) static inline size_t fib_nlmsg_size(struct fib_info *fi)
{
 size_t payload = NLMSG_ALIGN(sizeof(struct rtmsg))
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(TCP_CA_NAME_MAX);
 unsigned int nhs = fib_info_num_path(fi);


 payload += nla_total_size((RTAX_MAX * nla_total_size(4)));

 if (fi->nh)
  payload += nla_total_size(4);

 if (nhs) {
  size_t nh_encapsize = 0;



  size_t nhsize = nla_total_size(sizeof(struct rtnexthop));
  unsigned int i;


  nhsize += 2 * nla_total_size(4);


  for (i = 0; i < fib_info_num_path(fi); i++) {
   struct fib_nh_common *nhc = fib_info_nhc(fi, i);

   if (nhc->nhc_lwtstate) {

    nh_encapsize += lwtunnel_get_encap_size(
      nhc->nhc_lwtstate);

    nh_encapsize += nla_total_size(2);
   }
  }


  payload += nla_total_size((nhs * nhsize) + nh_encapsize);

 }

 return payload;
}
