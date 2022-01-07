
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {scalar_t__ error; } ;
struct hpi_message {int dummy; } ;
struct hpi_adapter_obj {int dummy; } ;


 int delete_adapter_obj (struct hpi_adapter_obj*) ;
 int hpi_delete_adapter (struct hpi_adapter_obj*) ;

__attribute__((used)) static void adapter_delete(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 delete_adapter_obj(pao);
 hpi_delete_adapter(pao);
 phr->error = 0;
}
