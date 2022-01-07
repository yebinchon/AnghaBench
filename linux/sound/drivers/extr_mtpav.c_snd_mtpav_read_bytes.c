
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav {int dummy; } ;


 int CREG ;
 int SIGC_READ ;
 int SIGS_BYTE ;
 int SIGS_IN0 ;
 int SIGS_IN1 ;
 int SREG ;
 int snd_mtpav_getreg (struct mtpav*,int ) ;
 int snd_mtpav_inmidi_h (struct mtpav*,int) ;
 int snd_mtpav_mputreg (struct mtpav*,int ,int) ;

__attribute__((used)) static void snd_mtpav_read_bytes(struct mtpav *mcrd)
{
 u8 clrread, setread;
 u8 mtp_read_byte;
 u8 sr, cbyt;
 int i;

 u8 sbyt = snd_mtpav_getreg(mcrd, SREG);



 if (!(sbyt & SIGS_BYTE))
  return;

 cbyt = snd_mtpav_getreg(mcrd, CREG);
 clrread = cbyt & (SIGC_READ ^ 0xff);
 setread = cbyt | SIGC_READ;

 do {

  mtp_read_byte = 0;
  for (i = 0; i < 4; i++) {
   snd_mtpav_mputreg(mcrd, CREG, setread);
   sr = snd_mtpav_getreg(mcrd, SREG);
   snd_mtpav_mputreg(mcrd, CREG, clrread);

   sr &= SIGS_IN0 | SIGS_IN1;
   sr >>= 4;
   mtp_read_byte |= sr << (i * 2);
  }

  snd_mtpav_inmidi_h(mcrd, mtp_read_byte);

  sbyt = snd_mtpav_getreg(mcrd, SREG);

 } while (sbyt & SIGS_BYTE);
}
