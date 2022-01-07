
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {int rec_q; int pp; scalar_t__ bit_number; } ;


 scalar_t__ RUBIN_REG_SIZE ;
 int init_rubin (struct rubin_state*,int,int*) ;
 scalar_t__ pullbit (int *) ;

__attribute__((used)) static void init_decode(struct rubin_state *rs, int div, int *bits)
{
 init_rubin(rs, div, bits);


 rs->rec_q = 0;

 for (rs->bit_number = 0; rs->bit_number++ < RUBIN_REG_SIZE;
      rs->rec_q = rs->rec_q * 2 + (long) (pullbit(&rs->pp)))
  ;
}
