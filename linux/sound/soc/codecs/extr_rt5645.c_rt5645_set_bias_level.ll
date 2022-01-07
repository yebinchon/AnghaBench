; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32, i32 }

@RT5645_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5645_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5645_PWR_MB = common dso_local global i32 0, align 4
@RT5645_PWR_BG = common dso_local global i32 0, align 4
@RT5645_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5645_PWR_FV1 = common dso_local global i32 0, align 4
@RT5645_PWR_FV2 = common dso_local global i32 0, align 4
@RT5645_GEN_CTRL1 = common dso_local global i32 0, align 4
@RT5645_DIG_GATE_CTRL = common dso_local global i32 0, align 4
@RT5645_DEPOP_M2 = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5645_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5645_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5645_priv* %7, %struct.rt5645_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %123 [
    i32 129, label %9
    i32 128, label %47
    i32 130, label %95
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %10)
  %12 = icmp eq i32 128, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %16 = load i32, i32* @RT5645_PWR_VREF1, align 4
  %17 = load i32, i32* @RT5645_PWR_MB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RT5645_PWR_BG, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RT5645_PWR_VREF1, align 4
  %24 = load i32, i32* @RT5645_PWR_MB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RT5645_PWR_BG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %22, i32 %29)
  %31 = call i32 @mdelay(i32 10)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %34 = load i32, i32* @RT5645_PWR_FV1, align 4
  %35 = load i32, i32* @RT5645_PWR_FV2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RT5645_PWR_FV1, align 4
  %38 = load i32, i32* @RT5645_PWR_FV2, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @RT5645_GEN_CTRL1, align 4
  %43 = load i32, i32* @RT5645_DIG_GATE_CTRL, align 4
  %44 = load i32, i32* @RT5645_DIG_GATE_CTRL, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %13, %9
  br label %124

47:                                               ; preds = %2
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %50 = load i32, i32* @RT5645_PWR_VREF1, align 4
  %51 = load i32, i32* @RT5645_PWR_MB, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RT5645_PWR_BG, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RT5645_PWR_VREF1, align 4
  %58 = load i32, i32* @RT5645_PWR_MB, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RT5645_PWR_BG, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %56, i32 %63)
  %65 = call i32 @mdelay(i32 10)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %68 = load i32, i32* @RT5645_PWR_FV1, align 4
  %69 = load i32, i32* @RT5645_PWR_FV2, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RT5645_PWR_FV1, align 4
  %72 = load i32, i32* @RT5645_PWR_FV2, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %75)
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %94

78:                                               ; preds = %47
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %81 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 4416)
  %82 = call i32 @msleep(i32 40)
  %83 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %84 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* @system_power_efficient_wq, align 4
  %89 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %90 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %89, i32 0, i32 1
  %91 = call i32 @msecs_to_jiffies(i32 0)
  %92 = call i32 @queue_delayed_work(i32 %88, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %78
  br label %94

94:                                               ; preds = %93, %47
  br label %124

95:                                               ; preds = %2
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 4352)
  %99 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %95
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = load i32, i32* @RT5645_GEN_CTRL1, align 4
  %106 = load i32, i32* @RT5645_DIG_GATE_CTRL, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %103, %95
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %110 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %111 = load i32, i32* @RT5645_PWR_VREF1, align 4
  %112 = load i32, i32* @RT5645_PWR_MB, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @RT5645_PWR_BG, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RT5645_PWR_FV1, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @RT5645_PWR_FV2, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %121, i32 0)
  br label %124

123:                                              ; preds = %2
  br label %124

124:                                              ; preds = %123, %108, %94, %46
  ret i32 0
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
