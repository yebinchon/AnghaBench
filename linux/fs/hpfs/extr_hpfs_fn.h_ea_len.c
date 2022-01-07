
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int namelen; } ;
typedef int secno ;
typedef int __le32 ;


 int get_unaligned (int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline secno ea_len(struct extended_attribute *ea)
{
 return le32_to_cpu(get_unaligned((__le32 *)((char *)ea + 5 + ea->namelen)));
}
