
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int dummy; } ;
typedef int __be32 ;


 int EBUSY ;
 int ECONNREFUSED ;
 int PCR_BCAST_CONN ;
 int PCR_ONLINE ;
 int PCR_P2P_CONN_MASK ;
 int cmp_error (struct cmp_connection*,char*) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static int pcr_set_check(struct cmp_connection *c, __be32 pcr)
{
 if (pcr & cpu_to_be32(PCR_BCAST_CONN |
         PCR_P2P_CONN_MASK)) {
  cmp_error(c, "plug is already in use\n");
  return -EBUSY;
 }
 if (!(pcr & cpu_to_be32(PCR_ONLINE))) {
  cmp_error(c, "plug is not on-line\n");
  return -ECONNREFUSED;
 }

 return 0;
}
