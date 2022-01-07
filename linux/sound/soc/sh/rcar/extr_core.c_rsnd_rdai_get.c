
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {struct rsnd_dai* rdai; } ;
struct rsnd_dai {int dummy; } ;


 int rsnd_rdai_nr (struct rsnd_priv*) ;

struct rsnd_dai *rsnd_rdai_get(struct rsnd_priv *priv, int id)
{
 if ((id < 0) || (id >= rsnd_rdai_nr(priv)))
  return ((void*)0);

 return priv->rdai + id;
}
