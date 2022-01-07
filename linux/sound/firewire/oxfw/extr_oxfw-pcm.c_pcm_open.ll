; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_oxfw*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  store %struct.snd_oxfw* %8, %struct.snd_oxfw** %4, align 8
  %9 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %10 = call i32 @snd_oxfw_stream_lock_try(%struct.snd_oxfw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = call i32 @init_hw_params(%struct.snd_oxfw* %15, %struct.snd_pcm_substream* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %23 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %22, i32 0, i32 1
  %24 = call i64 @amdtp_stream_pcm_running(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %28 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %27, i32 0, i32 0
  %29 = call i64 @amdtp_stream_pcm_running(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %21
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = call i32 @limit_to_current_params(%struct.snd_pcm_substream* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %39)
  br label %41

41:                                               ; preds = %38, %36, %13
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %20
  %44 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %45 = call i32 @snd_oxfw_stream_lock_release(%struct.snd_oxfw* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_oxfw_stream_lock_try(%struct.snd_oxfw*) #1

declare dso_local i32 @init_hw_params(%struct.snd_oxfw*, %struct.snd_pcm_substream*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @limit_to_current_params(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_oxfw_stream_lock_release(%struct.snd_oxfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
