
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;


 int current_cred () ;
 int smack_cred (int ) ;
 struct smack_known* smk_of_task (int ) ;

__attribute__((used)) static inline struct smack_known *smk_of_current(void)
{
 return smk_of_task(smack_cred(current_cred()));
}
