; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_buffer_ftrace_now.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_buffer_ftrace_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_buffer*, i32)* @buffer_ftrace_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_ftrace_now(%struct.trace_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trace_buffer* %0, %struct.trace_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @trace_clock_local()
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ring_buffer_time_stamp(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ring_buffer_normalize_time_stamp(i32 %21, i32 %22, i32* %6)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @trace_clock_local(...) #1

declare dso_local i32 @ring_buffer_time_stamp(i32, i32) #1

declare dso_local i32 @ring_buffer_normalize_time_stamp(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
