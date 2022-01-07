; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_create_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_create_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, %struct.snd_pcm*, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.snd_pcm = type { i32, i32, i64, %struct.snd_pcxhr* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"pcxhr %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot create pcm %s\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@pcxhr_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_create_pcm(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %3, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %8 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @snprintf(i8* %7, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %16 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snd_pcm_new(%struct.TYPE_4__* %14, i8* %15, i32 0, i32 %18, i32 %21, %struct.snd_pcm** %5)
  store i32 %22, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %1
  %34 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 3
  store %struct.snd_pcxhr* %34, %struct.snd_pcxhr** %36, align 8
  %37 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %43 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %44 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %42, i32 %43, i32* @pcxhr_ops)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %52 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %53 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %51, i32 %52, i32* @pcxhr_ops)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %63 = call i32 @strcpy(i32 %61, i8* %62)
  %64 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %65 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %66 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @snd_dma_pci_data(i32 %70)
  %72 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %64, i32 %65, i32 %71, i32 32768, i32 32768)
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %74 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %74, i32 0, i32 1
  store %struct.snd_pcm* %73, %struct.snd_pcm** %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %54, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_4__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
