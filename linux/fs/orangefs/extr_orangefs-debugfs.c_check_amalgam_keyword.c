
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct client_debug_mask {scalar_t__ mask1; scalar_t__ mask2; } ;
typedef scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ mask1; scalar_t__ mask2; } ;
struct TYPE_3__ {scalar_t__ mask_val; } ;


 int ORANGEFS_ALL ;
 int ORANGEFS_VERBOSE ;
 TYPE_2__* cdm_array ;
 size_t client_all_index ;
 int client_debug_string ;
 size_t client_verbose_index ;
 int kernel_debug_string ;
 int num_kmod_keyword_mask_map ;
 TYPE_1__* s_kmod_keyword_mask_map ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int check_amalgam_keyword(void *mask, int type)
{
 __u64 *k_mask;
 struct client_debug_mask *c_mask;
 int k_all_index = num_kmod_keyword_mask_map - 1;
 int rc = 0;

 if (type) {
  c_mask = (struct client_debug_mask *) mask;

  if ((c_mask->mask1 == cdm_array[client_all_index].mask1) &&
      (c_mask->mask2 == cdm_array[client_all_index].mask2)) {
   strcpy(client_debug_string, ORANGEFS_ALL);
   rc = 1;
   goto out;
  }

  if ((c_mask->mask1 == cdm_array[client_verbose_index].mask1) &&
      (c_mask->mask2 == cdm_array[client_verbose_index].mask2)) {
   strcpy(client_debug_string, ORANGEFS_VERBOSE);
   rc = 1;
   goto out;
  }

 } else {
  k_mask = (__u64 *) mask;

  if (*k_mask >= s_kmod_keyword_mask_map[k_all_index].mask_val) {
   strcpy(kernel_debug_string, ORANGEFS_ALL);
   rc = 1;
   goto out;
  }
 }

out:

 return rc;
}
