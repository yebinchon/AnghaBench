
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EINVAL ;
 int OSDMAP_CLIENT_DATA_COMPAT_VER ;
 int OSDMAP_WRAPPER_COMPAT_VER ;
 int ceph_decode_16_safe (void**,void*,int,int ) ;
 int ceph_decode_8_safe (void**,void*,int,int ) ;
 int e_inval ;
 int pr_warn (char*,int,...) ;

__attribute__((used)) static int get_osdmap_client_data_v(void **p, void *end,
        const char *prefix, u8 *v)
{
 u8 struct_v;

 ceph_decode_8_safe(p, end, struct_v, e_inval);
 if (struct_v >= 7) {
  u8 struct_compat;

  ceph_decode_8_safe(p, end, struct_compat, e_inval);
  if (struct_compat > OSDMAP_WRAPPER_COMPAT_VER) {
   pr_warn("got v %d cv %d > %d of %s ceph_osdmap\n",
    struct_v, struct_compat,
    OSDMAP_WRAPPER_COMPAT_VER, prefix);
   return -EINVAL;
  }
  *p += 4;

  ceph_decode_8_safe(p, end, struct_v, e_inval);
  ceph_decode_8_safe(p, end, struct_compat, e_inval);
  if (struct_compat > OSDMAP_CLIENT_DATA_COMPAT_VER) {
   pr_warn("got v %d cv %d > %d of %s ceph_osdmap client data\n",
    struct_v, struct_compat,
    OSDMAP_CLIENT_DATA_COMPAT_VER, prefix);
   return -EINVAL;
  }
  *p += 4;
 } else {
  u16 version;

  *p -= 1;
  ceph_decode_16_safe(p, end, version, e_inval);
  if (version < 6) {
   pr_warn("got v %d < 6 of %s ceph_osdmap\n",
    version, prefix);
   return -EINVAL;
  }


  struct_v = 0;
 }

 *v = struct_v;
 return 0;

e_inval:
 return -EINVAL;
}
