
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ebitmap_node {int startbit; int* maps; struct ebitmap_node* next; } ;
struct ebitmap {int highbit; struct ebitmap_node* node; } ;
typedef int __le64 ;
typedef int __le32 ;


 int BITS_PER_U64 ;
 int EBITMAP_SHIFT_UNIT_SIZE (int) ;
 int EBITMAP_SIZE ;
 int EBITMAP_UNIT_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ebitmap_destroy (struct ebitmap*) ;
 int ebitmap_init (struct ebitmap*) ;
 int ebitmap_node_cachep ;
 struct ebitmap_node* kmem_cache_zalloc (int ,int ) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int pr_err (char*,...) ;

int ebitmap_read(struct ebitmap *e, void *fp)
{
 struct ebitmap_node *n = ((void*)0);
 u32 mapunit, count, startbit, index;
 __le32 ebitmap_start;
 u64 map;
 __le64 mapbits;
 __le32 buf[3];
 int rc, i;

 ebitmap_init(e);

 rc = next_entry(buf, fp, sizeof buf);
 if (rc < 0)
  goto out;

 mapunit = le32_to_cpu(buf[0]);
 e->highbit = le32_to_cpu(buf[1]);
 count = le32_to_cpu(buf[2]);

 if (mapunit != BITS_PER_U64) {
  pr_err("SELinux: ebitmap: map size %u does not "
         "match my size %zd (high bit was %d)\n",
         mapunit, BITS_PER_U64, e->highbit);
  goto bad;
 }


 e->highbit += EBITMAP_SIZE - 1;
 e->highbit -= (e->highbit % EBITMAP_SIZE);

 if (!e->highbit) {
  e->node = ((void*)0);
  goto ok;
 }

 if (e->highbit && !count)
  goto bad;

 for (i = 0; i < count; i++) {
  rc = next_entry(&ebitmap_start, fp, sizeof(u32));
  if (rc < 0) {
   pr_err("SELinux: ebitmap: truncated map\n");
   goto bad;
  }
  startbit = le32_to_cpu(ebitmap_start);

  if (startbit & (mapunit - 1)) {
   pr_err("SELinux: ebitmap start bit (%d) is "
          "not a multiple of the map unit size (%u)\n",
          startbit, mapunit);
   goto bad;
  }
  if (startbit > e->highbit - mapunit) {
   pr_err("SELinux: ebitmap start bit (%d) is "
          "beyond the end of the bitmap (%u)\n",
          startbit, (e->highbit - mapunit));
   goto bad;
  }

  if (!n || startbit >= n->startbit + EBITMAP_SIZE) {
   struct ebitmap_node *tmp;
   tmp = kmem_cache_zalloc(ebitmap_node_cachep, GFP_KERNEL);
   if (!tmp) {
    pr_err("SELinux: ebitmap: out of memory\n");
    rc = -ENOMEM;
    goto bad;
   }

   tmp->startbit = startbit - (startbit % EBITMAP_SIZE);
   if (n)
    n->next = tmp;
   else
    e->node = tmp;
   n = tmp;
  } else if (startbit <= n->startbit) {
   pr_err("SELinux: ebitmap: start bit %d"
          " comes after start bit %d\n",
          startbit, n->startbit);
   goto bad;
  }

  rc = next_entry(&mapbits, fp, sizeof(u64));
  if (rc < 0) {
   pr_err("SELinux: ebitmap: truncated map\n");
   goto bad;
  }
  map = le64_to_cpu(mapbits);

  index = (startbit - n->startbit) / EBITMAP_UNIT_SIZE;
  while (map) {
   n->maps[index++] = map & (-1UL);
   map = EBITMAP_SHIFT_UNIT_SIZE(map);
  }
 }
ok:
 rc = 0;
out:
 return rc;
bad:
 if (!rc)
  rc = -EINVAL;
 ebitmap_destroy(e);
 goto out;
}
