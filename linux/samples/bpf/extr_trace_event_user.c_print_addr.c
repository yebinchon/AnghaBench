
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int printf (char*,int ) ;

__attribute__((used)) static void print_addr(__u64 addr)
{
 if (!addr)
  return;
 printf("%llx;", addr);
}
