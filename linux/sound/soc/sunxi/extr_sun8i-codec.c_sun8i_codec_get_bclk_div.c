
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sun8i_codec_clk_div {unsigned int val; scalar_t__ div; } ;
struct sun8i_codec {int clk_module; } ;


 int ARRAY_SIZE (struct sun8i_codec_clk_div*) ;
 unsigned int abs (scalar_t__) ;
 unsigned long clk_get_rate (int ) ;
 struct sun8i_codec_clk_div* sun8i_codec_bclk_div ;

__attribute__((used)) static u8 sun8i_codec_get_bclk_div(struct sun8i_codec *scodec,
       unsigned int rate,
       unsigned int word_size)
{
 unsigned long clk_rate = clk_get_rate(scodec->clk_module);
 unsigned int div = clk_rate / rate / word_size / 2;
 unsigned int best_val = 0, best_diff = ~0;
 int i;

 for (i = 0; i < ARRAY_SIZE(sun8i_codec_bclk_div); i++) {
  const struct sun8i_codec_clk_div *bdiv = &sun8i_codec_bclk_div[i];
  unsigned int diff = abs(bdiv->div - div);

  if (diff < best_diff) {
   best_diff = diff;
   best_val = bdiv->val;
  }
 }

 return best_val;
}
