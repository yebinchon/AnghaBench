
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rds_sock {struct sock rs_sk; } ;



__attribute__((used)) static inline struct sock *rds_rs_to_sk(struct rds_sock *rs)
{
 return &rs->rs_sk;
}
