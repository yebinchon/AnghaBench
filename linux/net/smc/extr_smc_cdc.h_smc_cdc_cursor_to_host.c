
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_host_cursor {scalar_t__ count; scalar_t__ wrap; } ;
union smc_cdc_cursor {int wrap; int count; } ;
struct smc_connection {int dummy; } ;


 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int smc_curs_copy (union smc_host_cursor*,union smc_host_cursor*,struct smc_connection*) ;
 int smc_curs_copy_net (union smc_cdc_cursor*,union smc_cdc_cursor*,struct smc_connection*) ;

__attribute__((used)) static inline void smc_cdc_cursor_to_host(union smc_host_cursor *local,
       union smc_cdc_cursor *peer,
       struct smc_connection *conn)
{
 union smc_host_cursor temp, old;
 union smc_cdc_cursor net;

 smc_curs_copy(&old, local, conn);
 smc_curs_copy_net(&net, peer, conn);
 temp.count = ntohl(net.count);
 temp.wrap = ntohs(net.wrap);
 if ((old.wrap > temp.wrap) && temp.wrap)
  return;
 if ((old.wrap == temp.wrap) &&
     (old.count > temp.count))
  return;
 smc_curs_copy(local, &temp, conn);
}
