
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int capi_name; } ;


 int UBIFS_COMPR_TYPES_CNT ;
 int ubifs_assert (struct ubifs_info*,int) ;
 TYPE_1__** ubifs_compressors ;

__attribute__((used)) static inline int ubifs_compr_present(struct ubifs_info *c, int compr_type)
{
 ubifs_assert(c, compr_type >= 0 && compr_type < UBIFS_COMPR_TYPES_CNT);
 return !!ubifs_compressors[compr_type]->capi_name;
}
