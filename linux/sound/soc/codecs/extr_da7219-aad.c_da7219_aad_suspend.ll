; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { %struct.da7219_aad_priv* }
%struct.da7219_aad_priv = type { i32, i64, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_ACCDET_EN_MASK = common dso_local global i32 0, align 4
@DA7219_MICBIAS_CTRL = common dso_local global i32 0, align 4
@DA7219_MICBIAS1_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @da7219_aad_suspend(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7219_priv*, align 8
  %4 = alloca %struct.da7219_aad_priv*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.da7219_priv* %8, %struct.da7219_priv** %3, align 8
  %9 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %10 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %9, i32 0, i32 0
  %11 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %10, align 8
  store %struct.da7219_aad_priv* %11, %struct.da7219_aad_priv** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %5, align 8
  %14 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %15 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %21 = load i32, i32* @DA7219_ACCDET_EN_MASK, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %24 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @DA7219_MICBIAS_CTRL, align 4
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DA7219_MICBIAS1_EN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %37 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %39 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %38)
  %40 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %41 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %27
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
