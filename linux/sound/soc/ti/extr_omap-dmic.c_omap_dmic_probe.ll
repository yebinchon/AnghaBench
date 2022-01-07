; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_dmic = type { i32, i64, i32 }

@OMAP_DMIC_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_DMIC_THRES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @omap_dmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.omap_dmic*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.omap_dmic* %5, %struct.omap_dmic** %3, align 8
  %6 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %7 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pm_runtime_enable(i32 %8)
  %10 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %11 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %15 = load i32, i32* @OMAP_DMIC_CTRL_REG, align 4
  %16 = call i32 @omap_dmic_write(%struct.omap_dmic* %14, i32 %15, i32 0)
  %17 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %18 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pm_runtime_put_sync(i32 %19)
  %21 = load i64, i64* @OMAP_DMIC_THRES_MAX, align 8
  %22 = sub nsw i64 %21, 3
  %23 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %24 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %26 = load %struct.omap_dmic*, %struct.omap_dmic** %3, align 8
  %27 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %26, i32 0, i32 0
  %28 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %25, i32* null, i32* %27)
  ret i32 0
}

declare dso_local %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @omap_dmic_write(%struct.omap_dmic*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
