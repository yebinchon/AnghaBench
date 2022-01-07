
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcindex_data {int mask; int fall_through; int hash; } ;
struct tcf_proto {int root; } ;


 int DEFAULT_HASH_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct tcindex_data* kzalloc (int,int ) ;
 int pr_debug (char*,struct tcf_proto*) ;
 int rcu_assign_pointer (int ,struct tcindex_data*) ;

__attribute__((used)) static int tcindex_init(struct tcf_proto *tp)
{
 struct tcindex_data *p;

 pr_debug("tcindex_init(tp %p)\n", tp);
 p = kzalloc(sizeof(struct tcindex_data), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 p->mask = 0xffff;
 p->hash = DEFAULT_HASH_SIZE;
 p->fall_through = 1;

 rcu_assign_pointer(tp->root, p);
 return 0;
}
