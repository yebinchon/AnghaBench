
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct integrity_iint_cache {int dummy; } ;
struct inode {int dummy; } ;
struct ima_template_entry {int dummy; } ;
struct ima_event_data {unsigned char const* filename; char const* violation; struct file* file; struct integrity_iint_cache* iint; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int violations; } ;


 int AUDIT_INTEGRITY_PCR ;
 int CONFIG_IMA_MEASURE_PCR_IDX ;
 int ENOMEM ;
 int atomic_long_inc (int *) ;
 struct inode* file_inode (struct file*) ;
 int ima_alloc_init_template (struct ima_event_data*,struct ima_template_entry**,int *) ;
 int ima_free_template_entry (struct ima_template_entry*) ;
 TYPE_1__ ima_htable ;
 int ima_store_template (struct ima_template_entry*,int,struct inode*,unsigned char const*,int ) ;
 int integrity_audit_msg (int ,struct inode*,unsigned char const*,char const*,char const*,int,int ) ;

void ima_add_violation(struct file *file, const unsigned char *filename,
         struct integrity_iint_cache *iint,
         const char *op, const char *cause)
{
 struct ima_template_entry *entry;
 struct inode *inode = file_inode(file);
 struct ima_event_data event_data = { .iint = iint,
          .file = file,
          .filename = filename,
          .violation = cause };
 int violation = 1;
 int result;


 atomic_long_inc(&ima_htable.violations);

 result = ima_alloc_init_template(&event_data, &entry, ((void*)0));
 if (result < 0) {
  result = -ENOMEM;
  goto err_out;
 }
 result = ima_store_template(entry, violation, inode,
        filename, CONFIG_IMA_MEASURE_PCR_IDX);
 if (result < 0)
  ima_free_template_entry(entry);
err_out:
 integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode, filename,
       op, cause, result, 0);
}
