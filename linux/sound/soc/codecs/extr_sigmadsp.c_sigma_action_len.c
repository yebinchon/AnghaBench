
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sigma_action {int len_hi; int len; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u32 sigma_action_len(struct sigma_action *sa)
{
 return (sa->len_hi << 16) | le16_to_cpu(sa->len);
}
