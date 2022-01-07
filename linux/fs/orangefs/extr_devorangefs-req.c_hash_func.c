
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int do_div (int ,unsigned int) ;

__attribute__((used)) static int hash_func(__u64 tag, int table_size)
{
 return do_div(tag, (unsigned int)table_size);
}
