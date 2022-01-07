
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_hashmap_empty () ;
 scalar_t__ test_hashmap_generic () ;
 scalar_t__ test_hashmap_multimap () ;

int main(int argc, char **argv)
{
 bool failed = 0;

 if (test_hashmap_generic())
  failed = 1;
 if (test_hashmap_multimap())
  failed = 1;
 if (test_hashmap_empty())
  failed = 1;

 return failed;
}
