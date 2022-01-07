
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct smc_connection {TYPE_1__* sndbuf_desc; int tx_curs_prep; int tx_curs_sent; } ;
struct TYPE_2__ {int len; } ;


 int smc_curs_copy (union smc_host_cursor*,int *,struct smc_connection*) ;
 int smc_curs_diff (int ,union smc_host_cursor*,union smc_host_cursor*) ;

__attribute__((used)) static inline int smc_tx_prepared_sends(struct smc_connection *conn)
{
 union smc_host_cursor sent, prep;

 smc_curs_copy(&sent, &conn->tx_curs_sent, conn);
 smc_curs_copy(&prep, &conn->tx_curs_prep, conn);
 return smc_curs_diff(conn->sndbuf_desc->len, &sent, &prep);
}
