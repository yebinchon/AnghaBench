; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_synth.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { %struct.tracepoint* }
%struct.tracepoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tracepoint_func = type { i8*, i32 (i8*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synth_event*, i32*, i32)* @trace_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_synth(%struct.synth_event* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.synth_event*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tracepoint*, align 8
  %8 = alloca %struct.tracepoint_func*, align 8
  %9 = alloca i32 (i8*, i32*, i32)*, align 8
  %10 = alloca i8*, align 8
  store %struct.synth_event* %0, %struct.synth_event** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %12 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %11, i32 0, i32 0
  %13 = load %struct.tracepoint*, %struct.tracepoint** %12, align 8
  store %struct.tracepoint* %13, %struct.tracepoint** %7, align 8
  %14 = load %struct.tracepoint*, %struct.tracepoint** %7, align 8
  %15 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %3
  %23 = call i32 (...) @raw_smp_processor_id()
  %24 = call i32 @cpu_online(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %55

27:                                               ; preds = %22
  %28 = load %struct.tracepoint*, %struct.tracepoint** %7, align 8
  %29 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.tracepoint_func* @rcu_dereference_sched(i32 %30)
  store %struct.tracepoint_func* %31, %struct.tracepoint_func** %8, align 8
  %32 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %33 = icmp ne %struct.tracepoint_func* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %47, %34
  %36 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %37 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %36, i32 0, i32 1
  %38 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %37, align 8
  store i32 (i8*, i32*, i32)* %38, i32 (i8*, i32*, i32)** %9, align 8
  %39 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %40 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %42(i8* %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %49 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %48, i32 1
  store %struct.tracepoint_func* %49, %struct.tracepoint_func** %8, align 8
  %50 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %49, i32 0, i32 1
  %51 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %50, align 8
  %52 = icmp ne i32 (i8*, i32*, i32)* %51, null
  br i1 %52, label %35, label %53

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %27
  br label %55

55:                                               ; preds = %26, %54, %3
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.tracepoint_func* @rcu_dereference_sched(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
