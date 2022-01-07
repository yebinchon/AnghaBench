
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conncount_tuple {unsigned long jiffies32; int cpu; int tuple; int zone; } ;
struct nf_conncount_list {int dummy; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int ENOENT ;
 struct nf_conntrack_tuple_hash const* ERR_PTR (int ) ;
 int conn_free (struct nf_conncount_list*,struct nf_conncount_tuple*) ;
 scalar_t__ jiffies ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,int *,int *) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static const struct nf_conntrack_tuple_hash *
find_or_evict(struct net *net, struct nf_conncount_list *list,
       struct nf_conncount_tuple *conn)
{
 const struct nf_conntrack_tuple_hash *found;
 unsigned long a, b;
 int cpu = raw_smp_processor_id();
 u32 age;

 found = nf_conntrack_find_get(net, &conn->zone, &conn->tuple);
 if (found)
  return found;
 b = conn->jiffies32;
 a = (u32)jiffies;






 age = a - b;
 if (conn->cpu == cpu || age >= 2) {
  conn_free(list, conn);
  return ERR_PTR(-ENOENT);
 }

 return ERR_PTR(-EAGAIN);
}
