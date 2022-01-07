
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybe_kfree_parameter (char*) ;

void param_free_charp(void *arg)
{
 maybe_kfree_parameter(*((char **)arg));
}
