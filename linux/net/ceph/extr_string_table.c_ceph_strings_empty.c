
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_EMPTY_ROOT (int *) ;
 int string_tree ;

bool ceph_strings_empty(void)
{
 return RB_EMPTY_ROOT(&string_tree);
}
