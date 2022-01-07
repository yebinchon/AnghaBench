
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __fs32 ;


 int pr_err (char*) ;

__attribute__((used)) static int qnx6_check_blockptr(__fs32 ptr)
{
 if (ptr == ~(__fs32)0) {
  pr_err("hit unused blockpointer.\n");
  return 0;
 }
 return 1;
}
