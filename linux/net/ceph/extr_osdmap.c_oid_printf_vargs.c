
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ceph_object_id {int name_len; int inline_name; } ;


 int WARN_ON (int) ;
 int ceph_oid_empty (struct ceph_object_id*) ;
 int vsnprintf (int ,int,char const*,int ) ;

int oid_printf_vargs(struct ceph_object_id *oid, const char *fmt, va_list ap)
{
 int len;

 WARN_ON(!ceph_oid_empty(oid));

 len = vsnprintf(oid->inline_name, sizeof(oid->inline_name), fmt, ap);
 if (len >= sizeof(oid->inline_name))
  return len;

 oid->name_len = len;
 return 0;
}
