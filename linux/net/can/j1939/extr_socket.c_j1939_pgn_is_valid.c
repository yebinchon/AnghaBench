
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pgn_t ;


 scalar_t__ J1939_PGN_MAX ;

__attribute__((used)) static inline bool j1939_pgn_is_valid(pgn_t pgn)
{
 return pgn <= J1939_PGN_MAX;
}
