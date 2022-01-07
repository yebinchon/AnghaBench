
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_mapping {int node; } ;


 int GFP_NOIO ;
 int RB_CLEAR_NODE (int *) ;
 struct ceph_pg_mapping* kmalloc (int,int ) ;

__attribute__((used)) static struct ceph_pg_mapping *alloc_pg_mapping(size_t payload_len)
{
 struct ceph_pg_mapping *pg;

 pg = kmalloc(sizeof(*pg) + payload_len, GFP_NOIO);
 if (!pg)
  return ((void*)0);

 RB_CLEAR_NODE(&pg->node);
 return pg;
}
