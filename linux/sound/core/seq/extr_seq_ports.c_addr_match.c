
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_addr {scalar_t__ client; scalar_t__ port; } ;



__attribute__((used)) static inline int addr_match(struct snd_seq_addr *r, struct snd_seq_addr *s)
{
 return (r->client == s->client) && (r->port == s->port);
}
