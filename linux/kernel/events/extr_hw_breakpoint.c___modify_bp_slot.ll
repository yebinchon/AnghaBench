; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c___modify_bp_slot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c___modify_bp_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @__modify_bp_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__modify_bp_slot(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @__release_bp_slot(%struct.perf_event* %8, i32 %9)
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @__reserve_bp_slot(%struct.perf_event* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__reserve_bp_slot(%struct.perf_event* %17, i32 %18)
  %20 = call i32 @WARN_ON(i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @__release_bp_slot(%struct.perf_event*, i32) #1

declare dso_local i32 @__reserve_bp_slot(%struct.perf_event*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
