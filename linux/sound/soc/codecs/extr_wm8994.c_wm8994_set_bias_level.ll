; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, %struct.wm8994* }
%struct.wm8994 = type { i32, i32 }

@WM8958_MICBIAS1 = common dso_local global i32 0, align 4
@WM8958_MICB1_MODE = common dso_local global i32 0, align 4
@WM8958_MICBIAS2 = common dso_local global i32 0, align 4
@WM8958_MICB2_MODE = common dso_local global i32 0, align 4
@WM8958_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@WM8958_CP_DISCH = common dso_local global i32 0, align 4
@WM8994_ANTIPOP_1 = common dso_local global i32 0, align 4
@WM8994_LINEOUT1_DISCH = common dso_local global i32 0, align 4
@WM8994_LINEOUT2_DISCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8994_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca %struct.wm8994*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8994_priv* %8, %struct.wm8994_priv** %5, align 8
  %9 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %10 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %9, i32 0, i32 1
  %11 = load %struct.wm8994*, %struct.wm8994** %10, align 8
  store %struct.wm8994* %11, %struct.wm8994** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @wm_hubs_set_bias_level(%struct.snd_soc_component* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %102 [
    i32 132, label %16
    i32 131, label %17
    i32 130, label %39
    i32 133, label %94
  ]

16:                                               ; preds = %2
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %19 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load i32, i32* @WM8958_MICBIAS1, align 4
  %24 = load i32, i32* @WM8958_MICB1_MODE, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @WM8958_MICBIAS2, align 4
  %28 = load i32, i32* @WM8958_MICB2_MODE, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 0)
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %32)
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = call i32 @active_reference(%struct.snd_soc_component* %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %102

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %40)
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %45 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %59 [
    i32 128, label %47
  ]

47:                                               ; preds = %43
  %48 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %49 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM8958_CHARGE_PUMP_2, align 4
  %55 = load i32, i32* @WM8958_CP_DISCH, align 4
  %56 = load i32, i32* @WM8958_CP_DISCH, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i32, i32* @WM8994_ANTIPOP_1, align 4
  %63 = load i32, i32* @WM8994_LINEOUT1_DISCH, align 4
  %64 = load i32, i32* @WM8994_LINEOUT2_DISCH, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WM8994_LINEOUT1_DISCH, align 4
  %67 = load i32, i32* @WM8994_LINEOUT2_DISCH, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %60, %39
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %71)
  %73 = icmp eq i32 %72, 131
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = call i32 @active_dereference(%struct.snd_soc_component* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %79 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %92 [
    i32 128, label %81
    i32 129, label %81
  ]

81:                                               ; preds = %77, %77
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = load i32, i32* @WM8958_MICBIAS1, align 4
  %84 = load i32, i32* @WM8958_MICB1_MODE, align 4
  %85 = load i32, i32* @WM8958_MICB1_MODE, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i32, i32* @WM8958_MICBIAS2, align 4
  %89 = load i32, i32* @WM8958_MICB2_MODE, align 4
  %90 = load i32, i32* @WM8958_MICB2_MODE, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  br label %93

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %81
  br label %102

94:                                               ; preds = %2
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %96 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %95)
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %100 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %2, %101, %93, %38, %16
  ret i32 0
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm_hubs_set_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @active_reference(%struct.snd_soc_component*) #1

declare dso_local i32 @active_dereference(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
