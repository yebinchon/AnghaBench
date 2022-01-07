; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__rawptr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__rawptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i8* }
%struct.tep_format_field = type { i32, i32 }

@TEP_FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perf_evsel__rawptr(%struct.evsel* %0, %struct.perf_sample* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_format_field*, align 8
  %9 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.tep_format_field* @perf_evsel__field(%struct.evsel* %10, i8* %11)
  store %struct.tep_format_field* %12, %struct.tep_format_field** %8, align 8
  %13 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %14 = icmp ne %struct.tep_format_field* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %18 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %21 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TEP_FIELD_IS_DYNAMIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %29, i64 %33
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %26, %16
  %40 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %39, %15
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local %struct.tep_format_field* @perf_evsel__field(%struct.evsel*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
