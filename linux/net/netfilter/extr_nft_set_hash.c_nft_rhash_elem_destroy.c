
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nft_set_elem_destroy (void*,void*,int) ;

__attribute__((used)) static void nft_rhash_elem_destroy(void *ptr, void *arg)
{
 nft_set_elem_destroy(arg, ptr, 1);
}
