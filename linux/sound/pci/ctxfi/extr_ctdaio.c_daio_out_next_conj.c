
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int conj; } ;



__attribute__((used)) static int daio_out_next_conj(struct rsc *rsc)
{
 return rsc->conj += 2;
}
