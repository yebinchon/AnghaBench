
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_comp {int dummy; } ;
struct TYPE_4__ {int bufsize; } ;
struct TYPE_3__ {int name; int (* zbufsize ) (int ) ;} ;


 int CONFIG_PSTORE_COMPRESS ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct crypto_comp*) ;
 int PTR_ERR (struct crypto_comp*) ;
 char* big_oops_buf ;
 int big_oops_buf_sz ;
 struct crypto_comp* crypto_alloc_comp (int,int ,int ) ;
 int crypto_has_comp (int,int ,int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int pr_err (char*,int,...) ;
 int pr_info (char*,int) ;
 TYPE_2__* psinfo ;
 int stub1 (int ) ;
 struct crypto_comp* tfm ;
 TYPE_1__* zbackend ;

__attribute__((used)) static void allocate_buf_for_compression(void)
{
 struct crypto_comp *ctx;
 int size;
 char *buf;


 if (!IS_ENABLED(CONFIG_PSTORE_COMPRESS) || !zbackend)
  return;


 if (!psinfo || tfm)
  return;

 if (!crypto_has_comp(zbackend->name, 0, 0)) {
  pr_err("Unknown compression: %s\n", zbackend->name);
  return;
 }

 size = zbackend->zbufsize(psinfo->bufsize);
 if (size <= 0) {
  pr_err("Invalid compression size for %s: %d\n",
         zbackend->name, size);
  return;
 }

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf) {
  pr_err("Failed %d byte compression buffer allocation for: %s\n",
         size, zbackend->name);
  return;
 }

 ctx = crypto_alloc_comp(zbackend->name, 0, 0);
 if (IS_ERR_OR_NULL(ctx)) {
  kfree(buf);
  pr_err("crypto_alloc_comp('%s') failed: %ld\n", zbackend->name,
         PTR_ERR(ctx));
  return;
 }


 tfm = ctx;
 big_oops_buf_sz = size;
 big_oops_buf = buf;

 pr_info("Using crash dump compression: %s\n", zbackend->name);
}
