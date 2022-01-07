
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_midi {int dummy; } ;
struct seq_oss_devinfo {int max_mididev; } ;


 int array_index_nospec (int,int) ;
 struct seq_oss_midi* get_mdev (int) ;

__attribute__((used)) static struct seq_oss_midi *
get_mididev(struct seq_oss_devinfo *dp, int dev)
{
 if (dev < 0 || dev >= dp->max_mididev)
  return ((void*)0);
 dev = array_index_nospec(dev, dp->max_mididev);
 return get_mdev(dev);
}
