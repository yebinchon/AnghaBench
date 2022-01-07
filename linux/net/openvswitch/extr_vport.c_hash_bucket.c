
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct hlist_head {int dummy; } ;


 int VPORT_HASH_BUCKETS ;
 struct hlist_head* dev_table ;
 unsigned int jhash (char const*,int ,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static struct hlist_head *hash_bucket(const struct net *net, const char *name)
{
 unsigned int hash = jhash(name, strlen(name), (unsigned long) net);
 return &dev_table[hash & (VPORT_HASH_BUCKETS - 1)];
}
