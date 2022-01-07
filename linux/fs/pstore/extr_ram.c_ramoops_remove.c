
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bufsize; int buf; } ;
struct ramoops_context {int cprz; int mprz; TYPE_1__ pstore; } ;
struct platform_device {int dummy; } ;


 int kfree (int ) ;
 struct ramoops_context oops_cxt ;
 int persistent_ram_free (int ) ;
 int pstore_unregister (TYPE_1__*) ;
 int ramoops_free_przs (struct ramoops_context*) ;

__attribute__((used)) static int ramoops_remove(struct platform_device *pdev)
{
 struct ramoops_context *cxt = &oops_cxt;

 pstore_unregister(&cxt->pstore);

 kfree(cxt->pstore.buf);
 cxt->pstore.bufsize = 0;

 persistent_ram_free(cxt->mprz);
 persistent_ram_free(cxt->cprz);
 ramoops_free_przs(cxt);

 return 0;
}
