
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_perms {int deny; int allow; int audit; int quiet; int kill; int stop; int complain; int cond; int hide; int prompt; } ;



void aa_perms_accum(struct aa_perms *accum, struct aa_perms *addend)
{
 accum->deny |= addend->deny;
 accum->allow &= addend->allow & ~accum->deny;
 accum->audit |= addend->audit & accum->allow;
 accum->quiet &= addend->quiet & ~accum->allow;
 accum->kill |= addend->kill & ~accum->allow;
 accum->stop |= addend->stop & ~accum->allow;
 accum->complain |= addend->complain & ~accum->allow & ~accum->deny;
 accum->cond |= addend->cond & ~accum->allow & ~accum->deny;
 accum->hide &= addend->hide & ~accum->allow;
 accum->prompt |= addend->prompt & ~accum->allow & ~accum->deny;
}
