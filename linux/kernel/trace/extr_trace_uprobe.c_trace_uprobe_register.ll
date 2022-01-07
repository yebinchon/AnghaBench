; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_event_file = type { i32 }

@uprobe_perf_close = common dso_local global i32 0, align 4
@uprobe_perf_filter = common dso_local global i32* null, align 8
@uprobe_perf_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*, i32, i8*)* @trace_uprobe_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_uprobe_register(%struct.trace_event_call* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_event_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trace_event_file*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.trace_event_file*
  store %struct.trace_event_file* %10, %struct.trace_event_file** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 128, label %16
  ]

12:                                               ; preds = %3
  %13 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %14 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %15 = call i32 @probe_event_enable(%struct.trace_event_call* %13, %struct.trace_event_file* %14, i32* null)
  store i32 %15, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %18 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %19 = call i32 @probe_event_disable(%struct.trace_event_call* %17, %struct.trace_event_file* %18)
  store i32 0, i32* %4, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %16, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @probe_event_enable(%struct.trace_event_call*, %struct.trace_event_file*, i32*) #1

declare dso_local i32 @probe_event_disable(%struct.trace_event_call*, %struct.trace_event_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
