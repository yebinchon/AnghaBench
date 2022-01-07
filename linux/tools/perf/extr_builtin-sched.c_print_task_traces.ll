; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_print_task_traces.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_print_task_traces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, %struct.task_desc** }
%struct.task_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"task %6ld (%20s:%10ld), nr_events: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @print_task_traces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_task_traces(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  %3 = alloca %struct.task_desc*, align 8
  %4 = alloca i64, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %8 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %13 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %12, i32 0, i32 1
  %14 = load %struct.task_desc**, %struct.task_desc*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %14, i64 %15
  %17 = load %struct.task_desc*, %struct.task_desc** %16, align 8
  store %struct.task_desc* %17, %struct.task_desc** %3, align 8
  %18 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %19 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %22 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %25 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %28 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %11
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
