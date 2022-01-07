
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgn_t ;



__attribute__((used)) static inline bool j1939_pgn_is_pdu1(pgn_t pgn)
{

 return (pgn & 0xff00) < 0xf000;
}
