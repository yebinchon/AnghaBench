; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32, i32 }

@SOF_HDA_SD_CTL_DMA_START = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_INTCTL = common dso_local global i32 0, align 4
@SOF_HDA_CL_DMA_SD_INT_MASK = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_STREAM_RUN_TIMEOUT = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error: unknown command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev* %0, %struct.hdac_ext_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.hdac_ext_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %14 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %13, i32 0, i32 0
  store %struct.hdac_stream* %14, %struct.hdac_stream** %8, align 8
  %15 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %16 = call i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %105 [
    i32 131, label %19
    i32 132, label %19
    i32 130, label %19
    i32 128, label %62
    i32 133, label %62
    i32 129, label %62
  ]

19:                                               ; preds = %3, %3, %3
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %21 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %22 = load i32, i32* @SOF_HDA_INTCTL, align 4
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %24 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %28 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %20, i32 %21, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %33 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %36 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %39 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %32, i32 %33, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %43 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %53 = load i32, i32* @HDA_DSP_STREAM_RUN_TIMEOUT, align 4
  %54 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %42, i32 %43, i32 %44, i32 %45, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %19
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %114

59:                                               ; preds = %19
  %60 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %61 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %113

62:                                               ; preds = %3, %3, %3
  %63 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %64 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %67 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %63, i32 %64, i32 %65, i32 %68, i32 0)
  %70 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %71 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %81 = load i32, i32* @HDA_DSP_STREAM_RUN_TIMEOUT, align 4
  %82 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %70, i32 %71, i32 %72, i32 %73, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %62
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %114

87:                                               ; preds = %62
  %88 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %89 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_STS, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %94 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %88, i32 %89, i32 %92, i32 %93)
  %95 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %96 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %98 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %99 = load i32, i32* @SOF_HDA_INTCTL, align 4
  %100 = load %struct.hdac_stream*, %struct.hdac_stream** %8, align 8
  %101 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %97, i32 %98, i32 %99, i32 %103, i32 0)
  br label %113

105:                                              ; preds = %3
  %106 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %107 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %114

113:                                              ; preds = %87, %59
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %105, %85, %57
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream*) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
