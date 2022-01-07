; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_dai_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_dai_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ux500_msp_i2s_drvdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @ux500_msp_dai_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_msp_dai_of_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.ux500_msp_i2s_drvdata*, align 8
  %5 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %6 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.ux500_msp_i2s_drvdata* %10, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_dmaengine_dai_dma_data* @devm_kzalloc(i32 %13, i32 8, i32 %14)
  store %struct.snd_dmaengine_dai_dma_data* %15, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %16 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %17 = icmp ne %struct.snd_dmaengine_dai_dma_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.snd_dmaengine_dai_dma_data* @devm_kzalloc(i32 %24, i32 8, i32 %25)
  store %struct.snd_dmaengine_dai_dma_data* %26, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %27 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %28 = icmp ne %struct.snd_dmaengine_dai_dma_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %21
  %33 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %34 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %40 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %4, align 8
  %42 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %48 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %50 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %49, i32 0, i32 0
  store i32 4, i32* %50, align 4
  %51 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %52 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %54 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %55 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %56 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %53, %struct.snd_dmaengine_dai_dma_data* %54, %struct.snd_dmaengine_dai_dma_data* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %32, %29, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(i32) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
