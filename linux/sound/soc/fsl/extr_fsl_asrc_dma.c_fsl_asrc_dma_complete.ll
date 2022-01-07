; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.fsl_asrc_pair* }
%struct.fsl_asrc_pair = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsl_asrc_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_asrc_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.fsl_asrc_pair*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %7, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %12, align 8
  store %struct.fsl_asrc_pair* %13, %struct.fsl_asrc_pair** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  %16 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %17 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %23)
  %25 = icmp sge i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %30)
  ret void
}

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
