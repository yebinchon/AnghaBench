
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;


 int nsinfo__put (struct nsinfo*) ;

__attribute__((used)) static inline void __nsinfo__zput(struct nsinfo **nsip)
{
 if (nsip) {
  nsinfo__put(*nsip);
  *nsip = ((void*)0);
 }
}
