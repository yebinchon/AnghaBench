
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int rsnd_adg_clk_query (struct rsnd_priv*,unsigned int) ;
 struct rsnd_priv* rsnd_rdai_to_priv (struct rsnd_dai*) ;
 int rsnd_rdai_width_get (struct rsnd_dai*) ;

unsigned int rsnd_ssi_clk_query(struct rsnd_dai *rdai,
         int param1, int param2, int *idx)
{
 struct rsnd_priv *priv = rsnd_rdai_to_priv(rdai);
 int ssi_clk_mul_table[] = {
  1, 2, 4, 8, 16, 6, 12,
 };
 int j, ret;
 unsigned int main_rate;
 int width = rsnd_rdai_width_get(rdai);

 for (j = 0; j < ARRAY_SIZE(ssi_clk_mul_table); j++) {







  if (j == 0)
   continue;

  main_rate = width * param1 * param2 * ssi_clk_mul_table[j];

  ret = rsnd_adg_clk_query(priv, main_rate);
  if (ret < 0)
   continue;

  if (idx)
   *idx = j;

  return main_rate;
 }

 return 0;
}
