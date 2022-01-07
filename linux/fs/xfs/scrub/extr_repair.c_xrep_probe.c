
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;


 scalar_t__ xchk_should_terminate (struct xfs_scrub*,int*) ;

int
xrep_probe(
 struct xfs_scrub *sc)
{
 int error = 0;

 if (xchk_should_terminate(sc, &error))
  return error;

 return 0;
}
