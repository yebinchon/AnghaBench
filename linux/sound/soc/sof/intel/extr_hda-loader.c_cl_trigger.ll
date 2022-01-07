; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32 }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32, i32 }

@HDA_DSP_CL_TRIGGER_TIMEOUT = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_INTCTL = common dso_local global i32 0, align 4
@SOF_HDA_SD_CTL_DMA_START = common dso_local global i32 0, align 4
@SOF_HDA_CL_DMA_SD_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32)* @cl_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_trigger(%struct.snd_sof_dev* %0, %struct.hdac_ext_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.hdac_ext_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %11 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %10, i32 0, i32 0
  store %struct.hdac_stream* %11, %struct.hdac_stream** %8, align 8
  %12 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %13 = call i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %51 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %17 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @HDA_DSP_CL_TRIGGER_TIMEOUT, align 4
  %26 = call i32 @wait_event_timeout(i32 %18, i32 %24, i32 %25)
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %28 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %29 = load i32, i32* @SOF_HDA_INTCTL, align 4
  %30 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %31 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %35 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %27, i32 %28, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %40 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %43 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %46 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %39, i32 %40, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %50 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %53 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev* %52, %struct.hdac_ext_stream* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
