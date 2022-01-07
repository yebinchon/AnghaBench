
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int pgn; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct j1939_session {TYPE_2__ skcb; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;


 int j1939_xtp_do_tx_ctl (struct j1939_priv*,TYPE_2__*,int,int ,int const*) ;

__attribute__((used)) static inline int j1939_tp_tx_ctl(struct j1939_session *session,
      bool swap_src_dst, const u8 *dat)
{
 struct j1939_priv *priv = session->priv;

 return j1939_xtp_do_tx_ctl(priv, &session->skcb,
       swap_src_dst,
       session->skcb.addr.pgn, dat);
}
