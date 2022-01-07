; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_enh_eq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_enh_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, i32, %struct.wm8994* }
%struct.wm8994 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm8958_enh_eq_cfg*, i64 }
%struct.wm8958_enh_eq_cfg = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"ENH_EQ\00", align 1
@WM8958_DSP2_PROGRAM = common dso_local global i32 0, align 4
@WM8958_DSP2_ENA = common dso_local global i32 0, align 4
@WM8958_DSP2_EXECCONTROL = common dso_local global i32 0, align 4
@WM8958_DSP2_RUNR = common dso_local global i32 0, align 4
@WM8958_DSP2_CONFIG = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_MASK = common dso_local global i32 0, align 4
@WM8958_MBC_ENA = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm8958_dsp_start_enh_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_dsp_start_enh_eq(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca %struct.wm8994*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8958_enh_eq_cfg*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8994_priv* %10, %struct.wm8994_priv** %5, align 8
  %11 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %12 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %11, i32 0, i32 2
  %13 = load %struct.wm8994*, %struct.wm8994** %12, align 8
  store %struct.wm8994* %13, %struct.wm8994** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wm8958_dsp2_fw(%struct.snd_soc_component* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i32 0)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %21 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %22 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %25 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %2
  %30 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %31 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.wm8958_enh_eq_cfg*, %struct.wm8958_enh_eq_cfg** %32, align 8
  %34 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %35 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.wm8958_enh_eq_cfg, %struct.wm8958_enh_eq_cfg* %33, i64 %36
  store %struct.wm8958_enh_eq_cfg* %37, %struct.wm8958_enh_eq_cfg** %8, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %29
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.wm8958_enh_eq_cfg*, %struct.wm8958_enh_eq_cfg** %8, align 8
  %41 = getelementptr inbounds %struct.wm8958_enh_eq_cfg, %struct.wm8958_enh_eq_cfg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 8704
  %49 = load %struct.wm8958_enh_eq_cfg*, %struct.wm8958_enh_eq_cfg** %8, align 8
  %50 = getelementptr inbounds %struct.wm8958_enh_eq_cfg, %struct.wm8958_enh_eq_cfg* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %46, i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @WM8958_DSP2_EXECCONTROL, align 4
  %64 = load i32, i32* @WM8958_DSP2_RUNR, align 4
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i32, i32* @WM8958_DSP2_CONFIG, align 4
  %68 = load i32, i32* @WM8958_MBC_SEL_MASK, align 4
  %69 = load i32, i32* @WM8958_MBC_ENA, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @WM8958_MBC_SEL_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @WM8958_MBC_ENA, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %70, i32 %75)
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8958_dsp2_fw(%struct.snd_soc_component*, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
