
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pprint_mapv_int128 {int dummy; } ;
struct pprint_mapv {int dummy; } ;
typedef enum pprint_mapv_kind_t { ____Placeholder_pprint_mapv_kind_t } pprint_mapv_kind_t ;


 int PPRINT_MAPV_KIND_BASIC ;
 int PPRINT_MAPV_KIND_INT128 ;
 int assert (int ) ;

__attribute__((used)) static size_t get_pprint_mapv_size(enum pprint_mapv_kind_t mapv_kind)
{
 if (mapv_kind == PPRINT_MAPV_KIND_BASIC)
  return sizeof(struct pprint_mapv);


 if (mapv_kind == PPRINT_MAPV_KIND_INT128)
  return sizeof(struct pprint_mapv_int128);


 assert(0);
}
