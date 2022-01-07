; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_action.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_ops = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.action_ops*, %struct.snd_pcm_substream*, i32)* @snd_pcm_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_action(%struct.action_ops* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.action_ops*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_group*, align 8
  %8 = alloca i32, align 4
  store %struct.action_ops* %0, %struct.action_ops** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = call %struct.snd_pcm_group* @snd_pcm_stream_group_ref(%struct.snd_pcm_substream* %9)
  store %struct.snd_pcm_group* %10, %struct.snd_pcm_group** %7, align 8
  %11 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %7, align 8
  %12 = icmp ne %struct.snd_pcm_group* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @snd_pcm_action_group(%struct.action_ops* %14, %struct.snd_pcm_substream* %15, i32 %16, i32 1)
  store i32 %17, i32* %8, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snd_pcm_action_single(%struct.action_ops* %19, %struct.snd_pcm_substream* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %7, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %26 = call i32 @snd_pcm_group_unref(%struct.snd_pcm_group* %24, %struct.snd_pcm_substream* %25)
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.snd_pcm_group* @snd_pcm_stream_group_ref(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_action_group(%struct.action_ops*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_pcm_action_single(%struct.action_ops*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_group_unref(%struct.snd_pcm_group*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
