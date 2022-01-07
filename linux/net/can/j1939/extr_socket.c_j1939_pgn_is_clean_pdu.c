
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgn_t ;


 scalar_t__ j1939_pgn_is_pdu1 (int) ;

__attribute__((used)) static inline bool j1939_pgn_is_clean_pdu(pgn_t pgn)
{
 if (j1939_pgn_is_pdu1(pgn))
  return !(pgn & 0xff);
 else
  return 1;
}
