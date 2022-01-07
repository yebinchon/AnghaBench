; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_pcm1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_pcm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i32, %struct.snd_pcm**, %struct.TYPE_2__* }
%struct.snd_pcm = type { i8*, i32, i64, %struct.intel8x0m* }
%struct.TYPE_2__ = type { i8* }
%struct.ich_pcm_table = type { i8*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Intel ICH - %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Intel ICH\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_CLASS_MODEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*, i32, %struct.ich_pcm_table*)* @snd_intel8x0m_pcm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_pcm1(%struct.intel8x0m* %0, i32 %1, %struct.ich_pcm_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel8x0m*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ich_pcm_table*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store %struct.intel8x0m* %0, %struct.intel8x0m** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ich_pcm_table* %2, %struct.ich_pcm_table** %7, align 8
  %11 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %12 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %17 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %18 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %26 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %31 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %37 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = call i32 @snd_pcm_new(%struct.TYPE_2__* %27, i8* %28, i32 %29, i32 %35, i32 %41, %struct.snd_pcm** %8)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %128

47:                                               ; preds = %24
  %48 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %49 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %54 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %55 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %56 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %53, i32 %54, i64 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %61 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %66 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %67 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %68 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %65, i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %74 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %73, i32 0, i32 3
  store %struct.intel8x0m* %72, %struct.intel8x0m** %74, align 8
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @SNDRV_PCM_CLASS_MODEM, align 4
  %78 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %79 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %81 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %71
  %85 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %86 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %89 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %94 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %92, i8* %95)
  br label %107

97:                                               ; preds = %71
  %98 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %99 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %102 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strcpy(i8* %100, i8* %105)
  br label %107

107:                                              ; preds = %97, %84
  %108 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %109 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %110 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %109, i32 0, i32 1
  %111 = load %struct.snd_pcm**, %struct.snd_pcm*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %111, i64 %113
  store %struct.snd_pcm* %108, %struct.snd_pcm** %114, align 8
  %115 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %116 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %117 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %118 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @snd_dma_pci_data(i32 %119)
  %121 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %122 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %125 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %115, i32 %116, i32 %120, i32 %123, i32 %126)
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %107, %45
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i64) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
