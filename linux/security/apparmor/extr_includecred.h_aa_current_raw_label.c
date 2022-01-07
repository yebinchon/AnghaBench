
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 struct aa_label* aa_cred_raw_label (int ) ;
 int current_cred () ;

__attribute__((used)) static inline struct aa_label *aa_current_raw_label(void)
{
 return aa_cred_raw_label(current_cred());
}
