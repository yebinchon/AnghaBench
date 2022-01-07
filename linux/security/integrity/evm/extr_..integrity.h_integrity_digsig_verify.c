
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;

__attribute__((used)) static inline int integrity_digsig_verify(const unsigned int id,
       const char *sig, int siglen,
       const char *digest, int digestlen)
{
 return -EOPNOTSUPP;
}
