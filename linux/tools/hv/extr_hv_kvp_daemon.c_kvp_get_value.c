
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int value; int key; } ;
typedef int __u8 ;
struct TYPE_2__ {int num_records; struct kvp_record* records; } ;


 int HV_KVP_EXCHANGE_MAX_KEY_SIZE ;
 int HV_KVP_EXCHANGE_MAX_VALUE_SIZE ;
 TYPE_1__* kvp_file_info ;
 int kvp_update_mem_state (int) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int kvp_get_value(int pool, const __u8 *key, int key_size, __u8 *value,
   int value_size)
{
 int i;
 int num_records;
 struct kvp_record *record;

 if ((key_size > HV_KVP_EXCHANGE_MAX_KEY_SIZE) ||
  (value_size > HV_KVP_EXCHANGE_MAX_VALUE_SIZE))
  return 1;




 kvp_update_mem_state(pool);

 num_records = kvp_file_info[pool].num_records;
 record = kvp_file_info[pool].records;

 for (i = 0; i < num_records; i++) {
  if (memcmp(key, record[i].key, key_size))
   continue;



  memcpy(value, record[i].value, value_size);
  return 0;
 }

 return 1;
}
