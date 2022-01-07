
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int dummy; } ;


 scalar_t__ HDSPM_RD_TCO ;
 int hdspm_read (struct hdspm*,scalar_t__) ;

__attribute__((used)) static int hdspm_tco_input_check(struct hdspm *hdspm, u32 mask)
{
 u32 status;
 status = hdspm_read(hdspm, HDSPM_RD_TCO + 4);

 return (status & mask) ? 1 : 0;
}
