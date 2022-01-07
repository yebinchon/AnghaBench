; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.snd_soc_dai* }
%struct.snd_pcm = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i32 }

@CONFIG_SND_HDA_PREALLOC_SIZE = common dso_local global i32 0, align 4
@MAX_PREALLOC_SIZE = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @skl_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skl_dev*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_soc_dai* %10, %struct.snd_soc_dai** %3, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.hdac_bus* @dev_get_drvdata(i32 %13)
  store %struct.hdac_bus* %14, %struct.hdac_bus** %4, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %16, align 8
  store %struct.snd_pcm* %17, %struct.snd_pcm** %5, align 8
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %19 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %18)
  store %struct.skl_dev* %19, %struct.skl_dev** %7, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %27, %1
  %36 = load i32, i32* @CONFIG_SND_HDA_PREALLOC_SIZE, align 4
  %37 = mul nsw i32 %36, 1024
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_PREALLOC_SIZE, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @MAX_PREALLOC_SIZE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %45 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %46 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %47 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_dma_pci_data(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MAX_PREALLOC_SIZE, align 4
  %52 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %44, i32 %45, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %43, %27
  ret i32 0
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
