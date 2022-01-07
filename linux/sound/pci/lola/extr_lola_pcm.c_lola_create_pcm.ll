; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_create_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_create_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.snd_pcm = type { %struct.lola*, i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Digigram Lola\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@lola_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_create_pcm(%struct.lola* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lola*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %12 = load %struct.lola*, %struct.lola** %3, align 8
  %13 = getelementptr inbounds %struct.lola, %struct.lola* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @snd_dma_pci_data(i32 %14)
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.lola*, %struct.lola** %3, align 8
  %18 = getelementptr inbounds %struct.lola, %struct.lola* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @snd_dma_alloc_pages(i32 %11, i32 %15, i32 %16, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.lola*, %struct.lola** %3, align 8
  %35 = getelementptr inbounds %struct.lola, %struct.lola* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lola*, %struct.lola** %3, align 8
  %38 = getelementptr inbounds %struct.lola, %struct.lola* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lola*, %struct.lola** %3, align 8
  %45 = getelementptr inbounds %struct.lola, %struct.lola* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_pcm_new(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i64 %43, i64 %50, %struct.snd_pcm** %4)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %33
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strlcpy(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4)
  %61 = load %struct.lola*, %struct.lola** %3, align 8
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %62, i32 0, i32 0
  store %struct.lola* %61, %struct.lola** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %82, %56
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.lola*, %struct.lola** %3, align 8
  %69 = getelementptr inbounds %struct.lola, %struct.lola* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %78, i32 %79, i32* @lola_pcm_ops)
  br label %81

81:                                               ; preds = %77, %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %87 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %88 = load %struct.lola*, %struct.lola** %3, align 8
  %89 = getelementptr inbounds %struct.lola, %struct.lola* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snd_dma_pci_data(i32 %90)
  %92 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %86, i32 %87, i32 %91, i32 65536, i32 33554432)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %54, %27
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i64, i64, %struct.snd_pcm**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
