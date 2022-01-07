
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double fragmentation(unsigned long n_req, unsigned long n_alloc)
{
 if (n_alloc == 0)
  return 0.0;
 else
  return 100.0 - (100.0 * n_req / n_alloc);
}
