
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 unsigned int TCP_RTO_MAX ;
 unsigned int ilog2 (unsigned int) ;
 unsigned int jiffies_to_msecs (unsigned int) ;

__attribute__((used)) static unsigned int tcp_model_timeout(struct sock *sk,
          unsigned int boundary,
          unsigned int rto_base)
{
 unsigned int linear_backoff_thresh, timeout;

 linear_backoff_thresh = ilog2(TCP_RTO_MAX / rto_base);
 if (boundary <= linear_backoff_thresh)
  timeout = ((2 << boundary) - 1) * rto_base;
 else
  timeout = ((2 << linear_backoff_thresh) - 1) * rto_base +
   (boundary - linear_backoff_thresh) * TCP_RTO_MAX;
 return jiffies_to_msecs(timeout);
}
