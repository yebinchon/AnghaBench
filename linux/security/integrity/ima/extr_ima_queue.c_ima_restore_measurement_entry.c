
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_template_entry {int dummy; } ;


 int ima_add_digest_entry (struct ima_template_entry*,int ) ;
 int ima_extend_list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ima_restore_measurement_entry(struct ima_template_entry *entry)
{
 int result = 0;

 mutex_lock(&ima_extend_list_mutex);
 result = ima_add_digest_entry(entry, 0);
 mutex_unlock(&ima_extend_list_mutex);
 return result;
}
