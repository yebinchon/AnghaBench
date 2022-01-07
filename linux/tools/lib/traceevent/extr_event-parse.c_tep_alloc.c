
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int ref_count; int host_bigendian; } ;


 struct tep_handle* calloc (int,int) ;
 int tep_is_bigendian () ;

struct tep_handle *tep_alloc(void)
{
 struct tep_handle *tep = calloc(1, sizeof(*tep));

 if (tep) {
  tep->ref_count = 1;
  tep->host_bigendian = tep_is_bigendian();
 }

 return tep;
}
