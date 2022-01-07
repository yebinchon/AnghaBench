
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rds_zcopy_cookies {int num; int* cookies; } ;


 int RDS_MAX_ZCOOKIES ;
 int cfg_verbose ;
 int error (int,int ,char*,int,int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static uint32_t do_process_zerocopy_cookies(struct rds_zcopy_cookies *ck)
{
 int i;

 if (ck->num > RDS_MAX_ZCOOKIES)
  error(1, 0, "Returned %d cookies, max expected %d\n",
        ck->num, RDS_MAX_ZCOOKIES);
 for (i = 0; i < ck->num; i++)
  if (cfg_verbose >= 2)
   fprintf(stderr, "%d\n", ck->cookies[i]);
 return ck->num;
}
