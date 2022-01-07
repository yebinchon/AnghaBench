; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i32 }

@WM8996_REG_SYNC = common dso_local global i32 0, align 4
@WM8996_AIF_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8996_SYSCLK_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported clock source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8996_AIF_RATE = common dso_local global i32 0, align 4
@WM8996_SYSCLK_RATE = common dso_local global i32 0, align 4
@WM8996_SYSCLK_DIV = common dso_local global i32 0, align 4
@WM8996_LFCLK_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported clock rate %dHz\0A\00", align 1
@WM8996_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8996_SYSCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8996_SYSCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@WM8996_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8996_CONTROL_INTERFACE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8996_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8996_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8996_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %10, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %21 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8996_priv* %21, %struct.wm8996_priv** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @WM8996_REG_SYNC, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %25 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %31 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %131

35:                                               ; preds = %28, %4
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %37 = load i32, i32* @WM8996_AIF_CLOCKING_1, align 4
  %38 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %36, i32 %37)
  %39 = load i32, i32* @WM8996_SYSCLK_ENA, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %42 = load i32, i32* @WM8996_AIF_CLOCKING_1, align 4
  %43 = load i32, i32* @WM8996_SYSCLK_ENA, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %58 [
    i32 129, label %46
    i32 128, label %50
    i32 130, label %54
  ]

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %49 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %15, align 4
  br label %66

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %53 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %15, align 4
  br label %66

54:                                               ; preds = %35
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %57 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 2, i32* %15, align 4
  br label %66

58:                                               ; preds = %35
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %131

66:                                               ; preds = %54, %50, %46
  %67 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %68 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %89 [
    i32 5644800, label %70
    i32 6144000, label %70
    i32 22579200, label %75
    i32 24576000, label %75
    i32 11289600, label %81
    i32 12288000, label %81
    i32 32000, label %87
    i32 32768, label %87
  ]

70:                                               ; preds = %66, %66
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %72 = load i32, i32* @WM8996_AIF_RATE, align 4
  %73 = load i32, i32* @WM8996_SYSCLK_RATE, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 0)
  br label %99

75:                                               ; preds = %66, %66
  %76 = load i32, i32* @WM8996_SYSCLK_DIV, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %78 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = udiv i32 %79, 2
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %66, %66, %75
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %83 = load i32, i32* @WM8996_AIF_RATE, align 4
  %84 = load i32, i32* @WM8996_SYSCLK_RATE, align 4
  %85 = load i32, i32* @WM8996_SYSCLK_RATE, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  br label %99

87:                                               ; preds = %66, %66
  %88 = load i32, i32* @WM8996_LFCLK_ENA, align 4
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %99

89:                                               ; preds = %66
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %94 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %131

99:                                               ; preds = %87, %81, %70
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %101 = call i32 @wm8996_update_bclk(%struct.snd_soc_component* %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %103 = load i32, i32* @WM8996_AIF_CLOCKING_1, align 4
  %104 = load i32, i32* @WM8996_SYSCLK_SRC_MASK, align 4
  %105 = load i32, i32* @WM8996_SYSCLK_DIV_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @WM8996_SYSCLK_SRC_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %102, i32 %103, i32 %106, i32 %111)
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %114 = load i32, i32* @WM8996_CLOCKING_1, align 4
  %115 = load i32, i32* @WM8996_LFCLK_ENA, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %119 = load i32, i32* @WM8996_CONTROL_INTERFACE_1, align 4
  %120 = load i32, i32* @WM8996_REG_SYNC, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %124 = load i32, i32* @WM8996_AIF_CLOCKING_1, align 4
  %125 = load i32, i32* @WM8996_SYSCLK_ENA, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.wm8996_priv*, %struct.wm8996_priv** %11, align 8
  %130 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %99, %89, %58, %34
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @wm8996_update_bclk(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
