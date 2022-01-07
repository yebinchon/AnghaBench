; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.ssm2602_priv = type { i32 }

@SSM2602_LOUT1V = common dso_local global i32 0, align 4
@LOUT1V_LRHP_BOTH = common dso_local global i32 0, align 4
@SSM2602_ROUT1V = common dso_local global i32 0, align 4
@ROUT1V_RLHP_BOTH = common dso_local global i32 0, align 4
@ssm2602_snd_controls = common dso_local global i32 0, align 4
@ssm2602_dapm_widgets = common dso_local global i32 0, align 4
@ssm2602_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ssm2602_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.ssm2602_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.ssm2602_priv* %10, %struct.ssm2602_priv** %5, align 8
  %11 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SSM2602_LOUT1V, align 4
  %15 = load i32, i32* @LOUT1V_LRHP_BOTH, align 4
  %16 = load i32, i32* @LOUT1V_LRHP_BOTH, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SSM2602_ROUT1V, align 4
  %22 = load i32, i32* @ROUT1V_RLHP_BOTH, align 4
  %23 = load i32, i32* @ROUT1V_RLHP_BOTH, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @ssm2602_snd_controls, align 4
  %27 = load i32, i32* @ssm2602_snd_controls, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %25, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %1
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %36 = load i32, i32* @ssm2602_dapm_widgets, align 4
  %37 = load i32, i32* @ssm2602_dapm_widgets, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %35, i32 %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %46 = load i32, i32* @ssm2602_routes, align 4
  %47 = load i32, i32* @ssm2602_routes, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %45, i32 %46, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %42, %32
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
