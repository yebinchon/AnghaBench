; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_card_dummy_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_card_dummy_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_ops = type { i32 }
%struct.snd_dummy = type { %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_dummy* }

@.str = private unnamed_addr constant [10 x i8] c"Dummy PCM\00", align 1
@fake_buffer = common dso_local global i64 0, align 8
@dummy_pcm_ops_no_buf = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@dummy_pcm_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dummy*, i32, i32)* @snd_card_dummy_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_dummy_pcm(%struct.snd_dummy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_dummy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca %struct.snd_pcm_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_dummy* %0, %struct.snd_dummy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %12 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @snd_pcm_new(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16, %struct.snd_pcm** %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %24 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %25 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %24, i32 0, i32 0
  store %struct.snd_pcm* %23, %struct.snd_pcm** %25, align 8
  %26 = load i64, i64* @fake_buffer, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.snd_pcm_ops* @dummy_pcm_ops_no_buf, %struct.snd_pcm_ops** %9, align 8
  br label %30

29:                                               ; preds = %22
  store %struct.snd_pcm_ops* @dummy_pcm_ops, %struct.snd_pcm_ops** %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %33 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %9, align 8
  %34 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, %struct.snd_pcm_ops* %33)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %36 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %37 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %9, align 8
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %35, i32 %36, %struct.snd_pcm_ops* %37)
  %39 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 2
  store %struct.snd_dummy* %39, %struct.snd_dummy** %41, align 8
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %43 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcpy(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* @fake_buffer, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %30
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %52 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @snd_dma_continuous_data(i32 %53)
  %55 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %51, i32 %52, i32 %54, i32 0, i32 65536)
  br label %56

56:                                               ; preds = %50, %30
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, %struct.snd_pcm_ops*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
