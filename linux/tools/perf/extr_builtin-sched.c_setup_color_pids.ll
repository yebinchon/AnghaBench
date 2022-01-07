; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_setup_color_pids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_setup_color_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_thread_map*, i32 }
%struct.perf_thread_map = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to get thread map from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @setup_color_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_color_pids(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca %struct.perf_thread_map*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %5 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %6 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %13 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.perf_thread_map* @thread_map__new_by_tid_str(i32 %15)
  store %struct.perf_thread_map* %16, %struct.perf_thread_map** %4, align 8
  %17 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %18 = icmp ne %struct.perf_thread_map* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %21 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %2, align 4
  br label %30

25:                                               ; preds = %11
  %26 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %27 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %28 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.perf_thread_map* %26, %struct.perf_thread_map** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %19, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.perf_thread_map* @thread_map__new_by_tid_str(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
