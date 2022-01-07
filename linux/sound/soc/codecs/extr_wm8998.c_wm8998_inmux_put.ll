; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_inmux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_inmux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8998_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.arizona* }
%struct.arizona = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.soc_enum = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_IN2L_CONTROL = common dso_local global i32 0, align 4
@ARIZONA_IN1L_CONTROL = common dso_local global i32 0, align 4
@ARIZONA_INMODE_DMIC = common dso_local global i32 0, align 4
@ARIZONA_IN1_MODE_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_INMODE_SE = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_IN1_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_SE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8998_inmux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8998_inmux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.wm8998_priv*, align 8
  %9 = alloca %struct.arizona*, align 8
  %10 = alloca %struct.soc_enum*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %19)
  store %struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_context** %7, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = call %struct.wm8998_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.wm8998_priv* %22, %struct.wm8998_priv** %8, align 8
  %23 = load %struct.wm8998_priv*, %struct.wm8998_priv** %8, align 8
  %24 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.arizona*, %struct.arizona** %25, align 8
  store %struct.arizona* %26, %struct.arizona** %9, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.soc_enum*
  store %struct.soc_enum* %30, %struct.soc_enum** %10, align 8
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %2
  %44 = load %struct.soc_enum*, %struct.soc_enum** %10, align 8
  %45 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 128, label %47
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @ARIZONA_IN2L_CONTROL, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul i32 2, %49
  %51 = add i32 1, %50
  store i32 %51, i32* %12, align 4
  br label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @ARIZONA_IN1L_CONTROL, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 2, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.arizona*, %struct.arizona** %9, align 8
  %58 = getelementptr inbounds %struct.arizona, %struct.arizona* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @ARIZONA_INMODE_DMIC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @ARIZONA_IN1_MODE_SHIFT, align 4
  %71 = shl i32 1, %70
  store i32 %71, i32* %16, align 4
  br label %73

72:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @ARIZONA_IN1L_SRC_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ARIZONA_INMODE_SE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @ARIZONA_IN1L_SRC_SE_SHIFT, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @ARIZONA_IN1_MODE_MASK, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %93 = load %struct.soc_enum*, %struct.soc_enum** %10, align 8
  %94 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ARIZONA_IN1L_SRC_MASK, align 4
  %97 = load i32, i32* @ARIZONA_IN1L_SRC_SE_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %95, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %102 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %103 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %104 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.soc_enum*, %struct.soc_enum** %10, align 8
  %111 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %101, %struct.snd_kcontrol* %102, i32 %109, %struct.soc_enum* %110, i32* null)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %86, %40
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8998_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
