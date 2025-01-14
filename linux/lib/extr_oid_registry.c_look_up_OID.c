
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum OID { ____Placeholder_OID } OID ;
struct TYPE_2__ {unsigned char hash; int oid; } ;


 int OID__NR ;
 unsigned char* oid_data ;
 size_t* oid_index ;
 TYPE_1__* oid_search_table ;

enum OID look_up_OID(const void *data, size_t datasize)
{
 const unsigned char *octets = data;
 enum OID oid;
 unsigned char xhash;
 unsigned i, j, k, hash;
 size_t len;


 hash = datasize - 1;

 for (i = 0; i < datasize; i++)
  hash += octets[i] * 33;
 hash = (hash >> 24) ^ (hash >> 16) ^ (hash >> 8) ^ hash;
 hash &= 0xff;





 i = 0;
 k = OID__NR;
 while (i < k) {
  j = (i + k) / 2;

  xhash = oid_search_table[j].hash;
  if (xhash > hash) {
   k = j;
   continue;
  }
  if (xhash < hash) {
   i = j + 1;
   continue;
  }

  oid = oid_search_table[j].oid;
  len = oid_index[oid + 1] - oid_index[oid];
  if (len > datasize) {
   k = j;
   continue;
  }
  if (len < datasize) {
   i = j + 1;
   continue;
  }




  while (len > 0) {
   unsigned char a = oid_data[oid_index[oid] + --len];
   unsigned char b = octets[len];
   if (a > b) {
    k = j;
    goto next;
   }
   if (a < b) {
    i = j + 1;
    goto next;
   }
  }
  return oid;
 next:
  ;
 }

 return OID__NR;
}
