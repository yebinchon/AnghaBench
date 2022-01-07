; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt6797/extr_mt6797-afe-pcm.c_mt6797_afe_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt6797/extr_mt6797-afe-pcm.c_mt6797_afe_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_base_afe = type { i32 }

@AFE_IRQ_MCU_EN = common dso_local global i32 0, align 4
@AFE_IRQ_MCU_EN_MASK_SFT = common dso_local global i32 0, align 4
@AFE_MEMIF_HDALIGN = common dso_local global i32 0, align 4
@AFE_MEMIF_MSB = common dso_local global i32 0, align 4
@CPU_COMPACT_MODE_MASK_SFT = common dso_local global i32 0, align 4
@CPU_HD_ALIGN_MASK_SFT = common dso_local global i32 0, align 4
@AFE_CONN_24BIT = common dso_local global i32 0, align 4
@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@AFE_ON_MASK_SFT = common dso_local global i32 0, align 4
@AFE_ON_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt6797_afe_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6797_afe_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.mtk_base_afe* @dev_get_drvdata(%struct.device* %6)
  store %struct.mtk_base_afe* %7, %struct.mtk_base_afe** %4, align 8
  %8 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %9 = call i32 @mt6797_afe_enable_clock(%struct.mtk_base_afe* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AFE_IRQ_MCU_EN, align 4
  %19 = load i32, i32* @AFE_IRQ_MCU_EN_MASK_SFT, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AFE_MEMIF_HDALIGN, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 134152192, i32 134152192)
  %26 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AFE_MEMIF_MSB, align 4
  %30 = load i32, i32* @CPU_COMPACT_MODE_MASK_SFT, align 4
  %31 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AFE_MEMIF_MSB, align 4
  %36 = load i32, i32* @CPU_HD_ALIGN_MASK_SFT, align 4
  %37 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AFE_CONN_24BIT, align 4
  %42 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 1073741823, i32 1073741823)
  %43 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AFE_DAC_CON0, align 4
  %47 = load i32, i32* @AFE_ON_MASK_SFT, align 4
  %48 = load i32, i32* @AFE_ON_SFT, align 4
  %49 = shl i32 1, %48
  %50 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %14, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mtk_base_afe* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mt6797_afe_enable_clock(%struct.mtk_base_afe*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
