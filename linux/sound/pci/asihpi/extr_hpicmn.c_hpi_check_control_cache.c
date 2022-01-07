
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {scalar_t__ version; scalar_t__ specific_error; scalar_t__ error; } ;
struct hpi_message {int adapter_index; int obj_index; } ;
struct hpi_control_cache_single {int dummy; } ;
struct hpi_control_cache_info {int dummy; } ;
struct hpi_control_cache {int dummy; } ;


 int HPI_DEBUG_LOG (int ,char*,int ) ;
 int VERBOSE ;
 int find_control (int ,struct hpi_control_cache*,struct hpi_control_cache_info**) ;
 short hpi_check_control_cache_single (struct hpi_control_cache_single*,struct hpi_message*,struct hpi_response*) ;

short hpi_check_control_cache(struct hpi_control_cache *p_cache,
 struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_control_cache_info *pI;

 if (!find_control(phm->obj_index, p_cache, &pI)) {
  HPI_DEBUG_LOG(VERBOSE,
   "HPICMN find_control() failed for adap %d\n",
   phm->adapter_index);
  return 0;
 }

 phr->error = 0;
 phr->specific_error = 0;
 phr->version = 0;

 return hpi_check_control_cache_single((struct hpi_control_cache_single
   *)pI, phm, phr);
}
