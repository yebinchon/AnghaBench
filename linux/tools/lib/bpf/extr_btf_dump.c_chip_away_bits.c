
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int chip_away_bits(int total, int at_most)
{
 return total % at_most ? : at_most;
}
