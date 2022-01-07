
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_DIR_BUCKETS ;
 int MAX_DIR_HASH_DEPTH ;

__attribute__((used)) static unsigned int dir_buckets(unsigned int level, int dir_level)
{
 if (level + dir_level < MAX_DIR_HASH_DEPTH / 2)
  return 1 << (level + dir_level);
 else
  return MAX_DIR_BUCKETS;
}
