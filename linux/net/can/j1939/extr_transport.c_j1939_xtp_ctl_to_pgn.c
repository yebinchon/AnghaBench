
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int pgn_t ;


 scalar_t__ j1939_pgn_is_pdu1 (int) ;

__attribute__((used)) static inline pgn_t j1939_xtp_ctl_to_pgn(const u8 *dat)
{
 pgn_t pgn;

 pgn = (dat[7] << 16) | (dat[6] << 8) | (dat[5] << 0);
 if (j1939_pgn_is_pdu1(pgn))
  pgn &= 0xffff00;
 return pgn;
}
