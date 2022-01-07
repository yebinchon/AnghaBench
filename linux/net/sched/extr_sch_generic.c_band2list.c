
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_array {int dummy; } ;
struct pfifo_fast_priv {struct skb_array* q; } ;



__attribute__((used)) static inline struct skb_array *band2list(struct pfifo_fast_priv *priv,
       int band)
{
 return &priv->q[band];
}
