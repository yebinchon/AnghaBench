; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_set_synth_event_print_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_set_synth_event_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i8*, %struct.synth_event* }
%struct.synth_event = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*)* @set_synth_event_print_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_synth_event_print_fmt(%struct.trace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca %struct.synth_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %3, align 8
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %8 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %7, i32 0, i32 1
  %9 = load %struct.synth_event*, %struct.synth_event** %8, align 8
  store %struct.synth_event* %9, %struct.synth_event** %4, align 8
  %10 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %11 = call i32 @__set_synth_event_print_fmt(%struct.synth_event* %10, i8* null, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @__set_synth_event_print_fmt(%struct.synth_event* %22, i8* %23, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %29 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @__set_synth_event_print_fmt(%struct.synth_event*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
