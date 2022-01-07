; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__append_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__append_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i8*, i8*)* @perf_evsel__append_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__append_filter(%struct.evsel* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.evsel*, %struct.evsel** %5, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.evsel*, %struct.evsel** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @perf_evsel__set_filter(%struct.evsel* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.evsel*, %struct.evsel** %5, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @asprintf(i8** %8, i8* %18, i8* %21, i8* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.evsel*, %struct.evsel** %5, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.evsel*, %struct.evsel** %5, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @perf_evsel__set_filter(%struct.evsel*, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
