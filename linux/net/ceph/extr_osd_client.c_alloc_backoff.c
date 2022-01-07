
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_backoff {int id_node; int spg_node; } ;


 int GFP_NOIO ;
 int RB_CLEAR_NODE (int *) ;
 struct ceph_osd_backoff* kzalloc (int,int ) ;

__attribute__((used)) static struct ceph_osd_backoff *alloc_backoff(void)
{
 struct ceph_osd_backoff *backoff;

 backoff = kzalloc(sizeof(*backoff), GFP_NOIO);
 if (!backoff)
  return ((void*)0);

 RB_CLEAR_NODE(&backoff->spg_node);
 RB_CLEAR_NODE(&backoff->id_node);
 return backoff;
}
