
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kexec_crash_image ;

int kexec_crash_loaded(void)
{
 return !!kexec_crash_image;
}
