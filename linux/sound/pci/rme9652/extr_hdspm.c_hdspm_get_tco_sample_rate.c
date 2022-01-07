
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; scalar_t__ tco; } ;




 int HDSPM_RD_STATUS_1 ;
 int HDSPM_statusRegister ;

 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_get_tco_sample_rate(struct hdspm *hdspm)
{
 int status;

 if (hdspm->tco) {
  switch (hdspm->io_type) {
  case 128:
  case 129:
   status = hdspm_read(hdspm, HDSPM_RD_STATUS_1);
   return (status >> 20) & 0xF;
   break;
  case 130:
   status = hdspm_read(hdspm, HDSPM_statusRegister);
   return (status >> 1) & 0xF;
  default:
   break;
  }
 }

 return 0;
}
