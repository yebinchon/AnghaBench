
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_etf_qopt {scalar_t__ clockid; scalar_t__ delta; } ;
struct netlink_ext_ack {int dummy; } ;


 scalar_t__ CLOCK_TAI ;
 int EINVAL ;
 int ENOTSUPP ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static inline int validate_input_params(struct tc_etf_qopt *qopt,
     struct netlink_ext_ack *extack)
{
 if (qopt->clockid < 0) {
  NL_SET_ERR_MSG(extack, "Dynamic clockids are not supported");
  return -ENOTSUPP;
 }

 if (qopt->clockid != CLOCK_TAI) {
  NL_SET_ERR_MSG(extack, "Invalid clockid. CLOCK_TAI must be used");
  return -EINVAL;
 }

 if (qopt->delta < 0) {
  NL_SET_ERR_MSG(extack, "Delta must be positive");
  return -EINVAL;
 }

 return 0;
}
