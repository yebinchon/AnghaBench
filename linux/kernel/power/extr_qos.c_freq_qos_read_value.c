
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_constraints {int max_freq; int min_freq; } ;
typedef int s32 ;
typedef enum freq_qos_req_type { ____Placeholder_freq_qos_req_type } freq_qos_req_type ;



 int FREQ_QOS_MAX_DEFAULT_VALUE ;

 int FREQ_QOS_MIN_DEFAULT_VALUE ;
 int IS_ERR_OR_NULL (struct freq_constraints*) ;
 int WARN_ON (int) ;
 int pm_qos_read_value (int *) ;

s32 freq_qos_read_value(struct freq_constraints *qos,
   enum freq_qos_req_type type)
{
 s32 ret;

 switch (type) {
 case 128:
  ret = IS_ERR_OR_NULL(qos) ?
   FREQ_QOS_MIN_DEFAULT_VALUE :
   pm_qos_read_value(&qos->min_freq);
  break;
 case 129:
  ret = IS_ERR_OR_NULL(qos) ?
   FREQ_QOS_MAX_DEFAULT_VALUE :
   pm_qos_read_value(&qos->max_freq);
  break;
 default:
  WARN_ON(1);
  ret = 0;
 }

 return ret;
}
