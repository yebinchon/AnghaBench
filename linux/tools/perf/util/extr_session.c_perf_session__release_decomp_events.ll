; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__release_decomp_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__release_decomp_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.decomp* }
%struct.decomp = type { i64, %struct.decomp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_session*)* @perf_session__release_decomp_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_session__release_decomp_events(%struct.perf_session* %0) #0 {
  %2 = alloca %struct.perf_session*, align 8
  %3 = alloca %struct.decomp*, align 8
  %4 = alloca %struct.decomp*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_session* %0, %struct.perf_session** %2, align 8
  %6 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %7 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %6, i32 0, i32 0
  %8 = load %struct.decomp*, %struct.decomp** %7, align 8
  store %struct.decomp* %8, %struct.decomp** %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.decomp*, %struct.decomp** %3, align 8
  store %struct.decomp* %10, %struct.decomp** %4, align 8
  %11 = load %struct.decomp*, %struct.decomp** %4, align 8
  %12 = icmp eq %struct.decomp* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %25

14:                                               ; preds = %9
  %15 = load %struct.decomp*, %struct.decomp** %4, align 8
  %16 = getelementptr inbounds %struct.decomp, %struct.decomp* %15, i32 0, i32 1
  %17 = load %struct.decomp*, %struct.decomp** %16, align 8
  store %struct.decomp* %17, %struct.decomp** %3, align 8
  %18 = load %struct.decomp*, %struct.decomp** %4, align 8
  %19 = getelementptr inbounds %struct.decomp, %struct.decomp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.decomp*, %struct.decomp** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @munmap(%struct.decomp* %21, i64 %22)
  br label %24

24:                                               ; preds = %14
  br i1 true, label %9, label %25

25:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @munmap(%struct.decomp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
