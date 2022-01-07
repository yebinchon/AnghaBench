
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int len; } ;
struct sock {int sk_drops; TYPE_1__ sk_backlog; int sk_omem_alloc; int sk_wmem_queued; int sk_forward_alloc; int sk_sndbuf; int sk_rcvbuf; } ;


 int READ_ONCE (int ) ;
 size_t SK_MEMINFO_BACKLOG ;
 size_t SK_MEMINFO_DROPS ;
 size_t SK_MEMINFO_FWD_ALLOC ;
 size_t SK_MEMINFO_OPTMEM ;
 size_t SK_MEMINFO_RCVBUF ;
 size_t SK_MEMINFO_RMEM_ALLOC ;
 size_t SK_MEMINFO_SNDBUF ;
 int SK_MEMINFO_VARS ;
 size_t SK_MEMINFO_WMEM_ALLOC ;
 size_t SK_MEMINFO_WMEM_QUEUED ;
 int atomic_read (int *) ;
 int memset (int *,int ,int) ;
 int sk_rmem_alloc_get (struct sock const*) ;
 int sk_wmem_alloc_get (struct sock const*) ;

void sk_get_meminfo(const struct sock *sk, u32 *mem)
{
 memset(mem, 0, sizeof(*mem) * SK_MEMINFO_VARS);

 mem[SK_MEMINFO_RMEM_ALLOC] = sk_rmem_alloc_get(sk);
 mem[SK_MEMINFO_RCVBUF] = READ_ONCE(sk->sk_rcvbuf);
 mem[SK_MEMINFO_WMEM_ALLOC] = sk_wmem_alloc_get(sk);
 mem[SK_MEMINFO_SNDBUF] = READ_ONCE(sk->sk_sndbuf);
 mem[SK_MEMINFO_FWD_ALLOC] = sk->sk_forward_alloc;
 mem[SK_MEMINFO_WMEM_QUEUED] = READ_ONCE(sk->sk_wmem_queued);
 mem[SK_MEMINFO_OPTMEM] = atomic_read(&sk->sk_omem_alloc);
 mem[SK_MEMINFO_BACKLOG] = READ_ONCE(sk->sk_backlog.len);
 mem[SK_MEMINFO_DROPS] = atomic_read(&sk->sk_drops);
}
