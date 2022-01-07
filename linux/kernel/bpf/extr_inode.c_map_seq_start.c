
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {void* key; scalar_t__ done; } ;


 void* SEQ_START_TOKEN ;
 TYPE_1__* map_iter (struct seq_file*) ;

__attribute__((used)) static void *map_seq_start(struct seq_file *m, loff_t *pos)
{
 if (map_iter(m)->done)
  return ((void*)0);

 return *pos ? map_iter(m)->key : SEQ_START_TOKEN;
}
