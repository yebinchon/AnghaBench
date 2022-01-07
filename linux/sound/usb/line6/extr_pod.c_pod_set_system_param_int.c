
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char value ;
struct usb_line6_pod {int line6; } ;


 int ENOMEM ;
 int POD_SYSEX_SYSTEM ;
 size_t SYSEX_DATA_OFS ;
 int kfree (char*) ;
 int line6_send_sysex_message (int *,char*,int const) ;
 char* pod_alloc_sysex_buffer (struct usb_line6_pod*,int ,int const) ;

__attribute__((used)) static int pod_set_system_param_int(struct usb_line6_pod *pod, int value,
        int code)
{
 char *sysex;
 static const int size = 5;

 sysex = pod_alloc_sysex_buffer(pod, POD_SYSEX_SYSTEM, size);
 if (!sysex)
  return -ENOMEM;
 sysex[SYSEX_DATA_OFS] = code;
 sysex[SYSEX_DATA_OFS + 1] = (value >> 12) & 0x0f;
 sysex[SYSEX_DATA_OFS + 2] = (value >> 8) & 0x0f;
 sysex[SYSEX_DATA_OFS + 3] = (value >> 4) & 0x0f;
 sysex[SYSEX_DATA_OFS + 4] = (value) & 0x0f;
 line6_send_sysex_message(&pod->line6, sysex, size);
 kfree(sysex);
 return 0;
}
