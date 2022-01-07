
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTEL_PT_ERR_MAX ;
 int INTEL_PT_ERR_UNK ;
 int * intel_pt_err_msgs ;
 int strlcpy (char*,int ,size_t) ;

int intel_pt__strerror(int code, char *buf, size_t buflen)
{
 if (code < 1 || code >= INTEL_PT_ERR_MAX)
  code = INTEL_PT_ERR_UNK;
 strlcpy(buf, intel_pt_err_msgs[code], buflen);
 return 0;
}
