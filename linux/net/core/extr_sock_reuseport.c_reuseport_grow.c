
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sock_reuseport {unsigned int max_socks; int num_socks; TYPE_1__** socks; int synq_overflow_ts; int bind_inany; int reuseport_id; int prog; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {int sk_reuseport_cb; } ;


 int READ_ONCE (int ) ;
 size_t U16_MAX ;
 struct sock_reuseport* __reuseport_alloc (size_t) ;
 int kfree_rcu (struct sock_reuseport*,int ) ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 int rcu ;
 int rcu_assign_pointer (int ,struct sock_reuseport*) ;

__attribute__((used)) static struct sock_reuseport *reuseport_grow(struct sock_reuseport *reuse)
{
 struct sock_reuseport *more_reuse;
 u32 more_socks_size, i;

 more_socks_size = reuse->max_socks * 2U;
 if (more_socks_size > U16_MAX)
  return ((void*)0);

 more_reuse = __reuseport_alloc(more_socks_size);
 if (!more_reuse)
  return ((void*)0);

 more_reuse->max_socks = more_socks_size;
 more_reuse->num_socks = reuse->num_socks;
 more_reuse->prog = reuse->prog;
 more_reuse->reuseport_id = reuse->reuseport_id;
 more_reuse->bind_inany = reuse->bind_inany;

 memcpy(more_reuse->socks, reuse->socks,
        reuse->num_socks * sizeof(struct sock *));
 more_reuse->synq_overflow_ts = READ_ONCE(reuse->synq_overflow_ts);

 for (i = 0; i < reuse->num_socks; ++i)
  rcu_assign_pointer(reuse->socks[i]->sk_reuseport_cb,
       more_reuse);





 kfree_rcu(reuse, rcu);
 return more_reuse;
}
