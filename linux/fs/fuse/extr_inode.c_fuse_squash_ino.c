
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ino_t ;



__attribute__((used)) static ino_t fuse_squash_ino(u64 ino64)
{
 ino_t ino = (ino_t) ino64;
 if (sizeof(ino_t) < sizeof(u64))
  ino ^= ino64 >> (sizeof(u64) - sizeof(ino_t)) * 8;
 return ino;
}
