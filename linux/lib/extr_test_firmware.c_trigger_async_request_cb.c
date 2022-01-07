
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int async_fw_done ;
 int complete (int *) ;
 struct firmware const* test_firmware ;

__attribute__((used)) static void trigger_async_request_cb(const struct firmware *fw, void *context)
{
 test_firmware = fw;
 complete(&async_fw_done);
}
