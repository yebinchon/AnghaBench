
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hpi_control_cache_info {size_t control_type; } ;
struct hpi_control_cache {struct hpi_control_cache_info** p_info; } ;


 int HPI_DEBUG_LOG (int ,char*,size_t) ;
 int VERBOSE ;
 int control_cache_alloc_check (struct hpi_control_cache*) ;

__attribute__((used)) static short find_control(u16 control_index,
 struct hpi_control_cache *p_cache, struct hpi_control_cache_info **pI)
{
 if (!control_cache_alloc_check(p_cache)) {
  HPI_DEBUG_LOG(VERBOSE,
   "control_cache_alloc_check() failed %d\n",
   control_index);
  return 0;
 }

 *pI = p_cache->p_info[control_index];
 if (!*pI) {
  HPI_DEBUG_LOG(VERBOSE, "Uncached Control %d\n",
   control_index);
  return 0;
 } else {
  HPI_DEBUG_LOG(VERBOSE, "find_control() type %d\n",
   (*pI)->control_type);
 }
 return 1;
}
