; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.fsl_asrc_pair* }
%struct.fsl_asrc_pair = type { i32* }

@IN = common dso_local global i64 0, align 8
@OUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @fsl_asrc_dma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_dma_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.fsl_asrc_pair*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %13, align 8
  store %struct.fsl_asrc_pair* %14, %struct.fsl_asrc_pair** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %53 [
    i32 130, label %16
    i32 131, label %16
    i32 132, label %16
    i32 129, label %38
    i32 128, label %38
    i32 133, label %38
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = call i32 @fsl_asrc_dma_prepare_and_submit(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %16
  %24 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %25 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @IN, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_async_issue_pending(i32 %29)
  %31 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %32 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @OUT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_async_issue_pending(i32 %36)
  br label %56

38:                                               ; preds = %2, %2, %2
  %39 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %40 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @OUT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dmaengine_terminate_all(i32 %44)
  %46 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %47 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @IN, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dmaengine_terminate_all(i32 %51)
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %38, %23
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @fsl_asrc_dma_prepare_and_submit(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
