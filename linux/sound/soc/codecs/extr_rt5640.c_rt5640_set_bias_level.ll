; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32 }

@RT5640_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5640_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5640_PWR_MB = common dso_local global i32 0, align 4
@RT5640_PWR_BG = common dso_local global i32 0, align 4
@RT5640_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5640_PWR_FV1 = common dso_local global i32 0, align 4
@RT5640_PWR_FV2 = common dso_local global i32 0, align 4
@RT5640_DUMMY1 = common dso_local global i32 0, align 4
@RT5640_MICBIAS = common dso_local global i32 0, align 4
@RT5640_DEPOP_M1 = common dso_local global i32 0, align 4
@RT5640_DEPOP_M2 = common dso_local global i32 0, align 4
@RT5640_PWR_DIG1 = common dso_local global i32 0, align 4
@RT5640_PWR_DIG2 = common dso_local global i32 0, align 4
@RT5640_PWR_VOL = common dso_local global i32 0, align 4
@RT5640_PWR_MIXER = common dso_local global i32 0, align 4
@RT5640_PWR_ANLG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5640_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5640_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5640_priv* %9, %struct.rt5640_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %106 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %39
    i32 131, label %78
  ]

11:                                               ; preds = %2
  br label %107

12:                                               ; preds = %2
  %13 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %14 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %107

19:                                               ; preds = %12
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %108

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  br label %107

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %40)
  %42 = icmp eq i32 131, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = load i32, i32* @RT5640_PWR_ANLG1, align 4
  %46 = load i32, i32* @RT5640_PWR_VREF1, align 4
  %47 = load i32, i32* @RT5640_PWR_MB, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT5640_PWR_BG, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RT5640_PWR_VREF2, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RT5640_PWR_VREF1, align 4
  %54 = load i32, i32* @RT5640_PWR_MB, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RT5640_PWR_BG, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RT5640_PWR_VREF2, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %52, i32 %59)
  %61 = call i32 @usleep_range(i32 10000, i32 15000)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %63 = load i32, i32* @RT5640_PWR_ANLG1, align 4
  %64 = load i32, i32* @RT5640_PWR_FV1, align 4
  %65 = load i32, i32* @RT5640_PWR_FV2, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RT5640_PWR_FV1, align 4
  %68 = load i32, i32* @RT5640_PWR_FV2, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %72 = load i32, i32* @RT5640_DUMMY1, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 769, i32 769)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %75 = load i32, i32* @RT5640_MICBIAS, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 48, i32 48)
  br label %77

77:                                               ; preds = %43, %39
  br label %107

78:                                               ; preds = %2
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %80 = load i32, i32* @RT5640_DEPOP_M1, align 4
  %81 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 4)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %83 = load i32, i32* @RT5640_DEPOP_M2, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %82, i32 %83, i32 4352)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %86 = load i32, i32* @RT5640_DUMMY1, align 4
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 1, i32 0)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %89 = load i32, i32* @RT5640_PWR_DIG1, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %92 = load i32, i32* @RT5640_PWR_DIG2, align 4
  %93 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 0)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %95 = load i32, i32* @RT5640_PWR_VOL, align 4
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 0)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %98 = load i32, i32* @RT5640_PWR_MIXER, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %97, i32 %98, i32 0)
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %101 = load i32, i32* @RT5640_PWR_ANLG1, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 %101, i32 0)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %104 = load i32, i32* @RT5640_PWR_ANLG2, align 4
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i32 %104, i32 0)
  br label %107

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %106, %78, %77, %38, %18, %11
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %35
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
