; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8770_priv = type { i32, %struct.snd_soc_component* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8770_MSDIGVOL = common dso_local global i32 0, align 4
@WM8770_MSALGVOL = common dso_local global i32 0, align 4
@WM8770_VOUT1RVOL = common dso_local global i32 0, align 4
@WM8770_VOUT2RVOL = common dso_local global i32 0, align 4
@WM8770_VOUT3RVOL = common dso_local global i32 0, align 4
@WM8770_VOUT4RVOL = common dso_local global i32 0, align 4
@WM8770_DAC1RVOL = common dso_local global i32 0, align 4
@WM8770_DAC2RVOL = common dso_local global i32 0, align 4
@WM8770_DAC3RVOL = common dso_local global i32 0, align 4
@WM8770_DAC4RVOL = common dso_local global i32 0, align 4
@WM8770_DACMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8770_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8770_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8770_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8770_priv* %7, %struct.wm8770_priv** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %10 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %9, i32 0, i32 1
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %10, align 8
  %11 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %12 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @regulator_bulk_enable(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = call i32 @wm8770_reset(%struct.snd_soc_component* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %73

39:                                               ; preds = %28
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @WM8770_MSDIGVOL, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 256, i32 256)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @WM8770_MSALGVOL, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 256, i32 256)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @WM8770_VOUT1RVOL, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 256, i32 256)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @WM8770_VOUT2RVOL, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 256, i32 256)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @WM8770_VOUT3RVOL, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 256, i32 256)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @WM8770_VOUT4RVOL, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 256, i32 256)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @WM8770_DAC1RVOL, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 256, i32 256)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i32, i32* @WM8770_DAC2RVOL, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 256, i32 256)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = load i32, i32* @WM8770_DAC3RVOL, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 256, i32 256)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load i32, i32* @WM8770_DAC4RVOL, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 256, i32 256)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load i32, i32* @WM8770_DACMUTE, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 16, i32 16)
  br label %73

73:                                               ; preds = %39, %33
  %74 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %75 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %79 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @regulator_bulk_disable(i32 %77, i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %73, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8770_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
