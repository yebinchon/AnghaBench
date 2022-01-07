; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { i64, %struct.max98088_cdata* }
%struct.max98088_cdata = type { i32 }

@M98088_REG_14_DAI1_FORMAT = common dso_local global i32 0, align 4
@M98088_DAI_WS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M98088_REG_51_PWR_SYS = common dso_local global i32 0, align 4
@M98088_SHDNRUN = common dso_local global i32 0, align 4
@M98088_REG_11_DAI1_CLKMODE = common dso_local global i32 0, align 4
@M98088_CLKMODE_MASK = common dso_local global i32 0, align 4
@M98088_DAI_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid system clock frequency\0A\00", align 1
@M98088_REG_12_DAI1_CLKCFG_HI = common dso_local global i32 0, align 4
@M98088_REG_13_DAI1_CLKCFG_LO = common dso_local global i32 0, align 4
@M98088_REG_18_DAI1_FILTERS = common dso_local global i32 0, align 4
@M98088_DAI_DHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98088_dai1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_dai1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98088_priv*, align 8
  %10 = alloca %struct.max98088_cdata*, align 8
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
  %18 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.max98088_priv* %18, %struct.max98088_priv** %9, align 8
  %19 = load %struct.max98088_priv*, %struct.max98088_priv** %9, align 8
  %20 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %19, i32 0, i32 1
  %21 = load %struct.max98088_cdata*, %struct.max98088_cdata** %20, align 8
  %22 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %21, i64 0
  store %struct.max98088_cdata* %22, %struct.max98088_cdata** %10, align 8
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
  %29 = load i32, i32* @M98088_REG_14_DAI1_FORMAT, align 4
  %30 = load i32, i32* @M98088_DAI_WS, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 0)
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @M98088_REG_14_DAI1_FORMAT, align 4
  %35 = load i32, i32* @M98088_DAI_WS, align 4
  %36 = load i32, i32* @M98088_DAI_WS, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %124

41:                                               ; preds = %32, %27
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %43 = load i32, i32* @M98088_REG_51_PWR_SYS, align 4
  %44 = load i32, i32* @M98088_SHDNRUN, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @rate_value(i32 %46, i32* %13)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %124

52:                                               ; preds = %41
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i32, i32* @M98088_REG_11_DAI1_CLKMODE, align 4
  %55 = load i32, i32* @M98088_CLKMODE_MASK, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.max98088_cdata*, %struct.max98088_cdata** %10, align 8
  %60 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @M98088_REG_14_DAI1_FORMAT, align 4
  %63 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %61, i32 %62)
  %64 = load i32, i32* @M98088_DAI_MAS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %52
  %68 = load %struct.max98088_priv*, %struct.max98088_priv** %9, align 8
  %69 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %124

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %80, 50000
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i64 96, i64 48
  %84 = mul i64 65536, %83
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %84, %86
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.max98088_priv*, %struct.max98088_priv** %9, align 8
  %90 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @do_div(i64 %88, i64 %91)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %94 = load i32, i32* @M98088_REG_12_DAI1_CLKCFG_HI, align 4
  %95 = load i64, i64* %11, align 8
  %96 = lshr i64 %95, 8
  %97 = and i64 %96, 127
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %93, i32 %94, i64 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %100 = load i32, i32* @M98088_REG_13_DAI1_CLKCFG_LO, align 4
  %101 = load i64, i64* %11, align 8
  %102 = and i64 %101, 255
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i64 %102)
  br label %104

104:                                              ; preds = %79, %52
  %105 = load i32, i32* %12, align 4
  %106 = icmp ult i32 %105, 50000
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %109 = load i32, i32* @M98088_REG_18_DAI1_FILTERS, align 4
  %110 = load i32, i32* @M98088_DAI_DHF, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %108, i32 %109, i32 %110, i32 0)
  br label %118

112:                                              ; preds = %104
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = load i32, i32* @M98088_REG_18_DAI1_FILTERS, align 4
  %115 = load i32, i32* @M98088_DAI_DHF, align 4
  %116 = load i32, i32* @M98088_DAI_DHF, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %120 = load i32, i32* @M98088_REG_51_PWR_SYS, align 4
  %121 = load i32, i32* @M98088_SHDNRUN, align 4
  %122 = load i32, i32* @M98088_SHDNRUN, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 %121, i32 %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %118, %72, %49, %38
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
