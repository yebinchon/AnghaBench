
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_filter {int prog; } ;


 int __bpf_prog_release (int ) ;
 int kfree (struct sk_filter*) ;

__attribute__((used)) static void __sk_filter_release(struct sk_filter *fp)
{
 __bpf_prog_release(fp->prog);
 kfree(fp);
}
