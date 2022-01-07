
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {unsigned int* th_usage; int ra_size; int* ra_depth; int* nfs4_opcount; int th_fullcnt; int th_cnt; int io_write; int io_read; int fh_nocache_nondir; int fh_nocache_dir; int fh_anon; int fh_lookup; int fh_stale; int rcnocache; int rcmisses; int rchits; } ;


 unsigned int HZ ;
 int LAST_NFS4_OP ;
 int nfsd_svcstats ;
 TYPE_1__ nfsdstats ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int svc_seq_show (struct seq_file*,int *) ;

__attribute__((used)) static int nfsd_proc_show(struct seq_file *seq, void *v)
{
 int i;

 seq_printf(seq, "rc %u %u %u\nfh %u %u %u %u %u\nio %u %u\n",
        nfsdstats.rchits,
        nfsdstats.rcmisses,
        nfsdstats.rcnocache,
        nfsdstats.fh_stale,
        nfsdstats.fh_lookup,
        nfsdstats.fh_anon,
        nfsdstats.fh_nocache_dir,
        nfsdstats.fh_nocache_nondir,
        nfsdstats.io_read,
        nfsdstats.io_write);

 seq_printf(seq, "th %u %u", nfsdstats.th_cnt, nfsdstats.th_fullcnt);
 for (i=0; i<10; i++) {
  unsigned int jifs = nfsdstats.th_usage[i];
  unsigned int sec = jifs / HZ, msec = (jifs % HZ)*1000/HZ;
  seq_printf(seq, " %u.%03u", sec, msec);
 }


 seq_printf(seq, "\nra %u", nfsdstats.ra_size);
 for (i=0; i<11; i++)
  seq_printf(seq, " %u", nfsdstats.ra_depth[i]);
 seq_putc(seq, '\n');


 svc_seq_show(seq, &nfsd_svcstats);
 return 0;
}
