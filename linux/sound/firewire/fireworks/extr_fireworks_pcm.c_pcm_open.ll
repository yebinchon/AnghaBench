; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_efw* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_efw = type { i32, i32 }

@SND_EFW_CLOCK_SOURCE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_efw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_efw*, %struct.snd_efw** %9, align 8
  store %struct.snd_efw* %10, %struct.snd_efw** %4, align 8
  %11 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %12 = call i32 @snd_efw_stream_lock_try(%struct.snd_efw* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = call i32 @pcm_init_hw_params(%struct.snd_efw* %17, %struct.snd_pcm_substream* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %67

23:                                               ; preds = %16
  %24 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %25 = call i32 @snd_efw_command_get_clock_source(%struct.snd_efw* %24, i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %67

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SND_EFW_CLOCK_SOURCE_INTERNAL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %35 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %34, i32 0, i32 1
  %36 = call i64 @amdtp_stream_pcm_running(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %40 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %39, i32 0, i32 0
  %41 = call i64 @amdtp_stream_pcm_running(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38, %33, %29
  %44 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %45 = call i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw* %44, i32* %5)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %67

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %49, %38
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %64 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %63)
  br label %65

65:                                               ; preds = %62, %15
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %48, %28, %22
  %68 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %69 = call i32 @snd_efw_stream_lock_release(%struct.snd_efw* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %65
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @snd_efw_stream_lock_try(%struct.snd_efw*) #1

declare dso_local i32 @pcm_init_hw_params(%struct.snd_efw*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_efw_command_get_clock_source(%struct.snd_efw*, i32*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw*, i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_efw_stream_lock_release(%struct.snd_efw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
