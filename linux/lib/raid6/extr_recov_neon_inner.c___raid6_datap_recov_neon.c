
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8x16_t ;
typedef int const uint8_t ;


 int vandq_u8 (int ,int ) ;
 int vdupq_n_u8 (int) ;
 int veorq_u8 (int ,int ) ;
 int vld1q_u8 (int const*) ;
 int vqtbl1q_u8 (int ,int ) ;
 int vshrq_n_u8 (int ,int) ;
 int vst1q_u8 (int const*,int ) ;

void __raid6_datap_recov_neon(int bytes, uint8_t *p, uint8_t *q, uint8_t *dq,
         const uint8_t *qmul)
{
 uint8x16_t qm0 = vld1q_u8(qmul);
 uint8x16_t qm1 = vld1q_u8(qmul + 16);
 uint8x16_t x0f = vdupq_n_u8(0x0f);
 while (bytes) {
  uint8x16_t vx, vy;

  vx = veorq_u8(vld1q_u8(q), vld1q_u8(dq));

  vy = vshrq_n_u8(vx, 4);
  vx = vqtbl1q_u8(qm0, vandq_u8(vx, x0f));
  vy = vqtbl1q_u8(qm1, vy);
  vx = veorq_u8(vx, vy);
  vy = veorq_u8(vx, vld1q_u8(p));

  vst1q_u8(dq, vx);
  vst1q_u8(p, vy);

  bytes -= 16;
  p += 16;
  q += 16;
  dq += 16;
 }
}
