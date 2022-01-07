
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int * s6_addr32; } ;
struct sock {int sk_drops; int sk_refcnt; int sk_state; struct in6_addr sk_v6_rcv_saddr; struct in6_addr sk_v6_daddr; } ;
struct seq_file {int dummy; } ;
typedef int __u16 ;


 int atomic_read (int *) ;
 int from_kuid_munged (int ,int ) ;
 int refcount_read (int *) ;
 int seq_printf (struct seq_file*,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,long,int ,int ,int ,int ,int ,struct sock*,int ) ;
 int seq_user_ns (struct seq_file*) ;
 int sk_wmem_alloc_get (struct sock*) ;
 int sock_i_ino (struct sock*) ;
 int sock_i_uid (struct sock*) ;

void __ip6_dgram_sock_seq_show(struct seq_file *seq, struct sock *sp,
          __u16 srcp, __u16 destp, int rqueue, int bucket)
{
 const struct in6_addr *dest, *src;

 dest = &sp->sk_v6_daddr;
 src = &sp->sk_v6_rcv_saddr;
 seq_printf(seq,
     "%5d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X "
     "%02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\n",
     bucket,
     src->s6_addr32[0], src->s6_addr32[1],
     src->s6_addr32[2], src->s6_addr32[3], srcp,
     dest->s6_addr32[0], dest->s6_addr32[1],
     dest->s6_addr32[2], dest->s6_addr32[3], destp,
     sp->sk_state,
     sk_wmem_alloc_get(sp),
     rqueue,
     0, 0L, 0,
     from_kuid_munged(seq_user_ns(seq), sock_i_uid(sp)),
     0,
     sock_i_ino(sp),
     refcount_read(&sp->sk_refcnt), sp,
     atomic_read(&sp->sk_drops));
}
