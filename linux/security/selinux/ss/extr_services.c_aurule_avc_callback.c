
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AVC_CALLBACK_RESET ;
 int aurule_callback () ;

__attribute__((used)) static int aurule_avc_callback(u32 event)
{
 int err = 0;

 if (event == AVC_CALLBACK_RESET && aurule_callback)
  err = aurule_callback();
 return err;
}
