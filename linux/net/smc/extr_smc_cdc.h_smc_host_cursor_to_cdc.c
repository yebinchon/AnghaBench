
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_host_cursor {int wrap; int count; } ;
union smc_cdc_cursor {int wrap; int count; } ;
struct smc_connection {int dummy; } ;


 int htonl (int ) ;
 int htons (int ) ;
 int smc_curs_copy (union smc_host_cursor*,union smc_host_cursor*,struct smc_connection*) ;

__attribute__((used)) static inline void smc_host_cursor_to_cdc(union smc_cdc_cursor *peer,
       union smc_host_cursor *local,
       union smc_host_cursor *save,
       struct smc_connection *conn)
{
 smc_curs_copy(save, local, conn);
 peer->count = htonl(save->count);
 peer->wrap = htons(save->wrap);

}
