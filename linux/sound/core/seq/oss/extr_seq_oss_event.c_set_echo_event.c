
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union evrec {int dummy; } evrec ;
struct snd_seq_event {int data; int type; } ;
struct TYPE_2__ {int port; int client; } ;
struct seq_oss_devinfo {TYPE_1__ addr; } ;


 int LONG_EVENT_SIZE ;
 int SNDRV_SEQ_EVENT_ECHO ;
 int memcpy (int *,union evrec*,int ) ;
 int snd_seq_oss_fill_addr (struct seq_oss_devinfo*,struct snd_seq_event*,int ,int ) ;

__attribute__((used)) static int
set_echo_event(struct seq_oss_devinfo *dp, union evrec *rec, struct snd_seq_event *ev)
{
 ev->type = SNDRV_SEQ_EVENT_ECHO;

 snd_seq_oss_fill_addr(dp, ev, dp->addr.client, dp->addr.port);
 memcpy(&ev->data, rec, LONG_EVENT_SIZE);
 return 0;
}
