
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; int port; } ;
struct snd_seq_event {TYPE_1__ dest; int source; int queue; } ;
struct seq_oss_devinfo {int addr; int queue; } ;



__attribute__((used)) static inline void
snd_seq_oss_fill_addr(struct seq_oss_devinfo *dp, struct snd_seq_event *ev,
       int dest_client, int dest_port)
{
 ev->queue = dp->queue;
 ev->source = dp->addr;
 ev->dest.client = dest_client;
 ev->dest.port = dest_port;
}
