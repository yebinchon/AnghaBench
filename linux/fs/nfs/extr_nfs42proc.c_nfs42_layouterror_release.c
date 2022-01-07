
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs42_layouterror_data {int dummy; } ;


 int nfs42_free_layouterror_data (struct nfs42_layouterror_data*) ;

__attribute__((used)) static void
nfs42_layouterror_release(void *calldata)
{
 struct nfs42_layouterror_data *data = calldata;

 nfs42_free_layouterror_data(data);
}
