
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_tagged_data {int data; } ;


 int kfree (int ) ;

__attribute__((used)) static void rxrpc_free_krb5_tagged(struct krb5_tagged_data *td)
{
 kfree(td->data);
}
