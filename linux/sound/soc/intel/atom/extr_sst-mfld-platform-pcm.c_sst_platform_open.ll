; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_pcm_runtime = type { i32 }
%struct.TYPE_2__ = type { i64 }

@sst_platform_pcm_hw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sst_platform_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %4, align 8
  %16 = load i32, i32* @sst_platform_pcm_hw, align 4
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
