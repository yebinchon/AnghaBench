
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_RD_STATUS_2 ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_get_s1_sample_rate(struct hdspm *hdspm, unsigned int idx)
{
 int status = hdspm_read(hdspm, HDSPM_RD_STATUS_2);

 return (status >> (idx*4)) & 0xF;
}
