
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct scm_cookie {int dummy; } ;



__attribute__((used)) static inline bool unix_secdata_eq(struct scm_cookie *scm, struct sk_buff *skb)
{
 return 1;
}
