
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_createdata {int label; } ;


 int kfree (struct nfs4_createdata*) ;
 int nfs4_label_free (int ) ;

__attribute__((used)) static void nfs4_free_createdata(struct nfs4_createdata *data)
{
 nfs4_label_free(data->label);
 kfree(data);
}
