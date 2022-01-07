; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mtk_afe_tdm_apll_connect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mtk_afe_tdm_apll_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.mtk_base_afe = type { %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { %struct.mtk_afe_tdm_priv** }
%struct.mtk_afe_tdm_priv = type { i32 }

@MT8183_DAI_TDM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @mtk_afe_tdm_apll_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_afe_tdm_apll_connect(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.mtk_base_afe*, align 8
  %8 = alloca %struct.mt8183_afe_private*, align 8
  %9 = alloca %struct.mtk_afe_tdm_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %11, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.mtk_base_afe* %17, %struct.mtk_base_afe** %7, align 8
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 0
  %20 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %19, align 8
  store %struct.mt8183_afe_private* %20, %struct.mt8183_afe_private** %8, align 8
  %21 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %8, align 8
  %22 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %21, i32 0, i32 0
  %23 = load %struct.mtk_afe_tdm_priv**, %struct.mtk_afe_tdm_priv*** %22, align 8
  %24 = load i64, i64* @MT8183_DAI_TDM, align 8
  %25 = getelementptr inbounds %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %23, i64 %24
  %26 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %25, align 8
  store %struct.mtk_afe_tdm_priv* %26, %struct.mtk_afe_tdm_priv** %9, align 8
  %27 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mt8183_get_apll_by_name(%struct.mtk_base_afe* %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %9, align 8
  %33 = getelementptr inbounds %struct.mtk_afe_tdm_priv, %struct.mtk_afe_tdm_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  ret i32 %38
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mt8183_get_apll_by_name(%struct.mtk_base_afe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
