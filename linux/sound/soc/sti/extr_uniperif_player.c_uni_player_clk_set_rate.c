
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct uniperif {int clk_adj; int clk; } ;


 int EINVAL ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int) ;
 scalar_t__ div64_u64 (int,unsigned long) ;

__attribute__((used)) static int uni_player_clk_set_rate(struct uniperif *player, unsigned long rate)
{
 int rate_adjusted, rate_achieved, delta, ret;
 int adjustment = player->clk_adj;
 if (adjustment < 0) {

  delta = -1;
  adjustment = -adjustment;
 } else {
  delta = 1;
 }

 delta *= (int)div64_u64((uint64_t)rate *
    (uint64_t)adjustment + 500000, 1000000);
 rate_adjusted = rate + delta;


 if (!rate_adjusted)
  return -EINVAL;

 ret = clk_set_rate(player->clk, rate_adjusted);
 if (ret < 0)
  return ret;

 rate_achieved = clk_get_rate(player->clk);
 if (!rate_achieved)

  return -EINVAL;





 delta = rate_achieved - rate;
 if (delta < 0) {

  delta = -delta;
  adjustment = -1;
 } else {
  adjustment = 1;
 }

 adjustment *= (int)div64_u64((uint64_t)delta * 1000000 + rate / 2,
         rate);
 player->clk_adj = adjustment;
 return 0;
}
