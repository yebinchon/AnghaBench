
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int main(void)
{

 asm volatile("rdtsc");



 asm volatile("vcvtph2ps %xmm3,%ymm5");





 asm volatile("cmovno %rax,%rbx");
 asm volatile("cmovno 0x12345678(%rax),%rcx");
 asm volatile("cmovno 0x12345678(%rax),%cx");

 asm volatile("cmove  %rax,%rbx");
 asm volatile("cmove 0x12345678(%rax),%rcx");
 asm volatile("cmove 0x12345678(%rax),%cx");

 asm volatile("seto    0x12345678(%rax)");
 asm volatile("setno   0x12345678(%rax)");
 asm volatile("setb    0x12345678(%rax)");
 asm volatile("setc    0x12345678(%rax)");
 asm volatile("setnae  0x12345678(%rax)");
 asm volatile("setae   0x12345678(%rax)");
 asm volatile("setnb   0x12345678(%rax)");
 asm volatile("setnc   0x12345678(%rax)");
 asm volatile("sets    0x12345678(%rax)");
 asm volatile("setns   0x12345678(%rax)");



 asm volatile("kandw  %k7,%k6,%k5");
 asm volatile("kandq  %k7,%k6,%k5");
 asm volatile("kandb  %k7,%k6,%k5");
 asm volatile("kandd  %k7,%k6,%k5");

 asm volatile("kandnw  %k7,%k6,%k5");
 asm volatile("kandnq  %k7,%k6,%k5");
 asm volatile("kandnb  %k7,%k6,%k5");
 asm volatile("kandnd  %k7,%k6,%k5");

 asm volatile("knotw  %k7,%k6");
 asm volatile("knotq  %k7,%k6");
 asm volatile("knotb  %k7,%k6");
 asm volatile("knotd  %k7,%k6");

 asm volatile("korw  %k7,%k6,%k5");
 asm volatile("korq  %k7,%k6,%k5");
 asm volatile("korb  %k7,%k6,%k5");
 asm volatile("kord  %k7,%k6,%k5");

 asm volatile("kxnorw  %k7,%k6,%k5");
 asm volatile("kxnorq  %k7,%k6,%k5");
 asm volatile("kxnorb  %k7,%k6,%k5");
 asm volatile("kxnord  %k7,%k6,%k5");

 asm volatile("kxorw  %k7,%k6,%k5");
 asm volatile("kxorq  %k7,%k6,%k5");
 asm volatile("kxorb  %k7,%k6,%k5");
 asm volatile("kxord  %k7,%k6,%k5");

 asm volatile("kaddw  %k7,%k6,%k5");
 asm volatile("kaddq  %k7,%k6,%k5");
 asm volatile("kaddb  %k7,%k6,%k5");
 asm volatile("kaddd  %k7,%k6,%k5");

 asm volatile("kunpckbw %k7,%k6,%k5");
 asm volatile("kunpckwd %k7,%k6,%k5");
 asm volatile("kunpckdq %k7,%k6,%k5");

 asm volatile("kmovw  %k6,%k5");
 asm volatile("kmovw  (%rcx),%k5");
 asm volatile("kmovw  0x123(%rax,%r14,8),%k5");
 asm volatile("kmovw  %k5,(%rcx)");
 asm volatile("kmovw  %k5,0x123(%rax,%r14,8)");
 asm volatile("kmovw  %eax,%k5");
 asm volatile("kmovw  %ebp,%k5");
 asm volatile("kmovw  %r13d,%k5");
 asm volatile("kmovw  %k5,%eax");
 asm volatile("kmovw  %k5,%ebp");
 asm volatile("kmovw  %k5,%r13d");

 asm volatile("kmovq  %k6,%k5");
 asm volatile("kmovq  (%rcx),%k5");
 asm volatile("kmovq  0x123(%rax,%r14,8),%k5");
 asm volatile("kmovq  %k5,(%rcx)");
 asm volatile("kmovq  %k5,0x123(%rax,%r14,8)");
 asm volatile("kmovq  %rax,%k5");
 asm volatile("kmovq  %rbp,%k5");
 asm volatile("kmovq  %r13,%k5");
 asm volatile("kmovq  %k5,%rax");
 asm volatile("kmovq  %k5,%rbp");
 asm volatile("kmovq  %k5,%r13");

 asm volatile("kmovb  %k6,%k5");
 asm volatile("kmovb  (%rcx),%k5");
 asm volatile("kmovb  0x123(%rax,%r14,8),%k5");
 asm volatile("kmovb  %k5,(%rcx)");
 asm volatile("kmovb  %k5,0x123(%rax,%r14,8)");
 asm volatile("kmovb  %eax,%k5");
 asm volatile("kmovb  %ebp,%k5");
 asm volatile("kmovb  %r13d,%k5");
 asm volatile("kmovb  %k5,%eax");
 asm volatile("kmovb  %k5,%ebp");
 asm volatile("kmovb  %k5,%r13d");

 asm volatile("kmovd  %k6,%k5");
 asm volatile("kmovd  (%rcx),%k5");
 asm volatile("kmovd  0x123(%rax,%r14,8),%k5");
 asm volatile("kmovd  %k5,(%rcx)");
 asm volatile("kmovd  %k5,0x123(%rax,%r14,8)");
 asm volatile("kmovd  %eax,%k5");
 asm volatile("kmovd  %ebp,%k5");
 asm volatile("kmovd  %r13d,%k5");
 asm volatile("kmovd  %k5,%eax");
 asm volatile("kmovd  %k5,%ebp");
 asm volatile("kmovd %k5,%r13d");

 asm volatile("kortestw %k6,%k5");
 asm volatile("kortestq %k6,%k5");
 asm volatile("kortestb %k6,%k5");
 asm volatile("kortestd %k6,%k5");

 asm volatile("ktestw %k6,%k5");
 asm volatile("ktestq %k6,%k5");
 asm volatile("ktestb %k6,%k5");
 asm volatile("ktestd %k6,%k5");

 asm volatile("kshiftrw $0x12,%k6,%k5");
 asm volatile("kshiftrq $0x5b,%k6,%k5");
 asm volatile("kshiftlw $0x12,%k6,%k5");
 asm volatile("kshiftlq $0x5b,%k6,%k5");


 asm volatile("vcvtdq2ps %xmm5,%xmm6");
 asm volatile("vcvtqq2ps %zmm29,%ymm6{%k7}");
 asm volatile("vcvtps2dq %xmm5,%xmm6");
 asm volatile("vcvttps2dq %xmm5,%xmm6");



 asm volatile("movq   %mm0,%mm4");
 asm volatile("vmovdqa %ymm4,%ymm6");
 asm volatile("vmovdqa32 %zmm25,%zmm26");
 asm volatile("vmovdqa64 %zmm25,%zmm26");
 asm volatile("vmovdqu %ymm4,%ymm6");
 asm volatile("vmovdqu32 %zmm29,%zmm30");
 asm volatile("vmovdqu64 %zmm25,%zmm26");
 asm volatile("vmovdqu8 %zmm29,%zmm30");
 asm volatile("vmovdqu16 %zmm25,%zmm26");



 asm volatile("vmread %rax,%rbx");
 asm volatile("vcvttps2udq %zmm25,%zmm26");
 asm volatile("vcvttpd2udq %zmm29,%ymm6{%k7}");
 asm volatile("vcvttsd2usi %xmm6,%rax");
 asm volatile("vcvttss2usi %xmm6,%rax");
 asm volatile("vcvttps2uqq %ymm5,%zmm26{%k7}");
 asm volatile("vcvttpd2uqq %zmm29,%zmm30");



 asm volatile("vmwrite %rax,%rbx");
 asm volatile("vcvtps2udq %zmm25,%zmm26");
 asm volatile("vcvtpd2udq %zmm29,%ymm6{%k7}");
 asm volatile("vcvtsd2usi %xmm6,%rax");
 asm volatile("vcvtss2usi %xmm6,%rax");
 asm volatile("vcvtps2uqq %ymm5,%zmm26{%k7}");
 asm volatile("vcvtpd2uqq %zmm29,%zmm30");



 asm volatile("vcvtudq2pd %ymm5,%zmm29{%k7}");
 asm volatile("vcvtuqq2pd %zmm25,%zmm26");
 asm volatile("vcvtudq2ps %zmm29,%zmm30");
 asm volatile("vcvtuqq2ps %zmm25,%ymm26{%k7}");
 asm volatile("vcvttps2qq %ymm25,%zmm26{%k7}");
 asm volatile("vcvttpd2qq %zmm29,%zmm30");



 asm volatile("vcvtusi2sd %eax,%xmm5,%xmm6");
 asm volatile("vcvtusi2ss %eax,%xmm5,%xmm6");
 asm volatile("vcvtps2qq %ymm5,%zmm26{%k7}");
 asm volatile("vcvtpd2qq %zmm29,%zmm30");



 asm volatile("movq.s  %mm0,%mm4");
 asm volatile("vmovdqa %ymm8,%ymm6");
 asm volatile("vmovdqa32.s %zmm25,%zmm26");
 asm volatile("vmovdqa64.s %zmm25,%zmm26");
 asm volatile("vmovdqu %ymm8,%ymm6");
 asm volatile("vmovdqu32.s %zmm25,%zmm26");
 asm volatile("vmovdqu64.s %zmm25,%zmm26");
 asm volatile("vmovdqu8.s %zmm30,(%rcx)");
 asm volatile("vmovdqu16.s %zmm25,%zmm26");



 asm volatile("pand  %mm1,%mm2");
 asm volatile("pand  %xmm1,%xmm2");
 asm volatile("vpand  %ymm4,%ymm6,%ymm2");
 asm volatile("vpandd %zmm24,%zmm25,%zmm26");
 asm volatile("vpandq %zmm24,%zmm25,%zmm26");



 asm volatile("pandn  %mm1,%mm2");
 asm volatile("pandn  %xmm1,%xmm2");
 asm volatile("vpandn %ymm4,%ymm6,%ymm2");
 asm volatile("vpandnd %zmm24,%zmm25,%zmm26");
 asm volatile("vpandnq %zmm24,%zmm25,%zmm26");



 asm volatile("vcvttpd2dq %xmm1,%xmm2");
 asm volatile("vcvtdq2pd %xmm5,%xmm6");
 asm volatile("vcvtdq2pd %ymm5,%zmm26{%k7}");
 asm volatile("vcvtqq2pd %zmm25,%zmm26");
 asm volatile("vcvtpd2dq %xmm1,%xmm2");



 asm volatile("por   %mm4,%mm6");
 asm volatile("vpor   %ymm4,%ymm6,%ymm2");
 asm volatile("vpord  %zmm24,%zmm25,%zmm26");
 asm volatile("vporq  %zmm24,%zmm25,%zmm26");



 asm volatile("pxor   %mm4,%mm6");
 asm volatile("vpxor  %ymm4,%ymm6,%ymm2");
 asm volatile("vpxord %zmm24,%zmm25,%zmm26");
 asm volatile("vpxorq %zmm24,%zmm25,%zmm26");



 asm volatile("pblendvb %xmm1,%xmm0");
 asm volatile("vpsrlvw %zmm27,%zmm28,%zmm29");
 asm volatile("vpmovuswb %zmm28,%ymm6{%k7}");



 asm volatile("vpmovusdb %zmm28,%xmm6{%k7}");
 asm volatile("vpsravw %zmm27,%zmm28,%zmm29");



 asm volatile("vpmovusqb %zmm27,%xmm6{%k7}");
 asm volatile("vpsllvw %zmm27,%zmm28,%zmm29");



 asm volatile("vcvtph2ps %xmm3,%ymm5");
 asm volatile("vcvtph2ps %ymm5,%zmm27{%k7}");
 asm volatile("vpmovusdw %zmm27,%ymm6{%k7}");



 asm volatile("blendvps %xmm1,%xmm0");
 asm volatile("vpmovusqw %zmm27,%xmm6{%k7}");
 asm volatile("vprorvd %zmm27,%zmm28,%zmm29");
 asm volatile("vprorvq %zmm27,%zmm28,%zmm29");



 asm volatile("blendvpd %xmm1,%xmm0");
 asm volatile("vpmovusqd %zmm27,%ymm6{%k7}");
 asm volatile("vprolvd %zmm27,%zmm28,%zmm29");
 asm volatile("vprolvq %zmm27,%zmm28,%zmm29");



 asm volatile("vpermps %ymm4,%ymm6,%ymm2");
 asm volatile("vpermps %ymm24,%ymm26,%ymm22{%k7}");
 asm volatile("vpermpd %ymm24,%ymm26,%ymm22{%k7}");



 asm volatile("vbroadcastsd %xmm4,%ymm6");
 asm volatile("vbroadcastf32x2 %xmm27,%zmm26");



 asm volatile("vbroadcastf128 (%rcx),%ymm4");
 asm volatile("vbroadcastf32x4 (%rcx),%zmm26");
 asm volatile("vbroadcastf64x2 (%rcx),%zmm26");



 asm volatile("vbroadcastf32x8 (%rcx),%zmm27");
 asm volatile("vbroadcastf64x4 (%rcx),%zmm26");



 asm volatile("vpabsq %zmm27,%zmm28");



 asm volatile("vpmovsxbw %xmm4,%xmm5");
 asm volatile("vpmovswb %zmm27,%ymm6{%k7}");



 asm volatile("vpmovsxbd %xmm4,%ymm6");
 asm volatile("vpmovsdb %zmm27,%xmm6{%k7}");



 asm volatile("vpmovsxbq %xmm4,%ymm4");
 asm volatile("vpmovsqb %zmm27,%xmm6{%k7}");



 asm volatile("vpmovsxwd %xmm4,%ymm4");
 asm volatile("vpmovsdw %zmm27,%ymm6{%k7}");



 asm volatile("vpmovsxwq %xmm4,%ymm6");
 asm volatile("vpmovsqw %zmm27,%xmm6{%k7}");



 asm volatile("vpmovsxdq %xmm4,%ymm4");
 asm volatile("vpmovsqd %zmm27,%ymm6{%k7}");



 asm volatile("vptestmb %zmm27,%zmm28,%k5");
 asm volatile("vptestmw %zmm27,%zmm28,%k5");
 asm volatile("vptestnmb %zmm26,%zmm27,%k5");
 asm volatile("vptestnmw %zmm26,%zmm27,%k5");



 asm volatile("vptestmd %zmm27,%zmm28,%k5");
 asm volatile("vptestmq %zmm27,%zmm28,%k5");
 asm volatile("vptestnmd %zmm26,%zmm27,%k5");
 asm volatile("vptestnmq %zmm26,%zmm27,%k5");



 asm volatile("vpmuldq %ymm4,%ymm6,%ymm2");
 asm volatile("vpmovm2b %k5,%zmm28");
 asm volatile("vpmovm2w %k5,%zmm28");



 asm volatile("vpcmpeqq %ymm4,%ymm6,%ymm2");
 asm volatile("vpmovb2m %zmm28,%k5");
 asm volatile("vpmovw2m %zmm28,%k5");



 asm volatile("vmovntdqa (%rcx),%ymm4");
 asm volatile("vpbroadcastmb2q %k6,%zmm30");



 asm volatile("vmaskmovps (%rcx),%ymm4,%ymm6");
 asm volatile("vscalefps %zmm24,%zmm25,%zmm26");
 asm volatile("vscalefpd %zmm24,%zmm25,%zmm26");



 asm volatile("vmaskmovpd (%rcx),%ymm4,%ymm6");
 asm volatile("vscalefss %xmm24,%xmm25,%xmm26{%k7}");
 asm volatile("vscalefsd %xmm24,%xmm25,%xmm26{%k7}");



 asm volatile("vpmovzxbw %xmm4,%ymm4");
 asm volatile("vpmovwb %zmm27,%ymm6{%k7}");



 asm volatile("vpmovzxbd %xmm4,%ymm6");
 asm volatile("vpmovdb %zmm27,%xmm6{%k7}");



 asm volatile("vpmovzxbq %xmm4,%ymm4");
 asm volatile("vpmovqb %zmm27,%xmm6{%k7}");



 asm volatile("vpmovzxwd %xmm4,%ymm4");
 asm volatile("vpmovdw %zmm27,%ymm6{%k7}");



 asm volatile("vpmovzxwq %xmm4,%ymm6");
 asm volatile("vpmovqw %zmm27,%xmm6{%k7}");



 asm volatile("vpmovzxdq %xmm4,%ymm4");
 asm volatile("vpmovqd %zmm27,%ymm6{%k7}");



 asm volatile("vpermd %ymm4,%ymm6,%ymm2");
 asm volatile("vpermd %ymm24,%ymm26,%ymm22{%k7}");
 asm volatile("vpermq %ymm24,%ymm26,%ymm22{%k7}");



 asm volatile("vpminsb %ymm4,%ymm6,%ymm2");
 asm volatile("vpmovm2d %k5,%zmm28");
 asm volatile("vpmovm2q %k5,%zmm28");



 asm volatile("vpminsd %xmm1,%xmm2,%xmm3");
 asm volatile("vpminsd %zmm24,%zmm25,%zmm26");
 asm volatile("vpminsq %zmm24,%zmm25,%zmm26");
 asm volatile("vpmovd2m %zmm28,%k5");
 asm volatile("vpmovq2m %zmm28,%k5");



 asm volatile("vpminuw %ymm4,%ymm6,%ymm2");
 asm volatile("vpbroadcastmw2d %k6,%zmm28");



 asm volatile("vpminud %ymm4,%ymm6,%ymm2");
 asm volatile("vpminud %zmm24,%zmm25,%zmm26");
 asm volatile("vpminuq %zmm24,%zmm25,%zmm26");



 asm volatile("vpmaxsd %ymm4,%ymm6,%ymm2");
 asm volatile("vpmaxsd %zmm24,%zmm25,%zmm26");
 asm volatile("vpmaxsq %zmm24,%zmm25,%zmm26");



 asm volatile("vpmaxud %ymm4,%ymm6,%ymm2");
 asm volatile("vpmaxud %zmm24,%zmm25,%zmm26");
 asm volatile("vpmaxuq %zmm24,%zmm25,%zmm26");



 asm volatile("vpmulld %ymm4,%ymm6,%ymm2");
 asm volatile("vpmulld %zmm24,%zmm25,%zmm26");
 asm volatile("vpmullq %zmm24,%zmm25,%zmm26");



 asm volatile("vgetexpps %zmm25,%zmm26");
 asm volatile("vgetexppd %zmm27,%zmm28");



 asm volatile("vgetexpss %xmm24,%xmm25,%xmm26{%k7}");
 asm volatile("vgetexpsd %xmm28,%xmm29,%xmm30{%k7}");



 asm volatile("vplzcntd %zmm27,%zmm28");
 asm volatile("vplzcntq %zmm27,%zmm28");



 asm volatile("vpsravd %ymm4,%ymm6,%ymm2");
 asm volatile("vpsravd %zmm24,%zmm25,%zmm26");
 asm volatile("vpsravq %zmm24,%zmm25,%zmm26");



 asm volatile("vrcp14ps %zmm25,%zmm26");
 asm volatile("vrcp14pd %zmm27,%zmm28");



 asm volatile("vrcp14ss %xmm24,%xmm25,%xmm26{%k7}");
 asm volatile("vrcp14sd %xmm24,%xmm25,%xmm26{%k7}");



 asm volatile("vrsqrt14ps %zmm25,%zmm26");
 asm volatile("vrsqrt14pd %zmm27,%zmm28");



 asm volatile("vrsqrt14ss %xmm24,%xmm25,%xmm26{%k7}");
 asm volatile("vrsqrt14sd %xmm24,%xmm25,%xmm26{%k7}");



 asm volatile("vpbroadcastq %xmm4,%xmm6");
 asm volatile("vbroadcasti32x2 %xmm27,%zmm26");



 asm volatile("vbroadcasti128 (%rcx),%ymm4");
 asm volatile("vbroadcasti32x4 (%rcx),%zmm26");
 asm volatile("vbroadcasti64x2 (%rcx),%zmm26");



 asm volatile("vbroadcasti32x8 (%rcx),%zmm28");
 asm volatile("vbroadcasti64x4 (%rcx),%zmm26");



 asm volatile("vpblendmd %zmm26,%zmm27,%zmm28");
 asm volatile("vpblendmq %zmm26,%zmm27,%zmm28");



 asm volatile("vblendmps %zmm24,%zmm25,%zmm26");
 asm volatile("vblendmpd %zmm26,%zmm27,%zmm28");



 asm volatile("vpblendmb %zmm26,%zmm27,%zmm28");
 asm volatile("vpblendmw %zmm26,%zmm27,%zmm28");



 asm volatile("vpermi2b %zmm24,%zmm25,%zmm26");
 asm volatile("vpermi2w %zmm26,%zmm27,%zmm28");



 asm volatile("vpermi2d %zmm26,%zmm27,%zmm28");
 asm volatile("vpermi2q %zmm26,%zmm27,%zmm28");



 asm volatile("vpermi2ps %zmm26,%zmm27,%zmm28");
 asm volatile("vpermi2pd %zmm26,%zmm27,%zmm28");



 asm volatile("vpbroadcastb %eax,%xmm30");



 asm volatile("vpbroadcastw %eax,%xmm30");



 asm volatile("vpbroadcastd %eax,%xmm30");
 asm volatile("vpbroadcastq %rax,%zmm30");



 asm volatile("vpermt2b %zmm26,%zmm27,%zmm28");
 asm volatile("vpermt2w %zmm26,%zmm27,%zmm28");



 asm volatile("vpermt2d %zmm26,%zmm27,%zmm28");
 asm volatile("vpermt2q %zmm26,%zmm27,%zmm28");



 asm volatile("vpermt2ps %zmm26,%zmm27,%zmm28");
 asm volatile("vpermt2pd %zmm26,%zmm27,%zmm28");



 asm volatile("vpmultishiftqb %zmm26,%zmm27,%zmm28");



 asm volatile("vexpandps (%rcx),%zmm26");
 asm volatile("vexpandpd (%rcx),%zmm28");



 asm volatile("vpexpandd (%rcx),%zmm28");
 asm volatile("vpexpandq (%rcx),%zmm26");



 asm volatile("vcompressps %zmm28,(%rcx)");
 asm volatile("vcompresspd %zmm28,(%rcx)");



 asm volatile("vpcompressd %zmm28,(%rcx)");
 asm volatile("vpcompressq %zmm26,(%rcx)");



 asm volatile("vpermb %zmm26,%zmm27,%zmm28");
 asm volatile("vpermw %zmm26,%zmm27,%zmm28");



 asm volatile("vpgatherdd %xmm2,0x02(%rbp,%xmm7,2),%xmm1");
 asm volatile("vpgatherdq %xmm2,0x04(%rbp,%xmm7,2),%xmm1");
 asm volatile("vpgatherdd 0x7b(%rbp,%zmm27,8),%zmm26{%k1}");
 asm volatile("vpgatherdq 0x7b(%rbp,%ymm27,8),%zmm26{%k1}");



 asm volatile("vpgatherqd %xmm2,0x02(%rbp,%xmm7,2),%xmm1");
 asm volatile("vpgatherqq %xmm2,0x02(%rbp,%xmm7,2),%xmm1");
 asm volatile("vpgatherqd 0x7b(%rbp,%zmm27,8),%ymm26{%k1}");
 asm volatile("vpgatherqq 0x7b(%rbp,%zmm27,8),%zmm26{%k1}");



 asm volatile("vpscatterdd %zmm28,0x7b(%rbp,%zmm29,8){%k1}");
 asm volatile("vpscatterdq %zmm26,0x7b(%rbp,%ymm27,8){%k1}");



 asm volatile("vpscatterqd %ymm6,0x7b(%rbp,%zmm29,8){%k1}");
 asm volatile("vpscatterqq %ymm6,0x7b(%rbp,%ymm27,8){%k1}");



 asm volatile("vscatterdps %zmm28,0x7b(%rbp,%zmm29,8){%k1}");
 asm volatile("vscatterdpd %zmm28,0x7b(%rbp,%ymm27,8){%k1}");



 asm volatile("vscatterqps %ymm6,0x7b(%rbp,%zmm29,8){%k1}");
 asm volatile("vscatterqpd %zmm28,0x7b(%rbp,%zmm29,8){%k1}");



 asm volatile("vpmadd52luq %zmm26,%zmm27,%zmm28");



 asm volatile("vpmadd52huq %zmm26,%zmm27,%zmm28");



 asm volatile("vpconflictd %zmm26,%zmm27");
 asm volatile("vpconflictq %zmm26,%zmm27");



 asm volatile("vexp2ps %zmm29,%zmm30");
 asm volatile("vexp2pd %zmm26,%zmm27");



 asm volatile("vrcp28ps %zmm29,%zmm30");
 asm volatile("vrcp28pd %zmm26,%zmm27");



 asm volatile("vrcp28ss %xmm28,%xmm29,%xmm30{%k7}");
 asm volatile("vrcp28sd %xmm25,%xmm26,%xmm27{%k7}");



 asm volatile("vrsqrt28ps %zmm29,%zmm30");
 asm volatile("vrsqrt28pd %zmm26,%zmm27");



 asm volatile("vrsqrt28ss %xmm28,%xmm29,%xmm30{%k7}");
 asm volatile("vrsqrt28sd %xmm25,%xmm26,%xmm27{%k7}");



 asm volatile("valignd $0x12,%zmm28,%zmm29,%zmm30");
 asm volatile("valignq $0x12,%zmm25,%zmm26,%zmm27");



 asm volatile("vroundps $0x5,%ymm6,%ymm2");
 asm volatile("vrndscaleps $0x12,%zmm25,%zmm26");



 asm volatile("vroundpd $0x5,%ymm6,%ymm2");
 asm volatile("vrndscalepd $0x12,%zmm25,%zmm26");



 asm volatile("vroundss $0x5,%xmm4,%xmm6,%xmm2");
 asm volatile("vrndscaless $0x12,%xmm24,%xmm25,%xmm26{%k7}");



 asm volatile("vroundsd $0x5,%xmm4,%xmm6,%xmm2");
 asm volatile("vrndscalesd $0x12,%xmm24,%xmm25,%xmm26{%k7}");



 asm volatile("vinsertf128 $0x5,%xmm4,%ymm4,%ymm6");
 asm volatile("vinsertf32x4 $0x12,%xmm24,%zmm25,%zmm26{%k7}");
 asm volatile("vinsertf64x2 $0x12,%xmm24,%zmm25,%zmm26{%k7}");



 asm volatile("vextractf128 $0x5,%ymm4,%xmm4");
 asm volatile("vextractf32x4 $0x12,%zmm25,%xmm26{%k7}");
 asm volatile("vextractf64x2 $0x12,%zmm25,%xmm26{%k7}");



 asm volatile("vinsertf32x8 $0x12,%ymm25,%zmm26,%zmm27{%k7}");
 asm volatile("vinsertf64x4 $0x12,%ymm28,%zmm29,%zmm30{%k7}");



 asm volatile("vextractf32x8 $0x12,%zmm29,%ymm30{%k7}");
 asm volatile("vextractf64x4 $0x12,%zmm26,%ymm27{%k7}");



 asm volatile("vpcmpud $0x12,%zmm29,%zmm30,%k5");
 asm volatile("vpcmpuq $0x12,%zmm26,%zmm27,%k5");



 asm volatile("vpcmpd $0x12,%zmm29,%zmm30,%k5");
 asm volatile("vpcmpq $0x12,%zmm26,%zmm27,%k5");



 asm volatile("vshuff32x4 $0x12,%zmm28,%zmm29,%zmm30");
 asm volatile("vshuff64x2 $0x12,%zmm25,%zmm26,%zmm27");



 asm volatile("vpternlogd $0x12,%zmm28,%zmm29,%zmm30");
 asm volatile("vpternlogq $0x12,%zmm28,%zmm29,%zmm30");



 asm volatile("vgetmantps $0x12,%zmm26,%zmm27");
 asm volatile("vgetmantpd $0x12,%zmm29,%zmm30");



 asm volatile("vgetmantss $0x12,%xmm25,%xmm26,%xmm27{%k7}");
 asm volatile("vgetmantsd $0x12,%xmm28,%xmm29,%xmm30{%k7}");



 asm volatile("vinserti128 $0x5,%xmm4,%ymm4,%ymm6");
 asm volatile("vinserti32x4 $0x12,%xmm24,%zmm25,%zmm26{%k7}");
 asm volatile("vinserti64x2 $0x12,%xmm24,%zmm25,%zmm26{%k7}");



 asm volatile("vextracti128 $0x5,%ymm4,%xmm6");
 asm volatile("vextracti32x4 $0x12,%zmm25,%xmm26{%k7}");
 asm volatile("vextracti64x2 $0x12,%zmm25,%xmm26{%k7}");



 asm volatile("vinserti32x8 $0x12,%ymm28,%zmm29,%zmm30{%k7}");
 asm volatile("vinserti64x4 $0x12,%ymm25,%zmm26,%zmm27{%k7}");



 asm volatile("vextracti32x8 $0x12,%zmm29,%ymm30{%k7}");
 asm volatile("vextracti64x4 $0x12,%zmm26,%ymm27{%k7}");



 asm volatile("vpcmpub $0x12,%zmm29,%zmm30,%k5");
 asm volatile("vpcmpuw $0x12,%zmm26,%zmm27,%k5");



 asm volatile("vpcmpb $0x12,%zmm29,%zmm30,%k5");
 asm volatile("vpcmpw $0x12,%zmm26,%zmm27,%k5");



 asm volatile("vmpsadbw $0x5,%ymm4,%ymm6,%ymm2");
 asm volatile("vdbpsadbw $0x12,%zmm4,%zmm5,%zmm6");



 asm volatile("vshufi32x4 $0x12,%zmm25,%zmm26,%zmm27");
 asm volatile("vshufi64x2 $0x12,%zmm28,%zmm29,%zmm30");



 asm volatile("vrangeps $0x12,%zmm25,%zmm26,%zmm27");
 asm volatile("vrangepd $0x12,%zmm28,%zmm29,%zmm30");



 asm volatile("vrangess $0x12,%xmm25,%xmm26,%xmm27");
 asm volatile("vrangesd $0x12,%xmm28,%xmm29,%xmm30");



 asm volatile("vfixupimmps $0x12,%zmm28,%zmm29,%zmm30");
 asm volatile("vfixupimmpd $0x12,%zmm25,%zmm26,%zmm27");



 asm volatile("vfixupimmss $0x12,%xmm28,%xmm29,%xmm30{%k7}");
 asm volatile("vfixupimmsd $0x12,%xmm25,%xmm26,%xmm27{%k7}");



 asm volatile("vreduceps $0x12,%zmm26,%zmm27");
 asm volatile("vreducepd $0x12,%zmm29,%zmm30");



 asm volatile("vreducess $0x12,%xmm25,%xmm26,%xmm27");
 asm volatile("vreducesd $0x12,%xmm28,%xmm29,%xmm30");



 asm volatile("vfpclassps $0x12,%zmm27,%k5");
 asm volatile("vfpclasspd $0x12,%zmm30,%k5");



 asm volatile("vfpclassss $0x12,%xmm27,%k5");
 asm volatile("vfpclasssd $0x12,%xmm30,%k5");



 asm volatile("vprord $0x12,%zmm25,%zmm26");
 asm volatile("vprorq $0x12,%zmm25,%zmm26");
 asm volatile("vprold $0x12,%zmm29,%zmm30");
 asm volatile("vprolq $0x12,%zmm29,%zmm30");
 asm volatile("psrad  $0x2,%mm6");
 asm volatile("vpsrad $0x5,%ymm6,%ymm2");
 asm volatile("vpsrad $0x5,%zmm26,%zmm22");
 asm volatile("vpsraq $0x5,%zmm26,%zmm22");



 asm volatile("vgatherpf0dps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vgatherpf0dpd 0x7b(%r14,%ymm31,8){%k1}");
 asm volatile("vgatherpf1dps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vgatherpf1dpd 0x7b(%r14,%ymm31,8){%k1}");
 asm volatile("vscatterpf0dps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf0dpd 0x7b(%r14,%ymm31,8){%k1}");
 asm volatile("vscatterpf1dps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf1dpd 0x7b(%r14,%ymm31,8){%k1}");



 asm volatile("vgatherpf0qps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vgatherpf0qpd 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vgatherpf1qps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vgatherpf1qpd 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf0qps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf0qpd 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf1qps 0x7b(%r14,%zmm31,8){%k1}");
 asm volatile("vscatterpf1qpd 0x7b(%r14,%zmm31,8){%k1}");



 asm volatile("vaddpd %zmm28,%zmm29,%zmm30");
 asm volatile("vaddpd %zmm28,%zmm29,%zmm30{%k7}");
 asm volatile("vaddpd %zmm28,%zmm29,%zmm30{%k7}{z}");
 asm volatile("vaddpd {rn-sae},%zmm28,%zmm29,%zmm30");
 asm volatile("vaddpd {ru-sae},%zmm28,%zmm29,%zmm30");
 asm volatile("vaddpd {rd-sae},%zmm28,%zmm29,%zmm30");
 asm volatile("vaddpd {rz-sae},%zmm28,%zmm29,%zmm30");
 asm volatile("vaddpd (%rcx),%zmm29,%zmm30");
 asm volatile("vaddpd 0x123(%rax,%r14,8),%zmm29,%zmm30");
 asm volatile("vaddpd (%rcx){1to8},%zmm29,%zmm30");
 asm volatile("vaddpd 0x1fc0(%rdx),%zmm29,%zmm30");
 asm volatile("vaddpd 0x3f8(%rdx){1to8},%zmm29,%zmm30");
 asm volatile("vcmpeq_uqps 0x1fc(%rdx){1to16},%zmm30,%k5");
 asm volatile("vcmpltsd 0x123(%rax,%r14,8),%xmm29,%k5{%k7}");
 asm volatile("vcmplesd {sae},%xmm28,%xmm29,%k5{%k7}");
 asm volatile("vgetmantss $0x5b,0x123(%rax,%r14,8),%xmm29,%xmm30{%k7}");



 asm volatile("bndmk (%rax), %bnd0");
 asm volatile("bndmk (%r8), %bnd0");
 asm volatile("bndmk (0x12345678), %bnd0");
 asm volatile("bndmk (%rax), %bnd3");
 asm volatile("bndmk (%rcx,%rax,1), %bnd0");
 asm volatile("bndmk 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndmk (%rax,%rcx,1), %bnd0");
 asm volatile("bndmk (%rax,%rcx,8), %bnd0");
 asm volatile("bndmk 0x12(%rax), %bnd0");
 asm volatile("bndmk 0x12(%rbp), %bnd0");
 asm volatile("bndmk 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndmk 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndmk 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndmk 0x12(%rax,%rcx,8), %bnd0");
 asm volatile("bndmk 0x12345678(%rax), %bnd0");
 asm volatile("bndmk 0x12345678(%rbp), %bnd0");
 asm volatile("bndmk 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndmk 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndmk 0x12345678(%rax,%rcx,1), %bnd0");
 asm volatile("bndmk 0x12345678(%rax,%rcx,8), %bnd0");



 asm volatile("bndcl (%rax), %bnd0");
 asm volatile("bndcl (%r8), %bnd0");
 asm volatile("bndcl (0x12345678), %bnd0");
 asm volatile("bndcl (%rax), %bnd3");
 asm volatile("bndcl (%rcx,%rax,1), %bnd0");
 asm volatile("bndcl 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndcl (%rax,%rcx,1), %bnd0");
 asm volatile("bndcl (%rax,%rcx,8), %bnd0");
 asm volatile("bndcl 0x12(%rax), %bnd0");
 asm volatile("bndcl 0x12(%rbp), %bnd0");
 asm volatile("bndcl 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndcl 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndcl 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndcl 0x12(%rax,%rcx,8), %bnd0");
 asm volatile("bndcl 0x12345678(%rax), %bnd0");
 asm volatile("bndcl 0x12345678(%rbp), %bnd0");
 asm volatile("bndcl 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndcl 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndcl 0x12345678(%rax,%rcx,1), %bnd0");
 asm volatile("bndcl 0x12345678(%rax,%rcx,8), %bnd0");
 asm volatile("bndcl %rax, %bnd0");



 asm volatile("bndcu (%rax), %bnd0");
 asm volatile("bndcu (%r8), %bnd0");
 asm volatile("bndcu (0x12345678), %bnd0");
 asm volatile("bndcu (%rax), %bnd3");
 asm volatile("bndcu (%rcx,%rax,1), %bnd0");
 asm volatile("bndcu 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndcu (%rax,%rcx,1), %bnd0");
 asm volatile("bndcu (%rax,%rcx,8), %bnd0");
 asm volatile("bndcu 0x12(%rax), %bnd0");
 asm volatile("bndcu 0x12(%rbp), %bnd0");
 asm volatile("bndcu 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndcu 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndcu 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndcu 0x12(%rax,%rcx,8), %bnd0");
 asm volatile("bndcu 0x12345678(%rax), %bnd0");
 asm volatile("bndcu 0x12345678(%rbp), %bnd0");
 asm volatile("bndcu 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndcu 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndcu 0x12345678(%rax,%rcx,1), %bnd0");
 asm volatile("bndcu 0x12345678(%rax,%rcx,8), %bnd0");
 asm volatile("bndcu %rax, %bnd0");



 asm volatile("bndcn (%rax), %bnd0");
 asm volatile("bndcn (%r8), %bnd0");
 asm volatile("bndcn (0x12345678), %bnd0");
 asm volatile("bndcn (%rax), %bnd3");
 asm volatile("bndcn (%rcx,%rax,1), %bnd0");
 asm volatile("bndcn 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndcn (%rax,%rcx,1), %bnd0");
 asm volatile("bndcn (%rax,%rcx,8), %bnd0");
 asm volatile("bndcn 0x12(%rax), %bnd0");
 asm volatile("bndcn 0x12(%rbp), %bnd0");
 asm volatile("bndcn 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndcn 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndcn 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndcn 0x12(%rax,%rcx,8), %bnd0");
 asm volatile("bndcn 0x12345678(%rax), %bnd0");
 asm volatile("bndcn 0x12345678(%rbp), %bnd0");
 asm volatile("bndcn 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndcn 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndcn 0x12345678(%rax,%rcx,1), %bnd0");
 asm volatile("bndcn 0x12345678(%rax,%rcx,8), %bnd0");
 asm volatile("bndcn %rax, %bnd0");



 asm volatile("bndmov (%rax), %bnd0");
 asm volatile("bndmov (%r8), %bnd0");
 asm volatile("bndmov (0x12345678), %bnd0");
 asm volatile("bndmov (%rax), %bnd3");
 asm volatile("bndmov (%rcx,%rax,1), %bnd0");
 asm volatile("bndmov 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndmov (%rax,%rcx,1), %bnd0");
 asm volatile("bndmov (%rax,%rcx,8), %bnd0");
 asm volatile("bndmov 0x12(%rax), %bnd0");
 asm volatile("bndmov 0x12(%rbp), %bnd0");
 asm volatile("bndmov 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndmov 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndmov 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndmov 0x12(%rax,%rcx,8), %bnd0");
 asm volatile("bndmov 0x12345678(%rax), %bnd0");
 asm volatile("bndmov 0x12345678(%rbp), %bnd0");
 asm volatile("bndmov 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndmov 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndmov 0x12345678(%rax,%rcx,1), %bnd0");
 asm volatile("bndmov 0x12345678(%rax,%rcx,8), %bnd0");



 asm volatile("bndmov %bnd0, (%rax)");
 asm volatile("bndmov %bnd0, (%r8)");
 asm volatile("bndmov %bnd0, (0x12345678)");
 asm volatile("bndmov %bnd3, (%rax)");
 asm volatile("bndmov %bnd0, (%rcx,%rax,1)");
 asm volatile("bndmov %bnd0, 0x12345678(,%rax,1)");
 asm volatile("bndmov %bnd0, (%rax,%rcx,1)");
 asm volatile("bndmov %bnd0, (%rax,%rcx,8)");
 asm volatile("bndmov %bnd0, 0x12(%rax)");
 asm volatile("bndmov %bnd0, 0x12(%rbp)");
 asm volatile("bndmov %bnd0, 0x12(%rcx,%rax,1)");
 asm volatile("bndmov %bnd0, 0x12(%rbp,%rax,1)");
 asm volatile("bndmov %bnd0, 0x12(%rax,%rcx,1)");
 asm volatile("bndmov %bnd0, 0x12(%rax,%rcx,8)");
 asm volatile("bndmov %bnd0, 0x12345678(%rax)");
 asm volatile("bndmov %bnd0, 0x12345678(%rbp)");
 asm volatile("bndmov %bnd0, 0x12345678(%rcx,%rax,1)");
 asm volatile("bndmov %bnd0, 0x12345678(%rbp,%rax,1)");
 asm volatile("bndmov %bnd0, 0x12345678(%rax,%rcx,1)");
 asm volatile("bndmov %bnd0, 0x12345678(%rax,%rcx,8)");



 asm volatile("bndmov %bnd0, %bnd1");
 asm volatile("bndmov %bnd1, %bnd0");



 asm volatile("bndldx (%rax), %bnd0");
 asm volatile("bndldx (%r8), %bnd0");
 asm volatile("bndldx (0x12345678), %bnd0");
 asm volatile("bndldx (%rax), %bnd3");
 asm volatile("bndldx (%rcx,%rax,1), %bnd0");
 asm volatile("bndldx 0x12345678(,%rax,1), %bnd0");
 asm volatile("bndldx (%rax,%rcx,1), %bnd0");
 asm volatile("bndldx 0x12(%rax), %bnd0");
 asm volatile("bndldx 0x12(%rbp), %bnd0");
 asm volatile("bndldx 0x12(%rcx,%rax,1), %bnd0");
 asm volatile("bndldx 0x12(%rbp,%rax,1), %bnd0");
 asm volatile("bndldx 0x12(%rax,%rcx,1), %bnd0");
 asm volatile("bndldx 0x12345678(%rax), %bnd0");
 asm volatile("bndldx 0x12345678(%rbp), %bnd0");
 asm volatile("bndldx 0x12345678(%rcx,%rax,1), %bnd0");
 asm volatile("bndldx 0x12345678(%rbp,%rax,1), %bnd0");
 asm volatile("bndldx 0x12345678(%rax,%rcx,1), %bnd0");



 asm volatile("bndstx %bnd0, (%rax)");
 asm volatile("bndstx %bnd0, (%r8)");
 asm volatile("bndstx %bnd0, (0x12345678)");
 asm volatile("bndstx %bnd3, (%rax)");
 asm volatile("bndstx %bnd0, (%rcx,%rax,1)");
 asm volatile("bndstx %bnd0, 0x12345678(,%rax,1)");
 asm volatile("bndstx %bnd0, (%rax,%rcx,1)");
 asm volatile("bndstx %bnd0, 0x12(%rax)");
 asm volatile("bndstx %bnd0, 0x12(%rbp)");
 asm volatile("bndstx %bnd0, 0x12(%rcx,%rax,1)");
 asm volatile("bndstx %bnd0, 0x12(%rbp,%rax,1)");
 asm volatile("bndstx %bnd0, 0x12(%rax,%rcx,1)");
 asm volatile("bndstx %bnd0, 0x12345678(%rax)");
 asm volatile("bndstx %bnd0, 0x12345678(%rbp)");
 asm volatile("bndstx %bnd0, 0x12345678(%rcx,%rax,1)");
 asm volatile("bndstx %bnd0, 0x12345678(%rbp,%rax,1)");
 asm volatile("bndstx %bnd0, 0x12345678(%rax,%rcx,1)");



 asm volatile("bnd call label1");
 asm volatile("bnd call *(%eax)");
 asm volatile("bnd ret");
 asm volatile("bnd jmp label1");
 asm volatile("bnd jmp label1");
 asm volatile("bnd jmp *(%ecx)");
 asm volatile("bnd jne label1");



 asm volatile("sha1rnds4 $0x0, %xmm1, %xmm0");
 asm volatile("sha1rnds4 $0x91, %xmm7, %xmm2");
 asm volatile("sha1rnds4 $0x91, %xmm8, %xmm0");
 asm volatile("sha1rnds4 $0x91, %xmm7, %xmm8");
 asm volatile("sha1rnds4 $0x91, %xmm15, %xmm8");
 asm volatile("sha1rnds4 $0x91, (%rax), %xmm0");
 asm volatile("sha1rnds4 $0x91, (%r8), %xmm0");
 asm volatile("sha1rnds4 $0x91, (0x12345678), %xmm0");
 asm volatile("sha1rnds4 $0x91, (%rax), %xmm3");
 asm volatile("sha1rnds4 $0x91, (%rcx,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, (%rax,%rcx,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, (%rax,%rcx,8), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rax), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rbp), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rax), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rbp), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha1rnds4 $0x91, 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("sha1nexte %xmm1, %xmm0");
 asm volatile("sha1nexte %xmm7, %xmm2");
 asm volatile("sha1nexte %xmm8, %xmm0");
 asm volatile("sha1nexte %xmm7, %xmm8");
 asm volatile("sha1nexte %xmm15, %xmm8");
 asm volatile("sha1nexte (%rax), %xmm0");
 asm volatile("sha1nexte (%r8), %xmm0");
 asm volatile("sha1nexte (0x12345678), %xmm0");
 asm volatile("sha1nexte (%rax), %xmm3");
 asm volatile("sha1nexte (%rcx,%rax,1), %xmm0");
 asm volatile("sha1nexte 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha1nexte (%rax,%rcx,1), %xmm0");
 asm volatile("sha1nexte (%rax,%rcx,8), %xmm0");
 asm volatile("sha1nexte 0x12(%rax), %xmm0");
 asm volatile("sha1nexte 0x12(%rbp), %xmm0");
 asm volatile("sha1nexte 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha1nexte 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha1nexte 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha1nexte 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rax), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rbp), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha1nexte 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("sha1msg1 %xmm1, %xmm0");
 asm volatile("sha1msg1 %xmm7, %xmm2");
 asm volatile("sha1msg1 %xmm8, %xmm0");
 asm volatile("sha1msg1 %xmm7, %xmm8");
 asm volatile("sha1msg1 %xmm15, %xmm8");
 asm volatile("sha1msg1 (%rax), %xmm0");
 asm volatile("sha1msg1 (%r8), %xmm0");
 asm volatile("sha1msg1 (0x12345678), %xmm0");
 asm volatile("sha1msg1 (%rax), %xmm3");
 asm volatile("sha1msg1 (%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg1 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha1msg1 (%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg1 (%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg1 0x12(%rax), %xmm0");
 asm volatile("sha1msg1 0x12(%rbp), %xmm0");
 asm volatile("sha1msg1 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg1 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha1msg1 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg1 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rax), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rbp), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg1 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("sha1msg2 %xmm1, %xmm0");
 asm volatile("sha1msg2 %xmm7, %xmm2");
 asm volatile("sha1msg2 %xmm8, %xmm0");
 asm volatile("sha1msg2 %xmm7, %xmm8");
 asm volatile("sha1msg2 %xmm15, %xmm8");
 asm volatile("sha1msg2 (%rax), %xmm0");
 asm volatile("sha1msg2 (%r8), %xmm0");
 asm volatile("sha1msg2 (0x12345678), %xmm0");
 asm volatile("sha1msg2 (%rax), %xmm3");
 asm volatile("sha1msg2 (%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg2 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha1msg2 (%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg2 (%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg2 0x12(%rax), %xmm0");
 asm volatile("sha1msg2 0x12(%rbp), %xmm0");
 asm volatile("sha1msg2 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg2 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha1msg2 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg2 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rax), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rbp), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha1msg2 0x12345678(%rax,%rcx,8), %xmm15");




 asm volatile("sha256rnds2 %xmm4, %xmm1");
 asm volatile("sha256rnds2 %xmm7, %xmm2");
 asm volatile("sha256rnds2 %xmm8, %xmm1");
 asm volatile("sha256rnds2 %xmm7, %xmm8");
 asm volatile("sha256rnds2 %xmm15, %xmm8");
 asm volatile("sha256rnds2 (%rax), %xmm1");
 asm volatile("sha256rnds2 (%r8), %xmm1");
 asm volatile("sha256rnds2 (0x12345678), %xmm1");
 asm volatile("sha256rnds2 (%rax), %xmm3");
 asm volatile("sha256rnds2 (%rcx,%rax,1), %xmm1");
 asm volatile("sha256rnds2 0x12345678(,%rax,1), %xmm1");
 asm volatile("sha256rnds2 (%rax,%rcx,1), %xmm1");
 asm volatile("sha256rnds2 (%rax,%rcx,8), %xmm1");
 asm volatile("sha256rnds2 0x12(%rax), %xmm1");
 asm volatile("sha256rnds2 0x12(%rbp), %xmm1");
 asm volatile("sha256rnds2 0x12(%rcx,%rax,1), %xmm1");
 asm volatile("sha256rnds2 0x12(%rbp,%rax,1), %xmm1");
 asm volatile("sha256rnds2 0x12(%rax,%rcx,1), %xmm1");
 asm volatile("sha256rnds2 0x12(%rax,%rcx,8), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rax), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rbp), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rcx,%rax,1), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rbp,%rax,1), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rax,%rcx,1), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rax,%rcx,8), %xmm1");
 asm volatile("sha256rnds2 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("sha256msg1 %xmm1, %xmm0");
 asm volatile("sha256msg1 %xmm7, %xmm2");
 asm volatile("sha256msg1 %xmm8, %xmm0");
 asm volatile("sha256msg1 %xmm7, %xmm8");
 asm volatile("sha256msg1 %xmm15, %xmm8");
 asm volatile("sha256msg1 (%rax), %xmm0");
 asm volatile("sha256msg1 (%r8), %xmm0");
 asm volatile("sha256msg1 (0x12345678), %xmm0");
 asm volatile("sha256msg1 (%rax), %xmm3");
 asm volatile("sha256msg1 (%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg1 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha256msg1 (%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg1 (%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg1 0x12(%rax), %xmm0");
 asm volatile("sha256msg1 0x12(%rbp), %xmm0");
 asm volatile("sha256msg1 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg1 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha256msg1 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg1 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rax), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rbp), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg1 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("sha256msg2 %xmm1, %xmm0");
 asm volatile("sha256msg2 %xmm7, %xmm2");
 asm volatile("sha256msg2 %xmm8, %xmm0");
 asm volatile("sha256msg2 %xmm7, %xmm8");
 asm volatile("sha256msg2 %xmm15, %xmm8");
 asm volatile("sha256msg2 (%rax), %xmm0");
 asm volatile("sha256msg2 (%r8), %xmm0");
 asm volatile("sha256msg2 (0x12345678), %xmm0");
 asm volatile("sha256msg2 (%rax), %xmm3");
 asm volatile("sha256msg2 (%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg2 0x12345678(,%rax,1), %xmm0");
 asm volatile("sha256msg2 (%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg2 (%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg2 0x12(%rax), %xmm0");
 asm volatile("sha256msg2 0x12(%rbp), %xmm0");
 asm volatile("sha256msg2 0x12(%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg2 0x12(%rbp,%rax,1), %xmm0");
 asm volatile("sha256msg2 0x12(%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg2 0x12(%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rax), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rbp), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rcx,%rax,1), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rbp,%rax,1), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rax,%rcx,1), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rax,%rcx,8), %xmm0");
 asm volatile("sha256msg2 0x12345678(%rax,%rcx,8), %xmm15");



 asm volatile("clflushopt (%rax)");
 asm volatile("clflushopt (%r8)");
 asm volatile("clflushopt (0x12345678)");
 asm volatile("clflushopt 0x12345678(%rax,%rcx,8)");
 asm volatile("clflushopt 0x12345678(%r8,%rcx,8)");

 asm volatile("clflush (%rax)");
 asm volatile("clflush (%r8)");
 asm volatile("sfence");



 asm volatile("clwb (%rax)");
 asm volatile("clwb (%r8)");
 asm volatile("clwb (0x12345678)");
 asm volatile("clwb 0x12345678(%rax,%rcx,8)");
 asm volatile("clwb 0x12345678(%r8,%rcx,8)");

 asm volatile("xsaveopt (%rax)");
 asm volatile("xsaveopt (%r8)");
 asm volatile("mfence");



 asm volatile("xsavec (%rax)");
 asm volatile("xsavec (%r8)");
 asm volatile("xsavec (0x12345678)");
 asm volatile("xsavec 0x12345678(%rax,%rcx,8)");
 asm volatile("xsavec 0x12345678(%r8,%rcx,8)");



 asm volatile("xsaves (%rax)");
 asm volatile("xsaves (%r8)");
 asm volatile("xsaves (0x12345678)");
 asm volatile("xsaves 0x12345678(%rax,%rcx,8)");
 asm volatile("xsaves 0x12345678(%r8,%rcx,8)");



 asm volatile("xrstors (%rax)");
 asm volatile("xrstors (%r8)");
 asm volatile("xrstors (0x12345678)");
 asm volatile("xrstors 0x12345678(%rax,%rcx,8)");
 asm volatile("xrstors 0x12345678(%r8,%rcx,8)");



 asm volatile("ptwrite (%rax)");
 asm volatile("ptwrite (%r8)");
 asm volatile("ptwrite (0x12345678)");
 asm volatile("ptwrite 0x12345678(%rax,%rcx,8)");
 asm volatile("ptwrite 0x12345678(%r8,%rcx,8)");

 asm volatile("ptwritel (%rax)");
 asm volatile("ptwritel (%r8)");
 asm volatile("ptwritel (0x12345678)");
 asm volatile("ptwritel 0x12345678(%rax,%rcx,8)");
 asm volatile("ptwritel 0x12345678(%r8,%rcx,8)");

 asm volatile("ptwriteq (%rax)");
 asm volatile("ptwriteq (%r8)");
 asm volatile("ptwriteq (0x12345678)");
 asm volatile("ptwriteq 0x12345678(%rax,%rcx,8)");
 asm volatile("ptwriteq 0x12345678(%r8,%rcx,8)");
 asm volatile("rdtsc");

 return 0;
}
