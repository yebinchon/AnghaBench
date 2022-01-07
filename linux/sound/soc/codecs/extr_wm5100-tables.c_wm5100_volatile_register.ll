; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100-tables.c_wm5100_volatile_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100-tables.c_wm5100_volatile_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@WM5100_DSP1_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP1_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP1_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_DM_511 = common dso_local global i32 0, align 4
@WM5100_DSP2_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP2_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP2_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_DM_511 = common dso_local global i32 0, align 4
@WM5100_DSP3_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP3_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP3_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_DM_511 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm5100_volatile_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 141, label %7
    i32 140, label %7
    i32 135, label %7
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
    i32 138, label %7
    i32 137, label %7
    i32 136, label %7
    i32 130, label %7
    i32 129, label %7
    i32 139, label %7
    i32 131, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %82

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WM5100_DSP1_PM_0, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WM5100_DSP1_PM_1535, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %80, label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WM5100_DSP1_ZM_0, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WM5100_DSP1_ZM_2047, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %80, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WM5100_DSP1_DM_0, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WM5100_DSP1_DM_511, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %80, label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WM5100_DSP2_PM_0, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WM5100_DSP2_PM_1535, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %80, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @WM5100_DSP2_ZM_0, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @WM5100_DSP2_ZM_2047, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %80, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @WM5100_DSP2_DM_0, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @WM5100_DSP2_DM_511, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @WM5100_DSP3_PM_0, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @WM5100_DSP3_PM_1535, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @WM5100_DSP3_ZM_0, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @WM5100_DSP3_ZM_2047, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @WM5100_DSP3_DM_0, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @WM5100_DSP3_DM_511, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %68, %60, %52, %44, %36, %28, %20, %12
  store i32 1, i32* %3, align 4
  br label %82

81:                                               ; preds = %76, %72
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %80, %7
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
