; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_create_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_create_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, %struct.task_desc**, i32, i32 }
%struct.task_desc = type { i32, i64, i32, i32, i32 }
%struct.sched_thread_parms = type { i32, %struct.perf_sched*, %struct.task_desc* }

@PTHREAD_STACK_MIN = common dso_local global i32 0, align 4
@thread_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @create_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_tasks(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  %3 = alloca %struct.task_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sched_thread_parms*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  %8 = call i32 @pthread_attr_init(i32* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* @PTHREAD_STACK_MIN, align 4
  %12 = call i64 @max(i32 16384, i32 %11)
  %13 = call i32 @pthread_attr_setstacksize(i32* %4, i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %17 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %16, i32 0, i32 3
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %22 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %21, i32 0, i32 2
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BUG_ON(i32 %24)
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %72, %1
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %29 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %26
  %33 = call %struct.sched_thread_parms* @malloc(i32 24)
  store %struct.sched_thread_parms* %33, %struct.sched_thread_parms** %7, align 8
  %34 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %7, align 8
  %35 = icmp eq %struct.sched_thread_parms* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %39 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %38, i32 0, i32 1
  %40 = load %struct.task_desc**, %struct.task_desc*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %40, i64 %41
  %43 = load %struct.task_desc*, %struct.task_desc** %42, align 8
  store %struct.task_desc* %43, %struct.task_desc** %3, align 8
  %44 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %7, align 8
  %45 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %44, i32 0, i32 2
  store %struct.task_desc* %43, %struct.task_desc** %45, align 8
  %46 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %47 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %7, align 8
  %48 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %47, i32 0, i32 1
  store %struct.perf_sched* %46, %struct.perf_sched** %48, align 8
  %49 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @self_open_counters(%struct.perf_sched* %49, i64 %50)
  %52 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %7, align 8
  %53 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %55 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %54, i32 0, i32 4
  %56 = call i32 @sem_init(i32* %55, i32 0, i32 0)
  %57 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %58 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %57, i32 0, i32 3
  %59 = call i32 @sem_init(i32* %58, i32 0, i32 0)
  %60 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %61 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %60, i32 0, i32 2
  %62 = call i32 @sem_init(i32* %61, i32 0, i32 0)
  %63 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %64 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %66 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %65, i32 0, i32 0
  %67 = load i32, i32* @thread_func, align 4
  %68 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %7, align 8
  %69 = call i32 @pthread_create(i32* %66, i32* %4, i32 %67, %struct.sched_thread_parms* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BUG_ON(i32 %70)
  br label %72

72:                                               ; preds = %32
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %26

75:                                               ; preds = %26
  ret void
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i64) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.sched_thread_parms* @malloc(i32) #1

declare dso_local i32 @self_open_counters(%struct.perf_sched*, i64) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.sched_thread_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
