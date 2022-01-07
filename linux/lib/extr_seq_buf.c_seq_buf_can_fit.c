
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_buf {scalar_t__ len; scalar_t__ size; } ;



__attribute__((used)) static bool seq_buf_can_fit(struct seq_buf *s, size_t len)
{
 return s->len + len <= s->size;
}
