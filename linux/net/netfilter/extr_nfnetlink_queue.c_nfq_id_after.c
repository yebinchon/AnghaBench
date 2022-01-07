
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int nfq_id_after(unsigned int id, unsigned int max)
{
 return (int)(id - max) > 0;
}
