; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_add_dynamic_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_add_dynamic_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.evlist = type { i32 }
%struct.evsel = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.tep_format_field = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported field option %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"trace_fields\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot find event: %s\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"%s is not a tracepoint event\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Cannot find event field for %s.%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, i8*, i32)* @add_dynamic_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dynamic_entry(%struct.evlist* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evsel*, align 8
  %13 = alloca %struct.tep_format_field*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 4
  store i32 %16, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.evlist*, %struct.evlist** %5, align 8
  %18 = icmp eq %struct.evlist* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %126

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @parse_field_name(i8* %31, i8** %9, i8** %10, i8** %11)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %122

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %15, align 4
  br label %122

49:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.evlist*, %struct.evlist** %5, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @add_all_dynamic_fields(%struct.evlist* %55, i32 %56, i32 %57)
  store i32 %58, i32* %15, align 4
  br label %122

59:                                               ; preds = %50
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.evlist*, %struct.evlist** %5, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @add_all_matching_fields(%struct.evlist* %63, i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %122

68:                                               ; preds = %59
  %69 = load %struct.evlist*, %struct.evlist** %5, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call %struct.evsel* @find_evsel(%struct.evlist* %69, i8* %70)
  store %struct.evsel* %71, %struct.evsel** %12, align 8
  %72 = load %struct.evsel*, %struct.evsel** %12, align 8
  %73 = icmp eq %struct.evsel* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %15, align 4
  br label %122

79:                                               ; preds = %68
  %80 = load %struct.evsel*, %struct.evsel** %12, align 8
  %81 = getelementptr inbounds %struct.evsel, %struct.evsel* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PERF_TYPE_TRACEPOINT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %122

92:                                               ; preds = %79
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load %struct.evsel*, %struct.evsel** %12, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @add_evsel_fields(%struct.evsel* %97, i32 %98, i32 %99)
  store i32 %100, i32* %15, align 4
  br label %121

101:                                              ; preds = %92
  %102 = load %struct.evsel*, %struct.evsel** %12, align 8
  %103 = getelementptr inbounds %struct.evsel, %struct.evsel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call %struct.tep_format_field* @tep_find_any_field(i32 %104, i8* %105)
  store %struct.tep_format_field* %106, %struct.tep_format_field** %13, align 8
  %107 = load %struct.tep_format_field*, %struct.tep_format_field** %13, align 8
  %108 = icmp eq %struct.tep_format_field* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %110, i8* %111)
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %126

115:                                              ; preds = %101
  %116 = load %struct.evsel*, %struct.evsel** %12, align 8
  %117 = load %struct.tep_format_field*, %struct.tep_format_field** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @__dynamic_dimension__add(%struct.evsel* %116, %struct.tep_format_field* %117, i32 %118, i32 %119)
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %115, %96
  br label %122

122:                                              ; preds = %121, %87, %74, %62, %54, %44, %34
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %109, %27, %19
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @parse_field_name(i8*, i8**, i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i32 @add_all_dynamic_fields(%struct.evlist*, i32, i32) #1

declare dso_local i32 @add_all_matching_fields(%struct.evlist*, i8*, i32, i32) #1

declare dso_local %struct.evsel* @find_evsel(%struct.evlist*, i8*) #1

declare dso_local i32 @add_evsel_fields(%struct.evsel*, i32, i32) #1

declare dso_local %struct.tep_format_field* @tep_find_any_field(i32, i8*) #1

declare dso_local i32 @__dynamic_dimension__add(%struct.evsel*, %struct.tep_format_field*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
