
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
typedef int loff_t ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int EACCES ;
 int FILE_CHECK ;
 int IMA_APPRAISE_ENFORCE ;
 int IMA_APPRAISE_FIRMWARE ;
 int MAY_READ ;
 int READING_FIRMWARE ;
 int READING_X509_CERTIFICATE ;
 int current ;
 int current_cred () ;
 int ima_appraise ;
 int pr_err (char*) ;
 int process_measurement (struct file*,int ,int ,void*,int ,int ,int) ;
 scalar_t__* read_idmap ;
 int security_task_getsecid (int ,int *) ;

int ima_post_read_file(struct file *file, void *buf, loff_t size,
         enum kernel_read_file_id read_id)
{
 enum ima_hooks func;
 u32 secid;

 if (!file && read_id == READING_FIRMWARE) {
  if ((ima_appraise & IMA_APPRAISE_FIRMWARE) &&
      (ima_appraise & IMA_APPRAISE_ENFORCE)) {
   pr_err("Prevent firmware loading_store.\n");
   return -EACCES;
  }
  return 0;
 }


 if (!file && read_id == READING_X509_CERTIFICATE)
  return 0;

 if (!file || !buf || size == 0) {
  if (ima_appraise & IMA_APPRAISE_ENFORCE)
   return -EACCES;
  return 0;
 }

 func = read_idmap[read_id] ?: FILE_CHECK;
 security_task_getsecid(current, &secid);
 return process_measurement(file, current_cred(), secid, buf, size,
       MAY_READ, func);
}
