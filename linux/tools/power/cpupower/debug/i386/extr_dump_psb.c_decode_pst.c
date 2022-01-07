
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* fid_to_mult ;
 int fsb ;
 int printf (char*,int,int,int,int,int,int,int) ;
 int* vid_to_voltage ;

__attribute__((used)) static int
decode_pst(char *p, int npstates)
{
 int i;
 int freq, fid, vid;

 for (i = 0; i < npstates; ++i) {
  fid = *p++;
  vid = *p++;
  freq = 100 * fid_to_mult[fid] * fsb;

  printf("   %2d %8dkHz  FID %02x (%2d.%01d)  VID %02x (%4dmV)\n",
         i,
         freq,
         fid, fid_to_mult[fid]/10, fid_to_mult[fid]%10,
         vid, vid_to_voltage[vid]);
 }

 return 0;
}
