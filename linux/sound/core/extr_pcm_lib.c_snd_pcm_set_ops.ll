; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.snd_pcm_str* }
%struct.snd_pcm_str = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_ops*, %struct.snd_pcm_substream* }
%struct.snd_pcm_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_set_ops(%struct.snd_pcm* %0, i32 %1, %struct.snd_pcm_ops* %2) #0 {
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_ops*, align 8
  %7 = alloca %struct.snd_pcm_str*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_pcm_ops* %2, %struct.snd_pcm_ops** %6, align 8
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %11, i64 %13
  store %struct.snd_pcm_str* %14, %struct.snd_pcm_str** %7, align 8
  %15 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %8, align 8
  br label %18

18:                                               ; preds = %25, %3
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %20 = icmp ne %struct.snd_pcm_substream* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %6, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  store %struct.snd_pcm_ops* %22, %struct.snd_pcm_ops** %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 1
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %27, align 8
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %8, align 8
  br label %18

29:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
