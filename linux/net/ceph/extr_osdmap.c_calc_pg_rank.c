
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osds {int size; int* osds; } ;



__attribute__((used)) static int calc_pg_rank(int osd, const struct ceph_osds *acting)
{
 int i;

 for (i = 0; i < acting->size; i++) {
  if (acting->osds[i] == osd)
   return i;
 }

 return -1;
}
