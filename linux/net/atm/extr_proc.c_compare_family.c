
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_family; } ;



__attribute__((used)) static inline int compare_family(struct sock *sk, int family)
{
 return !family || (sk->sk_family == family);
}
