; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-adda.c_set_mtkaif_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-adda.c_set_mtkaif_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { i32, i32* }

@AFE_AUD_PAD_TOP = common dso_local global i32 0, align 4
@AFE_ADDA_MTKAIF_CFG0 = common dso_local global i32 0, align 4
@DELAY_DATA_MISO1 = common dso_local global i32 0, align 4
@DELAY_DATA_MISO2 = common dso_local global i32 0, align 4
@AFE_ADDA_MTKAIF_RX_CFG2 = common dso_local global i32 0, align 4
@MTKAIF_RXIF_DELAY_DATA_MASK_SFT = common dso_local global i32 0, align 4
@MTKAIF_RXIF_DELAY_DATA_SFT = common dso_local global i32 0, align 4
@MTKAIF_RXIF_DELAY_CYCLE_MASK_SFT = common dso_local global i32 0, align 4
@MTKAIF_RXIF_DELAY_CYCLE_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*)* @set_mtkaif_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mtkaif_rx(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  %3 = alloca %struct.mt8183_afe_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %6 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %6, i32 0, i32 1
  %8 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %7, align 8
  store %struct.mt8183_afe_private* %8, %struct.mt8183_afe_private** %3, align 8
  %9 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %10 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %106 [
    i32 128, label %12
    i32 129, label %84
    i32 130, label %95
  ]

12:                                               ; preds = %1
  %13 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AFE_AUD_PAD_TOP, align 4
  %17 = call i32 @regmap_write(i32 %15, i32 %16, i32 56)
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AFE_AUD_PAD_TOP, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 57)
  %23 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %24 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AFE_ADDA_MTKAIF_CFG0, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 -2147418112)
  %28 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %29 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %34 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %12
  %40 = load i32, i32* @DELAY_DATA_MISO1, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %42 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %47 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %45, %50
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %12
  %53 = load i32, i32* @DELAY_DATA_MISO2, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %55 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %60 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %39
  %66 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %67 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AFE_ADDA_MTKAIF_RX_CFG2, align 4
  %70 = load i32, i32* @MTKAIF_RXIF_DELAY_DATA_MASK_SFT, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MTKAIF_RXIF_DELAY_DATA_SFT, align 4
  %73 = shl i32 %71, %72
  %74 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %76 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AFE_ADDA_MTKAIF_RX_CFG2, align 4
  %79 = load i32, i32* @MTKAIF_RXIF_DELAY_CYCLE_MASK_SFT, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MTKAIF_RXIF_DELAY_CYCLE_SFT, align 4
  %82 = shl i32 %80, %81
  %83 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %82)
  br label %107

84:                                               ; preds = %1
  %85 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %86 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AFE_AUD_PAD_TOP, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 49)
  %90 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %91 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AFE_ADDA_MTKAIF_CFG0, align 4
  %94 = call i32 @regmap_write(i32 %92, i32 %93, i32 65536)
  br label %107

95:                                               ; preds = %1
  %96 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %97 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AFE_AUD_PAD_TOP, align 4
  %100 = call i32 @regmap_write(i32 %98, i32 %99, i32 49)
  %101 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %102 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AFE_ADDA_MTKAIF_CFG0, align 4
  %105 = call i32 @regmap_write(i32 %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %1, %95
  br label %107

107:                                              ; preds = %106, %84, %65
  ret i32 0
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
