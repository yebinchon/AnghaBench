
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int value; int key; } ;
typedef int __u8 ;
struct TYPE_2__ {int num_records; struct kvp_record* records; } ;


 TYPE_1__* kvp_file_info ;
 int kvp_update_file (int) ;
 int kvp_update_mem_state (int) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int kvp_key_delete(int pool, const __u8 *key, int key_size)
{
 int i;
 int j, k;
 int num_records;
 struct kvp_record *record;




 kvp_update_mem_state(pool);

 num_records = kvp_file_info[pool].num_records;
 record = kvp_file_info[pool].records;

 for (i = 0; i < num_records; i++) {
  if (memcmp(key, record[i].key, key_size))
   continue;




  if (i == (num_records - 1)) {
   kvp_file_info[pool].num_records--;
   kvp_update_file(pool);
   return 0;
  }

  j = i;
  k = j + 1;
  for (; k < num_records; k++) {
   strcpy(record[j].key, record[k].key);
   strcpy(record[j].value, record[k].value);
   j++;
  }

  kvp_file_info[pool].num_records--;
  kvp_update_file(pool);
  return 0;
 }
 return 1;
}
