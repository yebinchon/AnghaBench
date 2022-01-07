
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int ACTIVE_CACHELINE_MAX_OVERLAP ;
 int WARN_ONCE (int,int ,int,int *) ;
 int active_cacheline_read_overlap (int ) ;
 int active_cacheline_set_overlap (int ,int) ;
 int pr_fmt (char*) ;

__attribute__((used)) static void active_cacheline_inc_overlap(phys_addr_t cln)
{
 int overlap = active_cacheline_read_overlap(cln);

 overlap = active_cacheline_set_overlap(cln, ++overlap);







 WARN_ONCE(overlap > ACTIVE_CACHELINE_MAX_OVERLAP,
    pr_fmt("exceeded %d overlapping mappings of cacheline %pa\n"),
    ACTIVE_CACHELINE_MAX_OVERLAP, &cln);
}
