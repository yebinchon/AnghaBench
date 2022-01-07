; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__intval.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__intval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.tep_format_field = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__intval(%struct.evsel* %0, %struct.perf_sample* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_format_field*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.evsel*, %struct.evsel** %5, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.tep_format_field* @perf_evsel__field(%struct.evsel* %9, i8* %10)
  store %struct.tep_format_field* %11, %struct.tep_format_field** %8, align 8
  %12 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %13 = icmp ne %struct.tep_format_field* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %17 = icmp ne %struct.tep_format_field* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %21 = load %struct.evsel*, %struct.evsel** %5, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @format_field__intval(%struct.tep_format_field* %19, %struct.perf_sample* %20, i32 %23)
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 [ %24, %18 ], [ 0, %25 ]
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.tep_format_field* @perf_evsel__field(%struct.evsel*, i8*) #1

declare dso_local i32 @format_field__intval(%struct.tep_format_field*, %struct.perf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
