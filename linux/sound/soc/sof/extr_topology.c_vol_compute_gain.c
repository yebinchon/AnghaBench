
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 size_t TLV_MIN ;
 size_t TLV_MUTE ;
 size_t TLV_STEP ;
 int VOLUME_FWL ;
 int VOL_FORTIETH_ROOT_OF_TEN ;
 int VOL_HALF_DB_STEP ;
 int VOL_TWENTIETH_ROOT_OF_TEN ;
 int vol_pow32 (int ,int,int ) ;
 int vol_shift_64 (int,int ) ;

__attribute__((used)) static u32 vol_compute_gain(u32 value, int *tlv)
{
 int dB_gain;
 u32 linear_gain;
 int f_step;


 if (value == 0 && tlv[TLV_MUTE])
  return 0;





 dB_gain = tlv[TLV_MIN] + (value * tlv[TLV_STEP]) / 100;





 linear_gain = vol_pow32(VOL_TWENTIETH_ROOT_OF_TEN, dB_gain, VOLUME_FWL);


 f_step = tlv[TLV_STEP] - (tlv[TLV_STEP] / 100);


 if (f_step == VOL_HALF_DB_STEP && (value & 1))
  linear_gain = vol_shift_64((u64)linear_gain *
        VOL_FORTIETH_ROOT_OF_TEN,
        VOLUME_FWL);

 return linear_gain;
}
