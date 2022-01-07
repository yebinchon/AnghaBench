; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i64 }
%struct.snd_mask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, %struct.snd_mask*)* @snd_pcm_hw_param_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_param_mask(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, i32 %2, %struct.snd_mask* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_mask*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_mask* %3, %struct.snd_mask** %9, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %15 = call i32 @_snd_pcm_hw_param_mask(%struct.snd_pcm_hw_params* %12, i32 %13, %struct.snd_mask* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %28 = call i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream* %26, %struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %20
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %31, %18
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @_snd_pcm_hw_param_mask(%struct.snd_pcm_hw_params*, i32, %struct.snd_mask*) #1

declare dso_local i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
