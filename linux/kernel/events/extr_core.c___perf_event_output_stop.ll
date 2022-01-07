; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_output_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_output_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.perf_event* }
%struct.remote_output = type { i32, %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.stop_event_data = type { %struct.perf_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i8*)* @__perf_event_output_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_output_stop(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.remote_output*, align 8
  %7 = alloca %struct.ring_buffer*, align 8
  %8 = alloca %struct.stop_event_data, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  store %struct.perf_event* %11, %struct.perf_event** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.remote_output*
  store %struct.remote_output* %13, %struct.remote_output** %6, align 8
  %14 = load %struct.remote_output*, %struct.remote_output** %6, align 8
  %15 = getelementptr inbounds %struct.remote_output, %struct.remote_output* %14, i32 0, i32 1
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %15, align 8
  store %struct.ring_buffer* %16, %struct.ring_buffer** %7, align 8
  %17 = getelementptr inbounds %struct.stop_event_data, %struct.stop_event_data* %8, i32 0, i32 0
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  store %struct.perf_event* %18, %struct.perf_event** %17, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = call i32 @has_aux(%struct.perf_event* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %25 = icmp ne %struct.perf_event* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  store %struct.perf_event* %27, %struct.perf_event** %5, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ring_buffer* @rcu_dereference(i32 %31)
  %33 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %34 = icmp eq %struct.ring_buffer* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 @__perf_event_stop(%struct.stop_event_data* %8)
  %37 = load %struct.remote_output*, %struct.remote_output** %6, align 8
  %38 = getelementptr inbounds %struct.remote_output, %struct.remote_output* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %22, %35, %28
  ret void
}

declare dso_local i32 @has_aux(%struct.perf_event*) #1

declare dso_local %struct.ring_buffer* @rcu_dereference(i32) #1

declare dso_local i32 @__perf_event_stop(%struct.stop_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
