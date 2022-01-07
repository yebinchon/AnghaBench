
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct can_ml_priv* ml_priv; } ;
struct j1939_priv {int dummy; } ;
struct can_ml_priv {struct j1939_priv* j1939_priv; } ;



__attribute__((used)) static inline void j1939_priv_set(struct net_device *ndev,
      struct j1939_priv *priv)
{
 struct can_ml_priv *can_ml_priv = ndev->ml_priv;

 can_ml_priv->j1939_priv = priv;
}
