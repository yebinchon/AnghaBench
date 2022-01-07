
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int BUG () ;
 int DLM_LOCK_CW ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;




 int fs_err (struct gfs2_sbd*,char*,unsigned int const) ;

__attribute__((used)) static int make_mode(struct gfs2_sbd *sdp, const unsigned int lmstate)
{
 switch (lmstate) {
 case 128:
  return DLM_LOCK_NL;
 case 130:
  return DLM_LOCK_EX;
 case 131:
  return DLM_LOCK_CW;
 case 129:
  return DLM_LOCK_PR;
 }
 fs_err(sdp, "unknown LM state %d\n", lmstate);
 BUG();
 return -1;
}
