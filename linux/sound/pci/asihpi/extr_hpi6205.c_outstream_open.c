
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;
struct hpi_adapter_obj {int dummy; } ;


 int outstream_reset (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void outstream_open(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 outstream_reset(pao, phm, phr);
}
