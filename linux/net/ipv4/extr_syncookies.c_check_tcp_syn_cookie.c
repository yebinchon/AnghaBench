
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u32 ;
typedef int __be32 ;
typedef int __be16 ;


 int COOKIEBITS ;
 int COOKIEMASK ;
 int MAX_SYNCOOKIE_AGE ;
 int cookie_hash (int ,int ,int ,int ,int,int) ;
 int tcp_cookie_time () ;

__attribute__((used)) static __u32 check_tcp_syn_cookie(__u32 cookie, __be32 saddr, __be32 daddr,
      __be16 sport, __be16 dport, __u32 sseq)
{
 u32 diff, count = tcp_cookie_time();


 cookie -= cookie_hash(saddr, daddr, sport, dport, 0, 0) + sseq;


 diff = (count - (cookie >> COOKIEBITS)) & ((__u32) -1 >> COOKIEBITS);
 if (diff >= MAX_SYNCOOKIE_AGE)
  return (__u32)-1;

 return (cookie -
  cookie_hash(saddr, daddr, sport, dport, count - diff, 1))
  & COOKIEMASK;
}
