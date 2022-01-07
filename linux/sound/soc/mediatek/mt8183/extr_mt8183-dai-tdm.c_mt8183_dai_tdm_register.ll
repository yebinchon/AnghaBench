; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mt8183_dai_tdm_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mt8183_dai_tdm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32, %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { %struct.mtk_afe_tdm_priv** }
%struct.mtk_afe_tdm_priv = type { i32, i32, i32 }
%struct.mtk_base_afe_dai = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_dai_tdm_driver = common dso_local global i8* null, align 8
@mtk_dai_tdm_widgets = common dso_local global i8* null, align 8
@mtk_dai_tdm_routes = common dso_local global i8* null, align 8
@MT8183_I2S4_BCK = common dso_local global i32 0, align 4
@MT8183_I2S4_MCK = common dso_local global i32 0, align 4
@MT8183_DAI_TDM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt8183_dai_tdm_register(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mt8183_afe_private*, align 8
  %5 = alloca %struct.mtk_afe_tdm_priv*, align 8
  %6 = alloca %struct.mtk_base_afe_dai*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %7 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %7, i32 0, i32 2
  %9 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %8, align 8
  store %struct.mt8183_afe_private* %9, %struct.mt8183_afe_private** %4, align 8
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(i32 %12, i32 56, i32 %13)
  %15 = bitcast i8* %14 to %struct.mtk_base_afe_dai*
  store %struct.mtk_base_afe_dai* %15, %struct.mtk_base_afe_dai** %6, align 8
  %16 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %17 = icmp ne %struct.mtk_base_afe_dai* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %74

21:                                               ; preds = %1
  %22 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %22, i32 0, i32 6
  %24 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %24, i32 0, i32 1
  %26 = call i32 @list_add(i32* %23, i32* %25)
  %27 = load i8*, i8** @mtk_dai_tdm_driver, align 8
  %28 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @mtk_dai_tdm_driver, align 8
  %31 = call i8* @ARRAY_SIZE(i8* %30)
  %32 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @mtk_dai_tdm_widgets, align 8
  %35 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %36 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @mtk_dai_tdm_widgets, align 8
  %38 = call i8* @ARRAY_SIZE(i8* %37)
  %39 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %40 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @mtk_dai_tdm_routes, align 8
  %42 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @mtk_dai_tdm_routes, align 8
  %45 = call i8* @ARRAY_SIZE(i8* %44)
  %46 = load %struct.mtk_base_afe_dai*, %struct.mtk_base_afe_dai** %6, align 8
  %47 = getelementptr inbounds %struct.mtk_base_afe_dai, %struct.mtk_base_afe_dai* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kzalloc(i32 %50, i32 12, i32 %51)
  %53 = bitcast i8* %52 to %struct.mtk_afe_tdm_priv*
  store %struct.mtk_afe_tdm_priv* %53, %struct.mtk_afe_tdm_priv** %5, align 8
  %54 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %5, align 8
  %55 = icmp ne %struct.mtk_afe_tdm_priv* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %21
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %21
  %60 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mtk_afe_tdm_priv, %struct.mtk_afe_tdm_priv* %60, i32 0, i32 0
  store i32 128, i32* %61, align 4
  %62 = load i32, i32* @MT8183_I2S4_BCK, align 4
  %63 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_afe_tdm_priv, %struct.mtk_afe_tdm_priv* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @MT8183_I2S4_MCK, align 4
  %66 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %5, align 8
  %67 = getelementptr inbounds %struct.mtk_afe_tdm_priv, %struct.mtk_afe_tdm_priv* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %5, align 8
  %69 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %4, align 8
  %70 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %69, i32 0, i32 0
  %71 = load %struct.mtk_afe_tdm_priv**, %struct.mtk_afe_tdm_priv*** %70, align 8
  %72 = load i64, i64* @MT8183_DAI_TDM, align 8
  %73 = getelementptr inbounds %struct.mtk_afe_tdm_priv*, %struct.mtk_afe_tdm_priv** %71, i64 %72
  store %struct.mtk_afe_tdm_priv* %68, %struct.mtk_afe_tdm_priv** %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %59, %56, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
