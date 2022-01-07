; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_dai1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_dai1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i64, %struct.max98095_cdata* }
%struct.max98095_cdata = type { i32 }

@M98095_02A_DAI1_FORMAT = common dso_local global i32 0, align 4
@M98095_DAI_WS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M98095_027_DAI1_CLKMODE = common dso_local global i32 0, align 4
@M98095_CLKMODE_MASK = common dso_local global i32 0, align 4
@M98095_DAI_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid system clock frequency\0A\00", align 1
@M98095_028_DAI1_CLKCFG_HI = common dso_local global i32 0, align 4
@M98095_029_DAI1_CLKCFG_LO = common dso_local global i32 0, align 4
@M98095_02E_DAI1_FILTERS = common dso_local global i32 0, align 4
@M98095_DAI_DHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98095_dai1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_dai1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98095_priv*, align 8
  %10 = alloca %struct.max98095_cdata*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.max98095_priv* %18, %struct.max98095_priv** %9, align 8
  %19 = load %struct.max98095_priv*, %struct.max98095_priv** %9, align 8
  %20 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %19, i32 0, i32 1
  %21 = load %struct.max98095_cdata*, %struct.max98095_cdata** %20, align 8
  %22 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %21, i64 0
  store %struct.max98095_cdata* %22, %struct.max98095_cdata** %10, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_width(%struct.snd_pcm_hw_params* %25)
  switch i32 %26, label %38 [
    i32 16, label %27
    i32 24, label %32
  ]

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %29 = load i32, i32* @M98095_02A_DAI1_FORMAT, align 4
  %30 = load i32, i32* @M98095_DAI_WS, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 0)
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @M98095_02A_DAI1_FORMAT, align 4
  %35 = load i32, i32* @M98095_DAI_WS, align 4
  %36 = load i32, i32* @M98095_DAI_WS, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %115

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @rate_value(i32 %42, i32* %13)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %115

48:                                               ; preds = %41
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load i32, i32* @M98095_027_DAI1_CLKMODE, align 4
  %51 = load i32, i32* @M98095_CLKMODE_MASK, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.max98095_cdata*, %struct.max98095_cdata** %10, align 8
  %56 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @M98095_02A_DAI1_FORMAT, align 4
  %59 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %57, i32 %58)
  %60 = load i32, i32* @M98095_DAI_MAS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %48
  %64 = load %struct.max98095_priv*, %struct.max98095_priv** %9, align 8
  %65 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %115

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  %77 = icmp ult i32 %76, 50000
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i64 96, i64 48
  %80 = mul i64 65536, %79
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = mul i64 %80, %82
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.max98095_priv*, %struct.max98095_priv** %9, align 8
  %86 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @do_div(i64 %84, i64 %87)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = load i32, i32* @M98095_028_DAI1_CLKCFG_HI, align 4
  %91 = load i64, i64* %11, align 8
  %92 = lshr i64 %91, 8
  %93 = and i64 %92, 127
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %89, i32 %90, i64 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %96 = load i32, i32* @M98095_029_DAI1_CLKCFG_LO, align 4
  %97 = load i64, i64* %11, align 8
  %98 = and i64 %97, 255
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i64 %98)
  br label %100

100:                                              ; preds = %75, %48
  %101 = load i32, i32* %12, align 4
  %102 = icmp ult i32 %101, 50000
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %105 = load i32, i32* @M98095_02E_DAI1_FILTERS, align 4
  %106 = load i32, i32* @M98095_DAI_DHF, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 0)
  br label %114

108:                                              ; preds = %100
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = load i32, i32* @M98095_02E_DAI1_FILTERS, align 4
  %111 = load i32, i32* @M98095_DAI_DHF, align 4
  %112 = load i32, i32* @M98095_DAI_DHF, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %103
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %68, %45, %38
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @rate_value(i32, i32*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
