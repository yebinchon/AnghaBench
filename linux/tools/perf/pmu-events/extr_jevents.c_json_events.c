
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct msrmap {char* pname; } ;
struct TYPE_11__ {scalar_t__ type; int size; } ;
typedef TYPE_1__ jsmntok_t ;


 int EIO ;
 int ENOENT ;
 int EXPECT (int,TYPE_1__*,char*) ;
 scalar_t__ JSMN_ARRAY ;
 scalar_t__ JSMN_OBJECT ;
 scalar_t__ JSMN_STRING ;
 int addfield (char*,char**,char*,char*,TYPE_1__*) ;
 char* field_to_perf (int ,char*,TYPE_1__*) ;
 int fixdesc (char*) ;
 int fixname (char*) ;
 int free (char*) ;
 int free_json (char*,size_t,TYPE_1__*) ;
 scalar_t__ json_streq (char*,TYPE_1__*,char*) ;
 struct msrmap* lookup_msr (char*,TYPE_1__*) ;
 scalar_t__ match_field (char*,TYPE_1__*,int,char**,TYPE_1__*) ;
 TYPE_1__* parse_json (char const*,char**,size_t*,int*) ;
 char* real_event (char*,char*) ;
 int snprintf (char*,int,char*,unsigned long long) ;
 char* strdup (char const*) ;
 int strstr (char*,char*) ;
 int strtoul (char*,int *,int ) ;
 char tolower (char) ;
 int try_fixup (char const*,char*,char**,char**,char**,char**,char**,char**,char**,char**,char**,char**,char**,unsigned long long) ;
 int unit_to_pmu ;

int json_events(const char *fn,
   int (*func)(void *data, char *name, char *event, char *desc,
        char *long_desc,
        char *pmu, char *unit, char *perpkg,
        char *metric_expr,
        char *metric_name, char *metric_group),
   void *data)
{
 int err;
 size_t size;
 jsmntok_t *tokens, *tok;
 int i, j, len;
 char *map;
 char buf[128];

 if (!fn)
  return -ENOENT;

 tokens = parse_json(fn, &map, &size, &len);
 if (!tokens)
  return -EIO;
 EXPECT(tokens->type == JSMN_ARRAY, tokens, "expected top level array");
 tok = tokens + 1;
 for (i = 0; i < tokens->size; i++) {
  char *event = ((void*)0), *desc = ((void*)0), *name = ((void*)0);
  char *long_desc = ((void*)0);
  char *extra_desc = ((void*)0);
  char *pmu = ((void*)0);
  char *filter = ((void*)0);
  char *perpkg = ((void*)0);
  char *unit = ((void*)0);
  char *metric_expr = ((void*)0);
  char *metric_name = ((void*)0);
  char *metric_group = ((void*)0);
  char *arch_std = ((void*)0);
  unsigned long long eventcode = 0;
  struct msrmap *msr = ((void*)0);
  jsmntok_t *msrval = ((void*)0);
  jsmntok_t *precise = ((void*)0);
  jsmntok_t *obj = tok++;

  EXPECT(obj->type == JSMN_OBJECT, obj, "expected object");
  for (j = 0; j < obj->size; j += 2) {
   jsmntok_t *field, *val;
   int nz;
   char *s;

   field = tok + j;
   EXPECT(field->type == JSMN_STRING, tok + j,
          "Expected field name");
   val = tok + j + 1;
   EXPECT(val->type == JSMN_STRING, tok + j + 1,
          "Expected string value");

   nz = !json_streq(map, val, "0");
   if (match_field(map, field, nz, &event, val)) {

   } else if (json_streq(map, field, "EventCode")) {
    char *code = ((void*)0);
    addfield(map, &code, "", "", val);
    eventcode |= strtoul(code, ((void*)0), 0);
    free(code);
   } else if (json_streq(map, field, "ExtSel")) {
    char *code = ((void*)0);
    addfield(map, &code, "", "", val);
    eventcode |= strtoul(code, ((void*)0), 0) << 21;
    free(code);
   } else if (json_streq(map, field, "EventName")) {
    addfield(map, &name, "", "", val);
   } else if (json_streq(map, field, "BriefDescription")) {
    addfield(map, &desc, "", "", val);
    fixdesc(desc);
   } else if (json_streq(map, field,
          "PublicDescription")) {
    addfield(map, &long_desc, "", "", val);
    fixdesc(long_desc);
   } else if (json_streq(map, field, "PEBS") && nz) {
    precise = val;
   } else if (json_streq(map, field, "MSRIndex") && nz) {
    msr = lookup_msr(map, val);
   } else if (json_streq(map, field, "MSRValue")) {
    msrval = val;
   } else if (json_streq(map, field, "Errata") &&
       !json_streq(map, val, "null")) {
    addfield(map, &extra_desc, ". ",
     " Spec update: ", val);
   } else if (json_streq(map, field, "Data_LA") && nz) {
    addfield(map, &extra_desc, ". ",
     " Supports address when precise",
     ((void*)0));
   } else if (json_streq(map, field, "Unit")) {
    const char *ppmu;

    ppmu = field_to_perf(unit_to_pmu, map, val);
    if (ppmu) {
     pmu = strdup(ppmu);
    } else {
     if (!pmu)
      pmu = strdup("uncore_");
     addfield(map, &pmu, "", "", val);
     for (s = pmu; *s; s++)
      *s = tolower(*s);
    }
    addfield(map, &desc, ". ", "Unit: ", ((void*)0));
    addfield(map, &desc, "", pmu, ((void*)0));
    addfield(map, &desc, "", " ", ((void*)0));
   } else if (json_streq(map, field, "Filter")) {
    addfield(map, &filter, "", "", val);
   } else if (json_streq(map, field, "ScaleUnit")) {
    addfield(map, &unit, "", "", val);
   } else if (json_streq(map, field, "PerPkg")) {
    addfield(map, &perpkg, "", "", val);
   } else if (json_streq(map, field, "MetricName")) {
    addfield(map, &metric_name, "", "", val);
   } else if (json_streq(map, field, "MetricGroup")) {
    addfield(map, &metric_group, "", "", val);
   } else if (json_streq(map, field, "MetricExpr")) {
    addfield(map, &metric_expr, "", "", val);
    for (s = metric_expr; *s; s++)
     *s = tolower(*s);
   } else if (json_streq(map, field, "ArchStdEvent")) {
    addfield(map, &arch_std, "", "", val);
    for (s = arch_std; *s; s++)
     *s = tolower(*s);
   }

  }
  if (precise && desc && !strstr(desc, "(Precise Event)")) {
   if (json_streq(map, precise, "2"))
    addfield(map, &extra_desc, " ",
      "(Must be precise)", ((void*)0));
   else
    addfield(map, &extra_desc, " ",
      "(Precise event)", ((void*)0));
  }
  snprintf(buf, sizeof buf, "event=%#llx", eventcode);
  addfield(map, &event, ",", buf, ((void*)0));
  if (desc && extra_desc)
   addfield(map, &desc, " ", extra_desc, ((void*)0));
  if (long_desc && extra_desc)
   addfield(map, &long_desc, " ", extra_desc, ((void*)0));
  if (filter)
   addfield(map, &event, ",", filter, ((void*)0));
  if (msr != ((void*)0))
   addfield(map, &event, ",", msr->pname, msrval);
  if (name)
   fixname(name);

  if (arch_std) {




   err = try_fixup(fn, arch_std, &event, &desc, &name,
     &long_desc, &pmu, &filter, &perpkg,
     &unit, &metric_expr, &metric_name,
     &metric_group, eventcode);
   if (err)
    goto free_strings;
  }
  err = func(data, name, real_event(name, event), desc, long_desc,
      pmu, unit, perpkg, metric_expr, metric_name, metric_group);
free_strings:
  free(event);
  free(desc);
  free(name);
  free(long_desc);
  free(extra_desc);
  free(pmu);
  free(filter);
  free(perpkg);
  free(unit);
  free(metric_expr);
  free(metric_name);
  free(metric_group);
  free(arch_std);

  if (err)
   break;
  tok += j;
 }
 EXPECT(tok - tokens == len, tok, "unexpected objects at end");
 err = 0;
out_free:
 free_json(map, size, tokens);
 return err;
}
