; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_get_aux_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_get_aux_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event*)* @perf_get_aux_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_get_aux_event(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %7 = icmp ne %struct.perf_event* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = call i32 @perf_aux_output_match(%struct.perf_event* %10, %struct.perf_event* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %9
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = call i32 @atomic_long_inc_not_zero(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  store %struct.perf_event* %22, %struct.perf_event** %24, align 8
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %20, %14, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @perf_aux_output_match(%struct.perf_event*, %struct.perf_event*) #1

declare dso_local i32 @atomic_long_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
