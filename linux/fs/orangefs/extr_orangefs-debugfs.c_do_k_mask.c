
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u64 ;
struct TYPE_2__ {int mask_val; int keyword; } ;


 TYPE_1__* s_kmod_keyword_mask_map ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void do_k_mask(int i, char *unchecked_keyword, __u64 **sane_mask)
{

 if (!strcmp(s_kmod_keyword_mask_map[i].keyword, unchecked_keyword))
  **sane_mask = (**sane_mask) |
    s_kmod_keyword_mask_map[i].mask_val;
}
