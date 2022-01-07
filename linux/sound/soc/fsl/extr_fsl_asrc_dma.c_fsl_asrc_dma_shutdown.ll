; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.fsl_asrc_pair* }
%struct.fsl_asrc_pair = type { i64, %struct.fsl_asrc* }
%struct.fsl_asrc = type { %struct.fsl_asrc_pair** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @fsl_asrc_dma_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_dma_shutdown(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.fsl_asrc_pair*, align 8
  %6 = alloca %struct.fsl_asrc*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %11, align 8
  store %struct.fsl_asrc_pair* %12, %struct.fsl_asrc_pair** %5, align 8
  %13 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %14 = icmp ne %struct.fsl_asrc_pair* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %17, i32 0, i32 1
  %19 = load %struct.fsl_asrc*, %struct.fsl_asrc** %18, align 8
  store %struct.fsl_asrc* %19, %struct.fsl_asrc** %6, align 8
  %20 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %21 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %20, i32 0, i32 0
  %22 = load %struct.fsl_asrc_pair**, %struct.fsl_asrc_pair*** %21, align 8
  %23 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %24 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %22, i64 %25
  %27 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %26, align 8
  %28 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %29 = icmp eq %struct.fsl_asrc_pair* %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %32 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %31, i32 0, i32 0
  %33 = load %struct.fsl_asrc_pair**, %struct.fsl_asrc_pair*** %32, align 8
  %34 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %35 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %33, i64 %36
  store %struct.fsl_asrc_pair* null, %struct.fsl_asrc_pair** %37, align 8
  br label %38

38:                                               ; preds = %30, %16
  %39 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %40 = call i32 @kfree(%struct.fsl_asrc_pair* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @kfree(%struct.fsl_asrc_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
