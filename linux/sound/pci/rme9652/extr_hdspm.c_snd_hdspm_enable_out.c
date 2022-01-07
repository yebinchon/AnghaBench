
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 scalar_t__ HDSPM_outputEnableBase ;
 int hdspm_write (struct hdspm*,scalar_t__,int) ;

__attribute__((used)) static inline void snd_hdspm_enable_out(struct hdspm * hdspm, int i, int v)
{
 hdspm_write(hdspm, HDSPM_outputEnableBase + (4 * i), v);
}
