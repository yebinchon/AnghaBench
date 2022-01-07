; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_intel_model_duplicates.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_intel_model_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_FAM6_XEON_PHI_KNL = common dso_local global i32 0, align 4
@INTEL_FAM6_CANNONLAKE_L = common dso_local global i32 0, align 4
@INTEL_FAM6_ATOM_GOLDMONT_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_model_duplicates(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 135, label %5
    i32 136, label %5
    i32 31, label %5
    i32 131, label %5
    i32 130, label %5
    i32 134, label %6
    i32 129, label %6
    i32 128, label %7
    i32 141, label %9
    i32 142, label %9
    i32 132, label %10
    i32 133, label %10
    i32 137, label %10
    i32 138, label %10
    i32 140, label %11
    i32 139, label %11
    i32 143, label %13
  ]

5:                                                ; preds = %1, %1, %1, %1, %1
  store i32 136, i32* %2, align 4
  br label %17

6:                                                ; preds = %1, %1
  store i32 134, i32* %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @INTEL_FAM6_XEON_PHI_KNL, align 4
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1, %1
  store i32 141, i32* %2, align 4
  br label %17

10:                                               ; preds = %1, %1, %1, %1
  store i32 132, i32* %2, align 4
  br label %17

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @INTEL_FAM6_CANNONLAKE_L, align 4
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @INTEL_FAM6_ATOM_GOLDMONT_D, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %10, %9, %7, %6, %5
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
