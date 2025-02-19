; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_intel-ipc.c_intel_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_intel-ipc.c_intel_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_stream* }
%struct.intel_stream = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pcm_open(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.intel_stream*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.intel_stream* @kmalloc(i32 4, i32 %7)
  store %struct.intel_stream* %8, %struct.intel_stream** %6, align 8
  %9 = load %struct.intel_stream*, %struct.intel_stream** %6, align 8
  %10 = icmp ne %struct.intel_stream* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.intel_stream*, %struct.intel_stream** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.intel_stream* %15, %struct.intel_stream** %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.intel_stream* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
