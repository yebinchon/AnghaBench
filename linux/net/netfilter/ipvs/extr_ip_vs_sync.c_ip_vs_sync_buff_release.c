
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_buff {struct ip_vs_sync_buff* mesg; } ;


 int kfree (struct ip_vs_sync_buff*) ;

__attribute__((used)) static inline void ip_vs_sync_buff_release(struct ip_vs_sync_buff *sb)
{
 kfree(sb->mesg);
 kfree(sb);
}
