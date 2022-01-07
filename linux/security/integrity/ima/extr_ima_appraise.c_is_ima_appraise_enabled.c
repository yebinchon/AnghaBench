
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMA_APPRAISE_ENFORCE ;
 int ima_appraise ;

bool is_ima_appraise_enabled(void)
{
 return ima_appraise & IMA_APPRAISE_ENFORCE;
}
