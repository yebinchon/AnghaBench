
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_kstats {int outpkts; int inpkts; int conns; int outbytes; int inbytes; } ;
struct ip_vs_estimator {scalar_t__ outbps; scalar_t__ inbps; scalar_t__ outpps; scalar_t__ inpps; scalar_t__ cps; int last_outpkts; int last_inpkts; int last_conns; int last_outbytes; int last_inbytes; } ;
struct ip_vs_stats {struct ip_vs_kstats kstats; struct ip_vs_estimator est; } ;



void ip_vs_zero_estimator(struct ip_vs_stats *stats)
{
 struct ip_vs_estimator *est = &stats->est;
 struct ip_vs_kstats *k = &stats->kstats;


 est->last_inbytes = k->inbytes;
 est->last_outbytes = k->outbytes;
 est->last_conns = k->conns;
 est->last_inpkts = k->inpkts;
 est->last_outpkts = k->outpkts;
 est->cps = 0;
 est->inpps = 0;
 est->outpps = 0;
 est->inbps = 0;
 est->outbps = 0;
}
