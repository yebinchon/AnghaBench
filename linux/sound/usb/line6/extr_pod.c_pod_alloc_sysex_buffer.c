
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int line6; } ;


 int POD_SYSEX_CODE ;
 char* line6_alloc_sysex_buffer (int *,int ,int,int) ;

__attribute__((used)) static char *pod_alloc_sysex_buffer(struct usb_line6_pod *pod, int code,
        int size)
{
 return line6_alloc_sysex_buffer(&pod->line6, POD_SYSEX_CODE, code,
     size);
}
