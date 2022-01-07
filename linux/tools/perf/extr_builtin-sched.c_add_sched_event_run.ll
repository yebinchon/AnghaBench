; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_add_sched_event_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_add_sched_event_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32 }
%struct.task_desc = type { i32 }
%struct.sched_atom = type { i64, i64 }

@SCHED_EVENT_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.task_desc*, i64, i64)* @add_sched_event_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sched_event_run(%struct.perf_sched* %0, %struct.task_desc* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca %struct.task_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sched_atom*, align 8
  %10 = alloca %struct.sched_atom*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store %struct.task_desc* %1, %struct.task_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.task_desc*, %struct.task_desc** %6, align 8
  %12 = call %struct.sched_atom* @last_event(%struct.task_desc* %11)
  store %struct.sched_atom* %12, %struct.sched_atom** %10, align 8
  %13 = load %struct.sched_atom*, %struct.sched_atom** %10, align 8
  %14 = icmp ne %struct.sched_atom* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.sched_atom*, %struct.sched_atom** %10, align 8
  %17 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCHED_EVENT_RUN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %23 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.sched_atom*, %struct.sched_atom** %10, align 8
  %28 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  br label %45

31:                                               ; preds = %15, %4
  %32 = load %struct.task_desc*, %struct.task_desc** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call %struct.sched_atom* @get_new_event(%struct.task_desc* %32, i64 %33)
  store %struct.sched_atom* %34, %struct.sched_atom** %9, align 8
  %35 = load i64, i64* @SCHED_EVENT_RUN, align 8
  %36 = load %struct.sched_atom*, %struct.sched_atom** %9, align 8
  %37 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.sched_atom*, %struct.sched_atom** %9, align 8
  %40 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %31, %21
  ret void
}

declare dso_local %struct.sched_atom* @last_event(%struct.task_desc*) #1

declare dso_local %struct.sched_atom* @get_new_event(%struct.task_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
