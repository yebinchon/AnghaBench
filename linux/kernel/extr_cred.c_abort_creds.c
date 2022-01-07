
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int usage; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;
 int kdebug (char*,struct cred*,int,scalar_t__) ;
 int put_cred (struct cred*) ;
 scalar_t__ read_cred_subscribers (struct cred*) ;

void abort_creds(struct cred *new)
{
 kdebug("abort_creds(%p{%d,%d})", new,
        atomic_read(&new->usage),
        read_cred_subscribers(new));




 BUG_ON(atomic_read(&new->usage) < 1);
 put_cred(new);
}
