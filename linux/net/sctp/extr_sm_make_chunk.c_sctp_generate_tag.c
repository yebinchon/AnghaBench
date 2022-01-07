
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
typedef scalar_t__ __u32 ;


 int get_random_bytes (scalar_t__*,int) ;

__u32 sctp_generate_tag(const struct sctp_endpoint *ep)
{



 __u32 x;

 do {
  get_random_bytes(&x, sizeof(__u32));
 } while (x == 0);

 return x;
}
