; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_dbri = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dbri_streaminfo = type { i32, i64 }

@D_USR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hw_free.\0A\00", align 1
@DBRI_PLAY = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_dbri_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca %struct.dbri_streaminfo*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_dbri* %7, %struct.snd_dbri** %3, align 8
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri* %8, %struct.snd_pcm_substream* %9)
  store %struct.dbri_streaminfo* %10, %struct.dbri_streaminfo** %4, align 8
  %11 = load i32, i32* @D_USR, align 4
  %12 = call i32 @dprintk(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %14 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i64 @DBRI_STREAMNO(%struct.snd_pcm_substream* %18)
  %20 = load i64, i64* @DBRI_PLAY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %28 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %32 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dma_unmap_single(i32* %30, i64 %33, i32 %38, i32 %39)
  %41 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %42 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %26, %1
  %44 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %45 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %50 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %51 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @reset_pipe(%struct.snd_dbri* %49, i32 %52)
  %54 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %55 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %58 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %57)
  ret i32 %58
}

declare dso_local %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @DBRI_STREAMNO(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @reset_pipe(%struct.snd_dbri*, i32) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
