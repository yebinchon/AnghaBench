
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ceph_x_encrypt_offset () ;

__attribute__((used)) static int ceph_x_encrypt_buflen(int ilen)
{
 return ceph_x_encrypt_offset() + ilen + 16;
}
