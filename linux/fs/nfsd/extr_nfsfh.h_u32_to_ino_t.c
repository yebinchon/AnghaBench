
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;
typedef int __u32 ;



__attribute__((used)) static inline ino_t u32_to_ino_t(__u32 uino)
{
 return (ino_t) uino;
}
