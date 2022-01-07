
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;
struct rt6_info {int rt6i_uncached; struct dst_entry dst; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct dst_entry*,int ,int) ;

__attribute__((used)) static void rt6_info_init(struct rt6_info *rt)
{
 struct dst_entry *dst = &rt->dst;

 memset(dst + 1, 0, sizeof(*rt) - sizeof(*dst));
 INIT_LIST_HEAD(&rt->rt6i_uncached);
}
