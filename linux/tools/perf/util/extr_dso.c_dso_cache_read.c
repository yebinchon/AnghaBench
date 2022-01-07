
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct machine {int dummy; } ;
struct dso_cache {int dummy; } ;
struct dso {int dummy; } ;
typedef int ssize_t ;


 struct dso_cache* dso_cache__find (struct dso*,int ) ;
 int dso_cache__memcpy (struct dso_cache*,int ,int *,int ) ;
 int dso_cache__read (struct dso*,struct machine*,int ,int *,int ) ;

__attribute__((used)) static ssize_t dso_cache_read(struct dso *dso, struct machine *machine,
         u64 offset, u8 *data, ssize_t size)
{
 struct dso_cache *cache;

 cache = dso_cache__find(dso, offset);
 if (cache)
  return dso_cache__memcpy(cache, offset, data, size);
 else
  return dso_cache__read(dso, machine, offset, data, size);
}
