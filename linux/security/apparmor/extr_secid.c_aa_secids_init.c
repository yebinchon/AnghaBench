
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AA_FIRST_SECID ;
 int aa_secids ;
 int idr_init_base (int *,int ) ;

void aa_secids_init(void)
{
 idr_init_base(&aa_secids, AA_FIRST_SECID);
}
