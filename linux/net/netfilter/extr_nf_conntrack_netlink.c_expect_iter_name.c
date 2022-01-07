
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_expect {int master; } ;
struct nf_conn_help {TYPE_1__* helper; } ;
struct TYPE_2__ {int name; } ;


 struct nf_conn_help* nfct_help (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool expect_iter_name(struct nf_conntrack_expect *exp, void *data)
{
 const struct nf_conn_help *m_help;
 const char *name = data;

 m_help = nfct_help(exp->master);

 return strcmp(m_help->helper->name, name) == 0;
}
