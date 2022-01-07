
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * trees ;
 int trees_count ;
 int verify (int *) ;

__attribute__((used)) static void trees_verify(void)
{
 int i;

 for (i = 0; i != trees_count; i++)
  verify(&trees[i]);
}
