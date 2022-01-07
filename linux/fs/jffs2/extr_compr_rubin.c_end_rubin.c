
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {int q; int pp; } ;


 int LOWER_BITS_RUBIN ;
 int RUBIN_REG_SIZE ;
 int UPPER_BIT_RUBIN ;
 int pushbit (int *,int,int) ;

__attribute__((used)) static void end_rubin(struct rubin_state *rs)
{

 int i;

 for (i = 0; i < RUBIN_REG_SIZE; i++) {
  pushbit(&rs->pp, (UPPER_BIT_RUBIN & rs->q) ? 1 : 0, 1);
  rs->q &= LOWER_BITS_RUBIN;
  rs->q <<= 1;
 }
}
