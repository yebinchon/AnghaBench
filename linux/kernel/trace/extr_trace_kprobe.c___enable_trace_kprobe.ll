; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___enable_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___enable_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_kprobe*)* @__enable_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__enable_trace_kprobe(%struct.trace_kprobe* %0) #0 {
  %2 = alloca %struct.trace_kprobe*, align 8
  %3 = alloca i32, align 4
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %5 = call i64 @trace_kprobe_is_registered(%struct.trace_kprobe* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %9 = call i32 @trace_kprobe_has_gone(%struct.trace_kprobe* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %13 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %17 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %16, i32 0, i32 0
  %18 = call i32 @enable_kretprobe(%struct.TYPE_2__* %17)
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %21 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @enable_kprobe(i32* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %15
  br label %25

25:                                               ; preds = %24, %7, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @trace_kprobe_is_registered(%struct.trace_kprobe*) #1

declare dso_local i32 @trace_kprobe_has_gone(%struct.trace_kprobe*) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

declare dso_local i32 @enable_kretprobe(%struct.TYPE_2__*) #1

declare dso_local i32 @enable_kprobe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
