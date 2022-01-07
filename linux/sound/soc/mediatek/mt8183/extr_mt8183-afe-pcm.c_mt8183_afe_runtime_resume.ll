; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_afe_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_afe_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { i64 }

@AUDIO_TOP_CON0 = common dso_local global i32 0, align 4
@AFE_MEMIF_MSB = common dso_local global i32 0, align 4
@CPU_HD_ALIGN_MASK_SFT = common dso_local global i32 0, align 4
@CPU_HD_ALIGN_SFT = common dso_local global i32 0, align 4
@AFE_CONN_24BIT = common dso_local global i32 0, align 4
@AFE_CONN_24BIT_1 = common dso_local global i32 0, align 4
@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt8183_afe_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_afe_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca %struct.mt8183_afe_private*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mtk_base_afe* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_base_afe* %8, %struct.mtk_base_afe** %4, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %10, align 8
  store %struct.mt8183_afe_private* %11, %struct.mt8183_afe_private** %5, align 8
  %12 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %13 = call i32 @mt8183_afe_enable_clock(%struct.mtk_base_afe* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %5, align 8
  %25 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  br label %66

29:                                               ; preds = %23
  %30 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @regcache_cache_only(i32 %32, i32 0)
  %34 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @regcache_sync(i32 %36)
  %38 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AUDIO_TOP_CON0, align 4
  %42 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 536870912, i32 536870912)
  %43 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AFE_MEMIF_MSB, align 4
  %47 = load i32, i32* @CPU_HD_ALIGN_MASK_SFT, align 4
  %48 = load i32, i32* @CPU_HD_ALIGN_SFT, align 4
  %49 = shl i32 0, %48
  %50 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %49)
  %51 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AFE_CONN_24BIT, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 -1)
  %56 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AFE_CONN_24BIT_1, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 -1)
  %61 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AFE_DAC_CON0, align 4
  %65 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 1, i32 1)
  br label %66

66:                                               ; preds = %29, %28
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.mtk_base_afe* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mt8183_afe_enable_clock(%struct.mtk_base_afe*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
