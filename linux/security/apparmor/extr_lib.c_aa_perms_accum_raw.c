
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_perms {int deny; int allow; int audit; int quiet; int kill; int stop; int complain; int cond; int hide; int prompt; } ;



void aa_perms_accum_raw(struct aa_perms *accum, struct aa_perms *addend)
{
 accum->deny |= addend->deny;
 accum->allow &= addend->allow & ~addend->deny;
 accum->audit |= addend->audit & addend->allow;
 accum->quiet &= addend->quiet & ~addend->allow;
 accum->kill |= addend->kill & ~addend->allow;
 accum->stop |= addend->stop & ~addend->allow;
 accum->complain |= addend->complain & ~addend->allow & ~addend->deny;
 accum->cond |= addend->cond & ~addend->allow & ~addend->deny;
 accum->hide &= addend->hide & ~addend->allow;
 accum->prompt |= addend->prompt & ~addend->allow & ~addend->deny;
}
