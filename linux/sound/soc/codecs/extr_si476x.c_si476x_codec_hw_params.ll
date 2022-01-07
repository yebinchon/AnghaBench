; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_si476x.c_si476x_codec_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_si476x.c_si476x_codec_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.si476x_core = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Rate: %d is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SI476X_PCM_FORMAT_S8 = common dso_local global i32 0, align 4
@SI476X_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SI476X_PCM_FORMAT_S20_3LE = common dso_local global i32 0, align 4
@SI476X_PCM_FORMAT_S24_LE = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_OUTPUT_SAMPLE_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to set sample rate\0A\00", align 1
@SI476X_DIGITAL_IO_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_OUTPUT_WIDTH_MASK = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_SLOT_SIZE_SHIFT = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_SAMPLE_SIZE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set output width\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @si476x_codec_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_codec_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.si476x_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.si476x_core* @i2c_mfd_cell_to_core(i32 %14)
  store %struct.si476x_core* %15, %struct.si476x_core** %8, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 48000
  br i1 %22, label %23, label %33

23:                                               ; preds = %20, %3
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %20
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_width(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %44 [
    i32 8, label %36
    i32 16, label %38
    i32 20, label %40
    i32 24, label %42
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* @SI476X_PCM_FORMAT_S8, align 4
  store i32 %37, i32* %10, align 4
  br label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @SI476X_PCM_FORMAT_S16_LE, align 4
  store i32 %39, i32* %10, align 4
  br label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @SI476X_PCM_FORMAT_S20_3LE, align 4
  store i32 %41, i32* %10, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @SI476X_PCM_FORMAT_S24_LE, align 4
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %93

47:                                               ; preds = %42, %40, %38, %36
  %48 = load %struct.si476x_core*, %struct.si476x_core** %8, align 8
  %49 = call i32 @si476x_core_lock(%struct.si476x_core* %48)
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* @SI476X_DIGITAL_IO_OUTPUT_SAMPLE_RATE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snd_soc_component_write(%struct.TYPE_3__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %89

65:                                               ; preds = %47
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* @SI476X_DIGITAL_IO_OUTPUT_FORMAT, align 4
  %70 = load i32, i32* @SI476X_DIGITAL_IO_OUTPUT_WIDTH_MASK, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SI476X_DIGITAL_IO_SLOT_SIZE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SI476X_DIGITAL_IO_SAMPLE_SIZE_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = call i32 @snd_soc_component_update_bits(%struct.TYPE_3__* %68, i32 %69, i32 %70, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %89

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %81, %58
  %90 = load %struct.si476x_core*, %struct.si476x_core** %8, align 8
  %91 = call i32 @si476x_core_unlock(%struct.si476x_core* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %44, %23
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.si476x_core* @i2c_mfd_cell_to_core(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @si476x_core_lock(%struct.si476x_core*) #1

declare dso_local i32 @snd_soc_component_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @si476x_core_unlock(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
