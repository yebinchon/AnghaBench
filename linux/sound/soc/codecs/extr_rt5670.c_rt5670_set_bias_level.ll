; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5670_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RT5670_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5670_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5670_PWR_MB = common dso_local global i32 0, align 4
@RT5670_PWR_BG = common dso_local global i32 0, align 4
@RT5670_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5670_PWR_FV1 = common dso_local global i32 0, align 4
@RT5670_PWR_FV2 = common dso_local global i32 0, align 4
@RT5670_CHARGE_PUMP = common dso_local global i32 0, align 4
@RT5670_OSW_L_MASK = common dso_local global i32 0, align 4
@RT5670_OSW_R_MASK = common dso_local global i32 0, align 4
@RT5670_OSW_L_DIS = common dso_local global i32 0, align 4
@RT5670_OSW_R_DIS = common dso_local global i32 0, align 4
@RT5670_DIG_MISC = common dso_local global i32 0, align 4
@RT5670_LDO_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5670_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5670_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5670_priv* %7, %struct.rt5670_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %116 [
    i32 129, label %9
    i32 128, label %58
    i32 130, label %73
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %10)
  %12 = icmp eq i32 128, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %16 = load i32, i32* @RT5670_PWR_VREF1, align 4
  %17 = load i32, i32* @RT5670_PWR_MB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RT5670_PWR_BG, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RT5670_PWR_VREF1, align 4
  %24 = load i32, i32* @RT5670_PWR_MB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RT5670_PWR_BG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %22, i32 %29)
  %31 = call i32 @mdelay(i32 10)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %34 = load i32, i32* @RT5670_PWR_FV1, align 4
  %35 = load i32, i32* @RT5670_PWR_FV2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RT5670_PWR_FV1, align 4
  %38 = load i32, i32* @RT5670_PWR_FV2, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @RT5670_CHARGE_PUMP, align 4
  %43 = load i32, i32* @RT5670_OSW_L_MASK, align 4
  %44 = load i32, i32* @RT5670_OSW_R_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RT5670_OSW_L_DIS, align 4
  %47 = load i32, i32* @RT5670_OSW_R_DIS, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @RT5670_DIG_MISC, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 1, i32 1)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %55 = load i32, i32* @RT5670_LDO_SEL_MASK, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 5)
  br label %57

57:                                               ; preds = %13, %9
  br label %117

58:                                               ; preds = %2
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %61 = load i32, i32* @RT5670_PWR_VREF1, align 4
  %62 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RT5670_PWR_FV1, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RT5670_PWR_FV2, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %59, i32 %60, i32 %67, i32 0)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %71 = load i32, i32* @RT5670_LDO_SEL_MASK, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 3)
  br label %117

73:                                               ; preds = %2
  %74 = load %struct.rt5670_priv*, %struct.rt5670_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %82 = load i32, i32* @RT5670_PWR_VREF1, align 4
  %83 = load i32, i32* @RT5670_PWR_MB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RT5670_PWR_BG, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RT5670_PWR_FV1, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RT5670_PWR_FV2, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RT5670_PWR_MB, align 4
  %94 = load i32, i32* @RT5670_PWR_BG, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %92, i32 %95)
  br label %112

97:                                               ; preds = %73
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %100 = load i32, i32* @RT5670_PWR_VREF1, align 4
  %101 = load i32, i32* @RT5670_PWR_MB, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @RT5670_PWR_BG, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @RT5670_PWR_FV1, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @RT5670_PWR_FV2, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %97, %79
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %114 = load i32, i32* @RT5670_DIG_MISC, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 1, i32 0)
  br label %117

116:                                              ; preds = %2
  br label %117

117:                                              ; preds = %116, %112, %58, %57
  ret i32 0
}

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
