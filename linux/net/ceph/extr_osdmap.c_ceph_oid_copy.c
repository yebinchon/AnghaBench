
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_object_id {scalar_t__ name_len; int name; int inline_name; } ;


 int GFP_NOIO ;
 int __GFP_NOFAIL ;
 int ceph_oid_destroy (struct ceph_object_id*) ;
 int kmalloc (scalar_t__,int) ;
 int memcpy (int ,int ,scalar_t__) ;

void ceph_oid_copy(struct ceph_object_id *dest,
     const struct ceph_object_id *src)
{
 ceph_oid_destroy(dest);

 if (src->name != src->inline_name) {

  dest->name = kmalloc(src->name_len + 1,
         GFP_NOIO | __GFP_NOFAIL);
 } else {
  dest->name = dest->inline_name;
 }
 memcpy(dest->name, src->name, src->name_len + 1);
 dest->name_len = src->name_len;
}
