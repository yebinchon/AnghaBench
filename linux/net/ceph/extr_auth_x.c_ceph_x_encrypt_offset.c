
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_x_encrypt_header {int dummy; } ;



__attribute__((used)) static int ceph_x_encrypt_offset(void)
{
 return sizeof(u32) + sizeof(struct ceph_x_encrypt_header);
}
