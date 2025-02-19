
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct uuid_module {int max_instance; } ;


 int EINVAL ;
 int ffz (int) ;

__attribute__((used)) static inline int skl_getid_32(struct uuid_module *module, u64 *val,
    int word1_mask, int word2_mask)
{
 int index, max_inst, pvt_id;
 u32 mask_val;

 max_inst = module->max_instance;
 mask_val = (u32)(*val >> word1_mask);

 if (mask_val != 0xffffffff) {
  index = ffz(mask_val);
  pvt_id = index + word1_mask + word2_mask;
  if (pvt_id <= (max_inst - 1)) {
   *val |= 1ULL << (index + word1_mask);
   return pvt_id;
  }
 }

 return -EINVAL;
}
