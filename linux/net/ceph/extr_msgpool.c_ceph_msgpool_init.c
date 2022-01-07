
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msgpool {int type; int front_len; int max_data_items; char const* name; int pool; } ;


 int ENOMEM ;
 int dout (char*,char const*) ;
 int mempool_create (int,int ,int ,struct ceph_msgpool*) ;
 int msgpool_alloc ;
 int msgpool_free ;

int ceph_msgpool_init(struct ceph_msgpool *pool, int type,
        int front_len, int max_data_items, int size,
        const char *name)
{
 dout("msgpool %s init\n", name);
 pool->type = type;
 pool->front_len = front_len;
 pool->max_data_items = max_data_items;
 pool->pool = mempool_create(size, msgpool_alloc, msgpool_free, pool);
 if (!pool->pool)
  return -ENOMEM;
 pool->name = name;
 return 0;
}
