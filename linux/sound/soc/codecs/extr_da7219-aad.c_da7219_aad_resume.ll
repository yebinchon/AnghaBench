; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { %struct.da7219_aad_priv* }
%struct.da7219_aad_priv = type { i32, i64, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_ACCDET_EN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @da7219_aad_resume(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7219_priv*, align 8
  %4 = alloca %struct.da7219_aad_priv*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.da7219_priv* %7, %struct.da7219_priv** %3, align 8
  %8 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %9 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %8, i32 0, i32 0
  %10 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %9, align 8
  store %struct.da7219_aad_priv* %10, %struct.da7219_aad_priv** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %5, align 8
  %13 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %14 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %19 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %24 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %29 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %31 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %30)
  %32 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %33 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %22, %17
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %37 = load i32, i32* @DA7219_ACCDET_EN_MASK, align 4
  %38 = load i32, i32* @DA7219_ACCDET_EN_MASK, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
