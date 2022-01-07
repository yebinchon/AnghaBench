
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct net_device {int dummy; } ;
typedef int loff_t ;


 unsigned int NETDEV_HASHENTRIES ;
 struct net_device* dev_from_same_bucket (struct seq_file*,int *) ;
 int get_bucket (int ) ;
 int set_bucket_offset (unsigned int,int) ;

__attribute__((used)) static inline struct net_device *dev_from_bucket(struct seq_file *seq, loff_t *pos)
{
 struct net_device *dev;
 unsigned int bucket;

 do {
  dev = dev_from_same_bucket(seq, pos);
  if (dev)
   return dev;

  bucket = get_bucket(*pos) + 1;
  *pos = set_bucket_offset(bucket, 1);
 } while (bucket < NETDEV_HASHENTRIES);

 return ((void*)0);
}
