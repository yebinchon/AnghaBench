
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int subscribers; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int read_cred_subscribers(const struct cred *cred)
{



 return 0;

}
