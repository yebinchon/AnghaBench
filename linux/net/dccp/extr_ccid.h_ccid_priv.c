
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid {scalar_t__ ccid_priv; } ;



__attribute__((used)) static inline void *ccid_priv(const struct ccid *ccid)
{
 return (void *)ccid->ccid_priv;
}
