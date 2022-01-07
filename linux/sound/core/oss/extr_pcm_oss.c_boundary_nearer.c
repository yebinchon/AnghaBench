
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boundary_lt (int,int,int,int) ;
 int boundary_sub (int,int,int,int,int*,int*) ;

__attribute__((used)) static int boundary_nearer(int min, int mindir,
      int best, int bestdir,
      int max, int maxdir)
{
 int dmin, dmindir;
 int dmax, dmaxdir;
 boundary_sub(best, bestdir, min, mindir, &dmin, &dmindir);
 boundary_sub(max, maxdir, best, bestdir, &dmax, &dmaxdir);
 return boundary_lt(dmin, dmindir, dmax, dmaxdir);
}
