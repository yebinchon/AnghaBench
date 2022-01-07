; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_free_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_free_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { i32, i32, i32, %struct.TYPE_2__, %struct.synth_event*, %struct.synth_event* }
%struct.TYPE_2__ = type { %struct.synth_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synth_event*)* @free_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_synth_event(%struct.synth_event* %0) #0 {
  %2 = alloca %struct.synth_event*, align 8
  %3 = alloca i32, align 4
  store %struct.synth_event* %0, %struct.synth_event** %2, align 8
  %4 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %5 = icmp ne %struct.synth_event* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %11 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %16 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %15, i32 0, i32 5
  %17 = load %struct.synth_event*, %struct.synth_event** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %17, i64 %19
  %21 = call i32 @free_synth_field(%struct.synth_event* byval(%struct.synth_event) align 8 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %27 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %26, i32 0, i32 5
  %28 = load %struct.synth_event*, %struct.synth_event** %27, align 8
  %29 = call i32 @kfree(%struct.synth_event* %28)
  %30 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %31 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %30, i32 0, i32 4
  %32 = load %struct.synth_event*, %struct.synth_event** %31, align 8
  %33 = call i32 @kfree(%struct.synth_event* %32)
  %34 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %35 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.synth_event*, %struct.synth_event** %36, align 8
  %38 = call i32 @kfree(%struct.synth_event* %37)
  %39 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %40 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @free_synth_tracepoint(i32 %41)
  %43 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %44 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %43, i32 0, i32 1
  %45 = call i32 @free_synth_event_print_fmt(i32* %44)
  %46 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %47 = call i32 @kfree(%struct.synth_event* %46)
  br label %48

48:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @free_synth_field(%struct.synth_event* byval(%struct.synth_event) align 8) #1

declare dso_local i32 @kfree(%struct.synth_event*) #1

declare dso_local i32 @free_synth_tracepoint(i32) #1

declare dso_local i32 @free_synth_event_print_fmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
