
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int mlog (int ,char*) ;

__attribute__((used)) static void dlm_reco_unlock_ast(void *astdata, enum dlm_status st)
{
 mlog(0, "unlockast for recovery lock fired!\n");
}
