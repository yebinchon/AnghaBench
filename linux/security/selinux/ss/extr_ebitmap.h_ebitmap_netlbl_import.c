
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_lsm_catmap {int dummy; } ;
struct ebitmap {int dummy; } ;


 int ENOMEM ;

__attribute__((used)) static inline int ebitmap_netlbl_import(struct ebitmap *ebmap,
     struct netlbl_lsm_catmap *catmap)
{
 return -ENOMEM;
}
