; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_spib_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_spib_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32* }
%struct.hdac_ext_stream = type { i32, %struct.hdac_stream }
%struct.hdac_stream = type { i32 }

@HDA_DSP_SPIB_BAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"error: address of spib capability is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SPBFIFO_SPBFCCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev* %0, %struct.hdac_ext_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.hdac_ext_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdac_stream*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %13 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %12, i32 0, i32 1
  store %struct.hdac_stream* %13, %struct.hdac_stream** %10, align 8
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %15 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @HDA_DSP_SPIB_BAR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %30 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %34 = load i64, i64* @HDA_DSP_SPIB_BAR, align 8
  %35 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SPBFIFO_SPBFCCTL, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %39 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %33, i64 %34, i32 %35, i32 %36, i32 %41)
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %44 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %45 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @sof_io_write(%struct.snd_sof_dev* %43, i32 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %28, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i64, i32, i32, i32) #1

declare dso_local i32 @sof_io_write(%struct.snd_sof_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
