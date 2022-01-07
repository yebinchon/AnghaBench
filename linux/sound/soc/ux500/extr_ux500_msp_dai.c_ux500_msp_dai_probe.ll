; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.msp_i2s_platform_data* }
%struct.msp_i2s_platform_data = type { i32 }
%struct.ux500_msp_i2s_drvdata = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @ux500_msp_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_msp_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.ux500_msp_i2s_drvdata*, align 8
  %5 = alloca %struct.msp_i2s_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = call %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(%struct.TYPE_8__* %9)
  store %struct.ux500_msp_i2s_drvdata* %10, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %14, align 8
  store %struct.msp_i2s_platform_data* %15, %struct.msp_i2s_platform_data** %5, align 8
  %16 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %5, align 8
  %17 = icmp ne %struct.msp_i2s_platform_data* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %20 = call i32 @ux500_msp_dai_of_probe(%struct.snd_soc_dai* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %24 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %27 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %32 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %35 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %40 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %41 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %45 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %39, %struct.TYPE_6__* %43, %struct.TYPE_7__* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %22, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @ux500_msp_dai_of_probe(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
