; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.snd_pcm**, i32, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i32, i32, i64, i32, %struct.snd_ali* }
%struct.TYPE_2__ = type { i32 }
%struct.ali_pcm_description = type { i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"snd_ali_pcm: err called snd_pcm_new.\0A\00", align 1
@snd_ali_pcm_free = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*, i32, %struct.ali_pcm_description*)* @snd_ali_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_pcm(%struct.snd_ali* %0, i32 %1, %struct.ali_pcm_description* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ali*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ali_pcm_description*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ali_pcm_description* %2, %struct.ali_pcm_description** %7, align 8
  %10 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %14 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %18 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %21 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_pcm_new(%struct.TYPE_2__* %12, i32 %15, i32 %16, i32 %19, i32 %22, %struct.snd_pcm** %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %3
  %35 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 5
  store %struct.snd_ali* %35, %struct.snd_ali** %37, align 8
  %38 = load i32, i32* @snd_ali_pcm_free, align 4
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %42 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %47 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %48 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %49 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %46, i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %45, %34
  %53 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %54 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %59 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %60 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %61 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %58, i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %66 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %67 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @snd_dma_pci_data(i32 %69)
  %71 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %65, i32 %66, i32 %70, i32 65536, i32 131072)
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %73 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %75 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %81 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %83 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ali_pcm_description*, %struct.ali_pcm_description** %7, align 8
  %86 = getelementptr inbounds %struct.ali_pcm_description, %struct.ali_pcm_description* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strcpy(i32 %84, i32 %87)
  %89 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %90 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %91 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %90, i32 0, i32 0
  %92 = load %struct.snd_pcm**, %struct.snd_pcm*** %91, align 8
  %93 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %92, i64 0
  store %struct.snd_pcm* %89, %struct.snd_pcm** %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %64, %26
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i64) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
