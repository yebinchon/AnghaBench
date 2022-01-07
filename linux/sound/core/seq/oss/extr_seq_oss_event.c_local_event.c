
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union evrec {int dummy; } evrec ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
local_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 return -EINVAL;
}
