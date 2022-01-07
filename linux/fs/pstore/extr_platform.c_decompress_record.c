
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {int compressed; scalar_t__ type; char* buf; int size; scalar_t__ ecc_notice_size; } ;


 int GFP_KERNEL ;
 scalar_t__ PSTORE_TYPE_DMESG ;
 int big_oops_buf ;
 int big_oops_buf_sz ;
 int crypto_comp_decompress (int ,char*,int,char*,int*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 char* kmemdup (char*,scalar_t__,int ) ;
 int memcpy (char*,char*,scalar_t__) ;
 int pr_err (char*,int) ;
 int pr_warn (char*,...) ;
 int tfm ;

__attribute__((used)) static void decompress_record(struct pstore_record *record)
{
 int ret;
 int unzipped_len;
 char *unzipped, *workspace;

 if (!record->compressed)
  return;


 if (record->type != PSTORE_TYPE_DMESG) {
  pr_warn("ignored compressed record type %d\n", record->type);
  return;
 }


 if (!big_oops_buf) {
  pr_warn("no decompression method initialized!\n");
  return;
 }


 unzipped_len = big_oops_buf_sz;
 workspace = kmalloc(unzipped_len + record->ecc_notice_size,
       GFP_KERNEL);
 if (!workspace)
  return;


 ret = crypto_comp_decompress(tfm, record->buf, record->size,
       workspace, &unzipped_len);
 if (ret) {
  pr_err("crypto_comp_decompress failed, ret = %d!\n", ret);
  kfree(workspace);
  return;
 }


 memcpy(workspace + unzipped_len, record->buf + record->size,
        record->ecc_notice_size);


 unzipped = kmemdup(workspace, unzipped_len + record->ecc_notice_size,
      GFP_KERNEL);
 kfree(workspace);
 if (!unzipped)
  return;


 kfree(record->buf);
 record->buf = unzipped;
 record->size = unzipped_len;
 record->compressed = 0;
}
