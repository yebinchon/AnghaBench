
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compound_state {int * slot; } ;



__attribute__((used)) static inline bool nfsd4_has_session(struct nfsd4_compound_state *cs)
{
 return cs->slot != ((void*)0);
}
