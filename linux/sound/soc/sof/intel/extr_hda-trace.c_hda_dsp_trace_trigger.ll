; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_trace_trigger(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sof_intel_hda_dev*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %9, align 8
  store %struct.sof_intel_hda_dev* %10, %struct.sof_intel_hda_dev** %5, align 8
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %12 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %5, align 8
  %13 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev* %11, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
