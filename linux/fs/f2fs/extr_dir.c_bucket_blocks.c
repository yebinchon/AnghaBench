
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DIR_HASH_DEPTH ;

__attribute__((used)) static unsigned int bucket_blocks(unsigned int level)
{
 if (level < MAX_DIR_HASH_DEPTH / 2)
  return 2;
 else
  return 4;
}
