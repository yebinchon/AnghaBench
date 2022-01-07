
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IMX21_AUDMUX ;
 scalar_t__ audmux_base ;
 scalar_t__ audmux_type ;
 scalar_t__* port_mapping ;
 int writel (unsigned int,scalar_t__) ;

int imx_audmux_v1_configure_port(unsigned int port, unsigned int pcr)
{
 if (audmux_type != IMX21_AUDMUX)
  return -EINVAL;

 if (!audmux_base)
  return -ENOSYS;

 if (port >= ARRAY_SIZE(port_mapping))
  return -EINVAL;

 writel(pcr, audmux_base + port_mapping[port]);

 return 0;
}
