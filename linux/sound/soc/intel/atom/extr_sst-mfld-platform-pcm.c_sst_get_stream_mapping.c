
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dev_stream_map {int dev_num; int direction; } ;


 int EINVAL ;

__attribute__((used)) static int sst_get_stream_mapping(int dev, int sdev, int dir,
 struct sst_dev_stream_map *map, int size)
{
 int i;

 if (map == ((void*)0))
  return -EINVAL;



 for (i = 1; i < size; i++) {
  if ((map[i].dev_num == dev) && (map[i].direction == dir))
   return i;
 }
 return 0;
}
