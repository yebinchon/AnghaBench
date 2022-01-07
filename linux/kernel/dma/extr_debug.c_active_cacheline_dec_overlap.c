
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int active_cacheline_read_overlap (int ) ;
 int active_cacheline_set_overlap (int ,int) ;

__attribute__((used)) static int active_cacheline_dec_overlap(phys_addr_t cln)
{
 int overlap = active_cacheline_read_overlap(cln);

 return active_cacheline_set_overlap(cln, --overlap);
}
