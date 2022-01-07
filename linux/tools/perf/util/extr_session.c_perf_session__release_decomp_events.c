
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {struct decomp* decomp; } ;
struct decomp {size_t mmap_len; struct decomp* next; } ;


 int munmap (struct decomp*,size_t) ;

__attribute__((used)) static void perf_session__release_decomp_events(struct perf_session *session)
{
 struct decomp *next, *decomp;
 size_t mmap_len;
 next = session->decomp;
 do {
  decomp = next;
  if (decomp == ((void*)0))
   break;
  next = decomp->next;
  mmap_len = decomp->mmap_len;
  munmap(decomp, mmap_len);
 } while (1);
}
