; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_action_nonatomic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_action_nonatomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_ops = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@snd_pcm_link_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.action_ops*, %struct.snd_pcm_substream*, i32)* @snd_pcm_action_nonatomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_action_nonatomic(%struct.action_ops* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.action_ops*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.action_ops* %0, %struct.action_ops** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @down_read(i32* @snd_pcm_link_rwsem)
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @snd_pcm_action_group(%struct.action_ops* %13, %struct.snd_pcm_substream* %14, i32 %15, i32 0)
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @snd_pcm_action_single(%struct.action_ops* %18, %struct.snd_pcm_substream* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = call i32 @up_read(i32* @snd_pcm_link_rwsem)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_action_group(%struct.action_ops*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_pcm_action_single(%struct.action_ops*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
