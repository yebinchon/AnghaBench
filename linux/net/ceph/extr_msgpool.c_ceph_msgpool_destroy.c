
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msgpool {int pool; int name; } ;


 int dout (char*,int ) ;
 int mempool_destroy (int ) ;

void ceph_msgpool_destroy(struct ceph_msgpool *pool)
{
 dout("msgpool %s destroy\n", pool->name);
 mempool_destroy(pool->pool);
}
