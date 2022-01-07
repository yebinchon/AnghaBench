
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock_reuseport {int dummy; } ;
struct sock {scalar_t__ sk_protocol; scalar_t__ sk_family; scalar_t__ sk_type; int sk_user_data; } ;
struct reuseport_array {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ BPF_EXIST ;
 scalar_t__ BPF_NOEXIST ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_RCU_FREE ;
 scalar_t__ SOCK_STREAM ;
 int sk_hashed (struct sock const*) ;
 int sock_flag (struct sock const*,int ) ;

__attribute__((used)) static int
reuseport_array_update_check(const struct reuseport_array *array,
        const struct sock *nsk,
        const struct sock *osk,
        const struct sock_reuseport *nsk_reuse,
        u32 map_flags)
{
 if (osk && map_flags == BPF_NOEXIST)
  return -EEXIST;

 if (!osk && map_flags == BPF_EXIST)
  return -ENOENT;

 if (nsk->sk_protocol != IPPROTO_UDP && nsk->sk_protocol != IPPROTO_TCP)
  return -ENOTSUPP;

 if (nsk->sk_family != AF_INET && nsk->sk_family != AF_INET6)
  return -ENOTSUPP;

 if (nsk->sk_type != SOCK_STREAM && nsk->sk_type != SOCK_DGRAM)
  return -ENOTSUPP;
 if (!sock_flag(nsk, SOCK_RCU_FREE) || !sk_hashed(nsk) || !nsk_reuse)
  return -EINVAL;


 if (READ_ONCE(nsk->sk_user_data))
  return -EBUSY;

 return 0;
}
