; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_mbc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_mbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, i64, %struct.wm8994* }
%struct.wm8994 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm8958_mbc_cfg*, i64 }
%struct.wm8958_mbc_cfg = type { i32*, i32* }

@WM8958_DSP2_PROGRAM = common dso_local global i32 0, align 4
@WM8958_DSP2_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"MBC\00", align 1
@WM8958_MBC_BAND_1_K_1 = common dso_local global i64 0, align 8
@WM8958_MBC_BAND_2_LOWER_CUTOFF_C1_1 = common dso_local global i64 0, align 8
@WM8958_DSP2_EXECCONTROL = common dso_local global i64 0, align 8
@WM8958_DSP2_RUNR = common dso_local global i32 0, align 4
@WM8958_DSP2_CONFIG = common dso_local global i32 0, align 4
@WM8958_MBC_ENA = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_MASK = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm8958_dsp_start_mbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_dsp_start_mbc(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca %struct.wm8994*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8958_mbc_cfg*, align 8
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
  %15 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  %17 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %118

21:                                               ; preds = %2
  %22 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %23 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wm8958_dsp2_fw(%struct.snd_soc_component* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %30, i32 0)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %35 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %36 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %39 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %102

43:                                               ; preds = %32
  %44 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %45 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %46, align 8
  %48 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %49 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %47, i64 %50
  store %struct.wm8958_mbc_cfg* %51, %struct.wm8958_mbc_cfg** %8, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %73, %43
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @WM8958_MBC_BAND_1_K_1, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %8, align 8
  %66 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i64 %64, i32 %71)
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %52

76:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %8, align 8
  %80 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @WM8958_MBC_BAND_2_LOWER_CUTOFF_C1_1, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %8, align 8
  %91 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i64 %89, i32 %96)
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %77

101:                                              ; preds = %77
  br label %102

102:                                              ; preds = %101, %32
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %104 = load i64, i64* @WM8958_DSP2_EXECCONTROL, align 8
  %105 = load i32, i32* @WM8958_DSP2_RUNR, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i64 %104, i32 %105)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @WM8958_DSP2_CONFIG, align 4
  %109 = load i32, i32* @WM8958_MBC_ENA, align 4
  %110 = load i32, i32* @WM8958_MBC_SEL_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @WM8958_MBC_SEL_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* @WM8958_MBC_ENA, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %102, %20
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8958_dsp2_fw(%struct.snd_soc_component*, i8*, i64, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
