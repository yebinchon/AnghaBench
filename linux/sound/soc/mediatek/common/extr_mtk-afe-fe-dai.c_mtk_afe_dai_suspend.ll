; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_dai_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_dai_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, i32, i32 (%struct.device*)*, i32*, i32*, %struct.regmap*, %struct.device.0* }
%struct.device = type opaque
%struct.regmap = type { i32 }
%struct.device.0 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_afe_dai_suspend(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca %struct.device.0*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.mtk_base_afe* %9, %struct.mtk_base_afe** %4, align 8
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 6
  %12 = load %struct.device.0*, %struct.device.0** %11, align 8
  store %struct.device.0* %12, %struct.device.0** %5, align 8
  %13 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %13, i32 0, i32 5
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  %16 = load %struct.device.0*, %struct.device.0** %5, align 8
  %17 = call i64 @pm_runtime_status_suspended(%struct.device.0* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %74

25:                                               ; preds = %19
  %26 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.device.0*, %struct.device.0** %5, align 8
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @devm_kcalloc(%struct.device.0* %31, i32 %34, i32 4, i32 %35)
  %37 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %25
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @regmap_read(%struct.regmap* %47, i32 %54, i32* %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %67 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %68, i32 0, i32 2
  %70 = load i32 (%struct.device*)*, i32 (%struct.device*)** %69, align 8
  %71 = load %struct.device.0*, %struct.device.0** %5, align 8
  %72 = bitcast %struct.device.0* %71 to %struct.device*
  %73 = call i32 %70(%struct.device* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %65, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @pm_runtime_status_suspended(%struct.device.0*) #1

declare dso_local i32* @devm_kcalloc(%struct.device.0*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
