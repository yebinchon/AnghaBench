; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32 }
%struct.sched_atom = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.sched_atom*)* @perf_sched__process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sched__process_event(%struct.perf_sched* %0, %struct.sched_atom* %1) #0 {
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca %struct.sched_atom*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  store %struct.sched_atom* %1, %struct.sched_atom** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %7 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %42 [
    i32 130, label %9
    i32 129, label %15
    i32 128, label %28
    i32 131, label %41
  ]

9:                                                ; preds = %2
  %10 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %11 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %12 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @burn_nsecs(%struct.perf_sched* %10, i32 %13)
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %17 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %22 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sem_wait(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BUG_ON(i32 %26)
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %30 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.sched_atom*, %struct.sched_atom** %4, align 8
  %35 = getelementptr inbounds %struct.sched_atom, %struct.sched_atom* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sem_post(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BUG_ON(i32 %39)
  br label %44

41:                                               ; preds = %2
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @BUG_ON(i32 1)
  br label %44

44:                                               ; preds = %42, %41, %38, %25, %9
  ret void
}

declare dso_local i32 @burn_nsecs(%struct.perf_sched*, i32) #1

declare dso_local i32 @sem_wait(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sem_post(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
