
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch {scalar_t__ data; } ;
struct canid_match {int dummy; } ;



__attribute__((used)) static inline struct canid_match *em_canid_priv(struct tcf_ematch *m)
{
 return (struct canid_match *)m->data;
}
