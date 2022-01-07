
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct rds_cong_map {unsigned long* m_page_addrs; int m_conn_list; int m_waitq; struct in6_addr m_addr; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long RDS_CONG_MAP_PAGES ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct rds_cong_map*) ;
 struct rds_cong_map* kzalloc (int,int ) ;
 int rds_cong_lock ;
 struct rds_cong_map* rds_cong_tree_walk (struct in6_addr const*,struct rds_cong_map*) ;
 int rdsdebug (char*,struct rds_cong_map*,struct in6_addr const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct rds_cong_map *rds_cong_from_addr(const struct in6_addr *addr)
{
 struct rds_cong_map *map;
 struct rds_cong_map *ret = ((void*)0);
 unsigned long zp;
 unsigned long i;
 unsigned long flags;

 map = kzalloc(sizeof(struct rds_cong_map), GFP_KERNEL);
 if (!map)
  return ((void*)0);

 map->m_addr = *addr;
 init_waitqueue_head(&map->m_waitq);
 INIT_LIST_HEAD(&map->m_conn_list);

 for (i = 0; i < RDS_CONG_MAP_PAGES; i++) {
  zp = get_zeroed_page(GFP_KERNEL);
  if (zp == 0)
   goto out;
  map->m_page_addrs[i] = zp;
 }

 spin_lock_irqsave(&rds_cong_lock, flags);
 ret = rds_cong_tree_walk(addr, map);
 spin_unlock_irqrestore(&rds_cong_lock, flags);

 if (!ret) {
  ret = map;
  map = ((void*)0);
 }

out:
 if (map) {
  for (i = 0; i < RDS_CONG_MAP_PAGES && map->m_page_addrs[i]; i++)
   free_page(map->m_page_addrs[i]);
  kfree(map);
 }

 rdsdebug("map %p for addr %pI6c\n", ret, addr);

 return ret;
}
