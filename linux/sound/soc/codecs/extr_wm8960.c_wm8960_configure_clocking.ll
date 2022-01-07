; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_clocking.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_clocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i64, i32, i32 }

@WM8960_IFACE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Codec is slave mode, no need to configure clock\0A\00", align 1
@WM8960_SYSCLK_MCLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"No MCLK configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8960_SYSCLK_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"No SYSCLK configured\0A\00", align 1
@WM8960_SYSCLK_PLL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to configure clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to configure clock via PLL\0A\00", align 1
@WM8960_CLOCK1 = common dso_local global i32 0, align 4
@WM8960_CLOCK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8960_configure_clocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_configure_clocking(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8960_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8960_priv* %13, %struct.wm8960_priv** %4, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @WM8960_IFACE1, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %138

25:                                               ; preds = %1
  %26 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %27 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WM8960_SYSCLK_MCLK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %33 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %138

43:                                               ; preds = %31, %25
  %44 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %45 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  %47 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %48 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WM8960_SYSCLK_AUTO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = call i32 @wm8960_set_pll(%struct.snd_soc_component* %53, i32 0, i32 0)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %43
  %57 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %58 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %63 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %72

65:                                               ; preds = %56
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %138

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %75 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WM8960_SYSCLK_PLL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @wm8960_configure_sysclk(%struct.wm8960_priv* %80, i32 %81, i32* %8, i32* %9, i32* %10)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %118

86:                                               ; preds = %79
  %87 = load %struct.wm8960_priv*, %struct.wm8960_priv** %4, align 8
  %88 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WM8960_SYSCLK_AUTO, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %138

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %73
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @wm8960_configure_pll(%struct.snd_soc_component* %102, i32 %103, i32* %8, i32* %9, i32* %10)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %138

113:                                              ; preds = %101
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @wm8960_set_pll(%struct.snd_soc_component* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %85
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %120 = load i32, i32* @WM8960_CLOCK1, align 4
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 %121, 1
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 6, i32 %122)
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %125 = load i32, i32* @WM8960_CLOCK1, align 4
  %126 = load i32, i32* %9, align 4
  %127 = shl i32 %126, 3
  %128 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %124, i32 %125, i32 56, i32 %127)
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %130 = load i32, i32* @WM8960_CLOCK1, align 4
  %131 = load i32, i32* %9, align 4
  %132 = shl i32 %131, 6
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %129, i32 %130, i32 448, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = load i32, i32* @WM8960_CLOCK2, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %134, i32 %135, i32 15, i32 %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %118, %107, %92, %65, %36, %20
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wm8960_set_pll(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wm8960_configure_sysclk(%struct.wm8960_priv*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @wm8960_configure_pll(%struct.snd_soc_component*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
