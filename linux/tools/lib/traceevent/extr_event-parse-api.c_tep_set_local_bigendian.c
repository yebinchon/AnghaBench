
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int host_bigendian; } ;
typedef enum tep_endian { ____Placeholder_tep_endian } tep_endian ;



void tep_set_local_bigendian(struct tep_handle *tep, enum tep_endian endian)
{
 if (tep)
  tep->host_bigendian = endian;
}
