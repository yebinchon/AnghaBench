; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_perf_limit_reasons_probe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_perf_limit_reasons_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@genuine_intel = common dso_local global i32 0, align 4
@do_gfx_perf_limit_reasons = common dso_local global i32 0, align 4
@do_core_perf_limit_reasons = common dso_local global i32 0, align 4
@do_ring_perf_limit_reasons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_limit_reasons_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @genuine_intel, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %16 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %12, %12, %12
  store i32 1, i32* @do_gfx_perf_limit_reasons, align 4
  br label %15

15:                                               ; preds = %12, %14
  store i32 1, i32* @do_core_perf_limit_reasons, align 4
  store i32 1, i32* @do_ring_perf_limit_reasons, align 4
  br label %16

16:                                               ; preds = %12, %15
  br label %17

17:                                               ; preds = %16, %11, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
