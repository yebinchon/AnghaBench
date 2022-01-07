
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlock {int type; int flag; struct metapage* mp; scalar_t__ next; } ;
struct tblock {scalar_t__ next; } ;
struct metapage {int xflag; int nohomeok; int flag; } ;
typedef scalar_t__ lid_t ;


 int COMMIT_PAGE ;
 int META_dirty ;
 int META_sync ;
 int assert (int) ;
 int force_metapage (struct metapage*) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int set_bit (int ,int *) ;
 int tlckBTROOT ;
 int tlckWRITEPAGE ;

__attribute__((used)) static void txForce(struct tblock * tblk)
{
 struct tlock *tlck;
 lid_t lid, next;
 struct metapage *mp;






 tlck = lid_to_tlock(tblk->next);
 lid = tlck->next;
 tlck->next = 0;
 while (lid) {
  tlck = lid_to_tlock(lid);
  next = tlck->next;
  tlck->next = tblk->next;
  tblk->next = lid;
  lid = next;
 }





 for (lid = tblk->next; lid; lid = next) {
  tlck = lid_to_tlock(lid);
  next = tlck->next;

  if ((mp = tlck->mp) != ((void*)0) &&
      (tlck->type & tlckBTROOT) == 0) {
   assert(mp->xflag & COMMIT_PAGE);

   if (tlck->flag & tlckWRITEPAGE) {
    tlck->flag &= ~tlckWRITEPAGE;


    force_metapage(mp);
   }
  }
 }
}
