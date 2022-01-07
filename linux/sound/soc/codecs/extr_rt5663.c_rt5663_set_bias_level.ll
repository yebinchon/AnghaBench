; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32, i32 }

@RT5663_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5663_PWR_FV1_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_FV2_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_FV1 = common dso_local global i32 0, align 4
@RT5663_PWR_FV2 = common dso_local global i32 0, align 4
@CODEC_VER_1 = common dso_local global i32 0, align 4
@RT5663_DIG_MISC = common dso_local global i32 0, align 4
@RT5663_DIG_GATE_CTRL_MASK = common dso_local global i32 0, align 4
@RT5663_DIG_GATE_CTRL_EN = common dso_local global i32 0, align 4
@RT5663_SIG_CLK_DET = common dso_local global i32 0, align 4
@RT5663_EN_ANA_CLK_DET_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_CLK_DET_MASK = common dso_local global i32 0, align 4
@RT5663_EN_ANA_CLK_DET_AUTO = common dso_local global i32 0, align 4
@RT5663_PWR_CLK_DET_EN = common dso_local global i32 0, align 4
@RT5663_DIG_GATE_CTRL_DIS = common dso_local global i32 0, align 4
@RT5663_PWR_VREF1_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_VREF2_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_MB_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5663_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5663_PWR_MB = common dso_local global i32 0, align 4
@RT5663_EN_ANA_CLK_DET_DIS = common dso_local global i32 0, align 4
@RT5663_PWR_CLK_DET_DIS = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5663_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5663_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5663_priv* %7, %struct.rt5663_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %118 [
    i32 130, label %9
    i32 129, label %19
    i32 128, label %41
    i32 131, label %88
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %12 = load i32, i32* @RT5663_PWR_FV1_MASK, align 4
  %13 = load i32, i32* @RT5663_PWR_FV2_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RT5663_PWR_FV1, align 4
  %16 = load i32, i32* @RT5663_PWR_FV2, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %14, i32 %17)
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CODEC_VER_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @RT5663_DIG_MISC, align 4
  %28 = load i32, i32* @RT5663_DIG_GATE_CTRL_MASK, align 4
  %29 = load i32, i32* @RT5663_DIG_GATE_CTRL_EN, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @RT5663_SIG_CLK_DET, align 4
  %33 = load i32, i32* @RT5663_EN_ANA_CLK_DET_MASK, align 4
  %34 = load i32, i32* @RT5663_PWR_CLK_DET_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RT5663_EN_ANA_CLK_DET_AUTO, align 4
  %37 = load i32, i32* @RT5663_PWR_CLK_DET_EN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %25, %19
  br label %119

41:                                               ; preds = %2
  %42 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %43 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CODEC_VER_1, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @RT5663_DIG_MISC, align 4
  %50 = load i32, i32* @RT5663_DIG_GATE_CTRL_MASK, align 4
  %51 = load i32, i32* @RT5663_DIG_GATE_CTRL_DIS, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %56 = load i32, i32* @RT5663_PWR_VREF1_MASK, align 4
  %57 = load i32, i32* @RT5663_PWR_VREF2_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RT5663_PWR_FV1_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RT5663_PWR_FV2_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RT5663_PWR_MB_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @RT5663_PWR_VREF1, align 4
  %66 = load i32, i32* @RT5663_PWR_VREF2, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RT5663_PWR_MB, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %64, i32 %69)
  %71 = call i32 @usleep_range(i32 10000, i32 10005)
  %72 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CODEC_VER_1, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %53
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = load i32, i32* @RT5663_SIG_CLK_DET, align 4
  %80 = load i32, i32* @RT5663_EN_ANA_CLK_DET_MASK, align 4
  %81 = load i32, i32* @RT5663_PWR_CLK_DET_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RT5663_EN_ANA_CLK_DET_DIS, align 4
  %84 = load i32, i32* @RT5663_PWR_CLK_DET_DIS, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %77, %53
  br label %119

88:                                               ; preds = %2
  %89 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %90 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SND_JACK_HEADSET, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %96 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %97 = load i32, i32* @RT5663_PWR_VREF1_MASK, align 4
  %98 = load i32, i32* @RT5663_PWR_VREF2_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RT5663_PWR_FV1, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RT5663_PWR_FV2, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RT5663_PWR_MB_MASK, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 %105, i32 0)
  br label %117

107:                                              ; preds = %88
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %110 = load i32, i32* @RT5663_PWR_FV1_MASK, align 4
  %111 = load i32, i32* @RT5663_PWR_FV2_MASK, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @RT5663_PWR_FV1, align 4
  %114 = load i32, i32* @RT5663_PWR_FV2, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %108, i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %107, %94
  br label %119

118:                                              ; preds = %2
  br label %119

119:                                              ; preds = %118, %117, %87, %40, %9
  ret i32 0
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
