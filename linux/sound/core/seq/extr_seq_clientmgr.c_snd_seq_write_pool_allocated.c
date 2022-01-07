
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int pool; } ;


 scalar_t__ snd_seq_total_cells (int ) ;

__attribute__((used)) static inline int snd_seq_write_pool_allocated(struct snd_seq_client *client)
{
 return snd_seq_total_cells(client->pool) > 0;
}
