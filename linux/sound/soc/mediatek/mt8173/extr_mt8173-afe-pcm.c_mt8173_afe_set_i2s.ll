; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_set_i2s.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_set_i2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AFE_ADDA_TOP_CON0 = common dso_local global i32 0, align 4
@AFE_ADDA2_TOP_CON0 = common dso_local global i32 0, align 4
@AFE_I2S_CON2_LOW_JITTER_CLK = common dso_local global i32 0, align 4
@AFE_I2S_CON2_FORMAT_I2S = common dso_local global i32 0, align 4
@AFE_I2S_CON2 = common dso_local global i32 0, align 4
@AFE_I2S_CON2_EN = common dso_local global i32 0, align 4
@AFE_I2S_CON1_LOW_JITTER_CLK = common dso_local global i32 0, align 4
@AFE_I2S_CON1_FORMAT_I2S = common dso_local global i32 0, align 4
@AFE_I2S_CON1 = common dso_local global i32 0, align 4
@AFE_I2S_CON1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, i32)* @mt8173_afe_set_i2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_set_i2s(%struct.mtk_base_afe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mt8173_afe_i2s_fs(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AFE_ADDA_TOP_CON0, align 4
  %20 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 1, i32 1)
  %21 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AFE_ADDA2_TOP_CON0, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 1, i32 1)
  %26 = load i32, i32* @AFE_I2S_CON2_LOW_JITTER_CLK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @AFE_I2S_CON2_RATE(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @AFE_I2S_CON2_FORMAT_I2S, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AFE_I2S_CON2, align 4
  %36 = load i32, i32* @AFE_I2S_CON2_EN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %37, i32 %38)
  %40 = load i32, i32* @AFE_I2S_CON1_LOW_JITTER_CLK, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @AFE_I2S_CON1_RATE(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @AFE_I2S_CON1_FORMAT_I2S, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AFE_I2S_CON1, align 4
  %50 = load i32, i32* @AFE_I2S_CON1_EN, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %15, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mt8173_afe_i2s_fs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AFE_I2S_CON2_RATE(i32) #1

declare dso_local i32 @AFE_I2S_CON1_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
