
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int io_type; int firmware_rev; } ;
__attribute__((used)) static int hdsp_input_to_output_key (struct hdsp *hdsp, int in, int out)
{
 switch (hdsp->io_type) {
 case 129:
 case 132:
 case 128:
 default:
  if (hdsp->firmware_rev == 0xa)
   return (64 * out) + in;
  else
   return (52 * out) + in;
 case 131:
  return (32 * out) + in;
 case 130:
  return (52 * out) + in;
 }
}
