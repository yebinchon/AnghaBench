
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;


 int HPI_ADAPTER_CLOSE ;
 int HPI_DEBUG_LOG (int ,char*) ;
 int HPI_OBJ_ADAPTER ;
 int VERBOSE ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;

__attribute__((used)) static void adapter_close(struct hpi_message *phm, struct hpi_response *phr)
{
 HPI_DEBUG_LOG(VERBOSE, "adapter_close\n");
 hpi_init_response(phr, HPI_OBJ_ADAPTER, HPI_ADAPTER_CLOSE, 0);
}
