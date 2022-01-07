; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_process_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_process_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.ordered_events* }
%struct.ordered_events = type { i32 }

@done = common dso_local global i32 0, align 4
@OE_FLUSH__TOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to process events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @process_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_top*, align 8
  %4 = alloca %struct.ordered_events*, align 8
  %5 = alloca %struct.ordered_events*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.perf_top*
  store %struct.perf_top* %7, %struct.perf_top** %3, align 8
  br label %8

8:                                                ; preds = %50, %21, %1
  %9 = load i32, i32* @done, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %14 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load %struct.ordered_events*, %struct.ordered_events** %15, align 8
  store %struct.ordered_events* %16, %struct.ordered_events** %5, align 8
  %17 = load %struct.ordered_events*, %struct.ordered_events** %5, align 8
  %18 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 @usleep(i32 100)
  br label %8

23:                                               ; preds = %12
  %24 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %25 = call %struct.ordered_events* @rotate_queues(%struct.perf_top* %24)
  store %struct.ordered_events* %25, %struct.ordered_events** %4, align 8
  %26 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %27 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %31 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %34 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %37 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @pthread_cond_wait(i32* %35, i32* %38)
  %40 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %41 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  %44 = load %struct.ordered_events*, %struct.ordered_events** %4, align 8
  %45 = load i32, i32* @OE_FLUSH__TOP, align 4
  %46 = call i64 @ordered_events__flush(%struct.ordered_events* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %23
  br label %8

51:                                               ; preds = %8
  ret i8* null
}

declare dso_local i32 @usleep(i32) #1

declare dso_local %struct.ordered_events* @rotate_queues(%struct.perf_top*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @ordered_events__flush(%struct.ordered_events*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
