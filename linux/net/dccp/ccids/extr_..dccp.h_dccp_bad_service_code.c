
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_service_list; int const dccps_service; } ;
typedef int __be32 ;


 int dccp_list_has_service (int ,int const) ;
 struct dccp_sock* dccp_sk (struct sock const*) ;

__attribute__((used)) static inline bool dccp_bad_service_code(const struct sock *sk,
     const __be32 service)
{
 const struct dccp_sock *dp = dccp_sk(sk);

 if (dp->dccps_service == service)
  return 0;
 return !dccp_list_has_service(dp->dccps_service_list, service);
}
