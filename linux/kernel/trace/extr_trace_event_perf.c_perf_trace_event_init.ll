; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*, %struct.perf_event*)* @perf_trace_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_trace_event_init(%struct.trace_event_call* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = call i32 @perf_trace_event_perm(%struct.trace_event_call* %7, %struct.perf_event* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = call i32 @perf_trace_event_reg(%struct.trace_event_call* %15, %struct.perf_event* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = call i32 @perf_trace_event_open(%struct.perf_event* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = call i32 @perf_trace_event_unreg(%struct.perf_event* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27, %20, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @perf_trace_event_perm(%struct.trace_event_call*, %struct.perf_event*) #1

declare dso_local i32 @perf_trace_event_reg(%struct.trace_event_call*, %struct.perf_event*) #1

declare dso_local i32 @perf_trace_event_open(%struct.perf_event*) #1

declare dso_local i32 @perf_trace_event_unreg(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
