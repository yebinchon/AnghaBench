
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_online_cpus () ;

__attribute__((used)) static int compute_real(int n)
{
 int nr;

 if (n >= 0) {
  nr = n;
 } else {
  nr = num_online_cpus() + 1 + n;
  if (nr <= 0)
   nr = 1;
 }
 return nr;
}
