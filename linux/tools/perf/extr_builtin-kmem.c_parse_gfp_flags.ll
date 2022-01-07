; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_parse_gfp_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_parse_gfp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfp_flag = type { i32, i32, i32 }
%struct.evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_sample = type { i32, i32, i32 }
%struct.tep_record = type { i32, i32, i32 }
%struct.trace_seq = type { i32* }

@nr_gfps = common dso_local global i32 0, align 4
@gfps = common dso_local global %struct.gfp_flag* null, align 8
@gfpcmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TEP_PRINT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gfp_flags=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*, i32)* @parse_gfp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_gfp_flags(%struct.evsel* %0, %struct.perf_sample* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tep_record, align 4
  %9 = alloca %struct.trace_seq, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gfp_flag, align 4
  %13 = alloca %struct.gfp_flag*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %8, i32 0, i32 0
  %15 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %16 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %8, i32 0, i32 1
  %19 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %20 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %8, i32 0, i32 2
  %23 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %24 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  store i8* null, i8** %11, align 8
  %26 = load i32, i32* @nr_gfps, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %12, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %12, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %12, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.gfp_flag*, %struct.gfp_flag** @gfps, align 8
  %34 = load i32, i32* @nr_gfps, align 4
  %35 = load i32, i32* @gfpcmp, align 4
  %36 = call i64 @bsearch(%struct.gfp_flag* %12, %struct.gfp_flag* %33, i32 %34, i32 12, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %113

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %3
  %41 = call i32 @trace_seq_init(%struct.trace_seq* %9)
  %42 = load %struct.evsel*, %struct.evsel** %5, align 8
  %43 = getelementptr inbounds %struct.evsel, %struct.evsel* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TEP_PRINT_INFO, align 4
  %48 = call i32 @tep_print_event(i32 %46, %struct.trace_seq* %9, %struct.tep_record* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %9, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i8* @strtok_r(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %109, %40
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %111

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %109, label %59

59:                                               ; preds = %55
  %60 = load %struct.gfp_flag*, %struct.gfp_flag** @gfps, align 8
  %61 = load i32, i32* @nr_gfps, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 12
  %65 = trunc i64 %64 to i32
  %66 = call %struct.gfp_flag* @realloc(%struct.gfp_flag* %60, i32 %65)
  store %struct.gfp_flag* %66, %struct.gfp_flag** %13, align 8
  %67 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %68 = icmp eq %struct.gfp_flag* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %113

72:                                               ; preds = %59
  %73 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  store %struct.gfp_flag* %73, %struct.gfp_flag** @gfps, align 8
  %74 = load i32, i32* @nr_gfps, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @nr_gfps, align 4
  %76 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %76, i64 %77
  store %struct.gfp_flag* %78, %struct.gfp_flag** %13, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %81 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 10
  %84 = call i32 @strdup(i8* %83)
  %85 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %86 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 10
  %89 = call i32 @compact_gfp_flags(i8* %88)
  %90 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %91 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %93 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %72
  %97 = load %struct.gfp_flag*, %struct.gfp_flag** %13, align 8
  %98 = getelementptr inbounds %struct.gfp_flag, %struct.gfp_flag* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96, %72
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %113

104:                                              ; preds = %96
  %105 = load %struct.gfp_flag*, %struct.gfp_flag** @gfps, align 8
  %106 = load i32, i32* @nr_gfps, align 4
  %107 = load i32, i32* @gfpcmp, align 4
  %108 = call i32 @qsort(%struct.gfp_flag* %105, i32 %106, i32 12, i32 %107)
  br label %109

109:                                              ; preds = %104, %55
  %110 = call i8* @strtok_r(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  store i8* %110, i8** %10, align 8
  br label %52

111:                                              ; preds = %52
  %112 = call i32 @trace_seq_destroy(%struct.trace_seq* %9)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %101, %69, %38
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @bsearch(%struct.gfp_flag*, %struct.gfp_flag*, i32, i32, i32) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @tep_print_event(i32, %struct.trace_seq*, %struct.tep_record*, i8*, i32) #1

declare dso_local i8* @strtok_r(i32*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.gfp_flag* @realloc(%struct.gfp_flag*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @compact_gfp_flags(i8*) #1

declare dso_local i32 @qsort(%struct.gfp_flag*, i32, i32, i32) #1

declare dso_local i32 @trace_seq_destroy(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
