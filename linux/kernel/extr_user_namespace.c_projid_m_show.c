
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {struct user_namespace* parent; } ;
struct uid_gid_extent {int count; int first; int lower_first; } ;
struct seq_file {struct user_namespace* private; } ;
typedef int projid_t ;


 int KPROJIDT_INIT (int ) ;
 int from_kprojid (struct user_namespace*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 struct user_namespace* seq_user_ns (struct seq_file*) ;

__attribute__((used)) static int projid_m_show(struct seq_file *seq, void *v)
{
 struct user_namespace *ns = seq->private;
 struct uid_gid_extent *extent = v;
 struct user_namespace *lower_ns;
 projid_t lower;

 lower_ns = seq_user_ns(seq);
 if ((lower_ns == ns) && lower_ns->parent)
  lower_ns = lower_ns->parent;

 lower = from_kprojid(lower_ns, KPROJIDT_INIT(extent->lower_first));

 seq_printf(seq, "%10u %10u %10u\n",
  extent->first,
  lower,
  extent->count);

 return 0;
}
