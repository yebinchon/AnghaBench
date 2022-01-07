
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ io_type; int control_register; } ;


 scalar_t__ AIO ;
 scalar_t__ RayDAT ;
 int hdspm_decode_latency (int ) ;

__attribute__((used)) static int hdspm_get_latency(struct hdspm *hdspm)
{
 int n;

 n = hdspm_decode_latency(hdspm->control_register);
 if ((7 == n) && (RayDAT == hdspm->io_type || AIO == hdspm->io_type))
  n = -1;

 return 1 << (n + 6);
}
