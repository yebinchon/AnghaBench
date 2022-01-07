; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_tasks_setup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_tasks_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.report = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@perf_event__process_mmap = common dso_local global i32 0, align 4
@perf_event__process_mmap2 = common dso_local global i32 0, align 4
@perf_event__process_comm = common dso_local global i32 0, align 4
@perf_event__process_exit = common dso_local global i32 0, align 4
@perf_event__process_fork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.report*)* @tasks_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tasks_setup(%struct.report* %0) #0 {
  %2 = alloca %struct.report*, align 8
  store %struct.report* %0, %struct.report** %2, align 8
  %3 = load %struct.report*, %struct.report** %2, align 8
  %4 = getelementptr inbounds %struct.report, %struct.report* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_2__* %4, i32 0, i32 28)
  %6 = load %struct.report*, %struct.report** %2, align 8
  %7 = getelementptr inbounds %struct.report, %struct.report* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.report*, %struct.report** %2, align 8
  %10 = getelementptr inbounds %struct.report, %struct.report* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @perf_event__process_mmap, align 4
  %15 = load %struct.report*, %struct.report** %2, align 8
  %16 = getelementptr inbounds %struct.report, %struct.report* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @perf_event__process_mmap2, align 4
  %19 = load %struct.report*, %struct.report** %2, align 8
  %20 = getelementptr inbounds %struct.report, %struct.report* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @perf_event__process_comm, align 4
  %24 = load %struct.report*, %struct.report** %2, align 8
  %25 = getelementptr inbounds %struct.report, %struct.report* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @perf_event__process_exit, align 4
  %28 = load %struct.report*, %struct.report** %2, align 8
  %29 = getelementptr inbounds %struct.report, %struct.report* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @perf_event__process_fork, align 4
  %32 = load %struct.report*, %struct.report** %2, align 8
  %33 = getelementptr inbounds %struct.report, %struct.report* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.report*, %struct.report** %2, align 8
  %36 = getelementptr inbounds %struct.report, %struct.report* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
