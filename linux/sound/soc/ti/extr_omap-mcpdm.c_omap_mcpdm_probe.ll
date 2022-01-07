; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcpdm = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MCPDM_REG_CTRL = common dso_local global i32 0, align 4
@omap_mcpdm_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"McPDM\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Request for IRQ failed\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@MCPDM_UP_THRES_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @omap_mcpdm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcpdm_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.omap_mcpdm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = call %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.omap_mcpdm* %6, %struct.omap_mcpdm** %3, align 8
  %7 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %8 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_enable(i32 %9)
  %11 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %12 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %16 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %17 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %15, i32 %16, i32 0)
  %18 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %19 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @omap_mcpdm_irq_handler, align 4
  %22 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %23 = bitcast %struct.omap_mcpdm* %22 to i8*
  %24 = call i32 @request_irq(i32 %20, i32 %21, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %26 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pm_runtime_put_sync(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %33 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %37 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pm_runtime_disable(i32 %38)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %42 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 4
  %47 = load i32, i32* @MCPDM_UP_THRES_MAX, align 4
  %48 = sub nsw i32 %47, 3
  %49 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %50 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 4
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %56 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %57 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %62 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %55, i32* %60, i32* %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @omap_mcpdm_write(%struct.omap_mcpdm*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
