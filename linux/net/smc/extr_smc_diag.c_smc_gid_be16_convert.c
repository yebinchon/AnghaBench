
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int sprintf (int *,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void smc_gid_be16_convert(__u8 *buf, u8 *gid_raw)
{
 sprintf(buf, "%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x",
  be16_to_cpu(((__be16 *)gid_raw)[0]),
  be16_to_cpu(((__be16 *)gid_raw)[1]),
  be16_to_cpu(((__be16 *)gid_raw)[2]),
  be16_to_cpu(((__be16 *)gid_raw)[3]),
  be16_to_cpu(((__be16 *)gid_raw)[4]),
  be16_to_cpu(((__be16 *)gid_raw)[5]),
  be16_to_cpu(((__be16 *)gid_raw)[6]),
  be16_to_cpu(((__be16 *)gid_raw)[7]));
}
