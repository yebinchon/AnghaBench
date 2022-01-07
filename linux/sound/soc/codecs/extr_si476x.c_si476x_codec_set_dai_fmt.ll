; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_si476x.c_si476x_codec_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_si476x.c_si476x_codec_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.si476x_core = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_DSP_A = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_DSP_B = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_I2S = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_RIGHT_J = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_LEFT_J = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_IB = common dso_local global i32 0, align 4
@SI476X_DAUDIO_MODE_IF = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@SI476X_DIGITAL_IO_OUTPUT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to set output format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @si476x_codec_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_codec_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.si476x_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.si476x_core* @i2c_mfd_cell_to_core(i32 %11)
  store %struct.si476x_core* %12, %struct.si476x_core** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %45 [
    i32 136, label %25
    i32 135, label %29
    i32 134, label %33
    i32 128, label %37
    i32 131, label %41
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @SI476X_DAUDIO_MODE_DSP_A, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i32, i32* @SI476X_DAUDIO_MODE_DSP_B, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %48

33:                                               ; preds = %21
  %34 = load i32, i32* @SI476X_DAUDIO_MODE_I2S, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %48

37:                                               ; preds = %21
  %38 = load i32, i32* @SI476X_DAUDIO_MODE_RIGHT_J, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %21
  %42 = load i32, i32* @SI476X_DAUDIO_MODE_LEFT_J, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %21
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %114

48:                                               ; preds = %41, %37, %33, %29, %25
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %88 [
    i32 136, label %52
    i32 135, label %52
    i32 134, label %65
    i32 128, label %65
    i32 131, label %65
  ]

52:                                               ; preds = %48, %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %61 [
    i32 129, label %56
    i32 132, label %57
  ]

56:                                               ; preds = %52
  br label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @SI476X_DAUDIO_MODE_IB, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %114

64:                                               ; preds = %57, %56
  br label %91

65:                                               ; preds = %48, %48, %48
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %84 [
    i32 129, label %69
    i32 133, label %70
    i32 132, label %76
    i32 130, label %80
  ]

69:                                               ; preds = %65
  br label %87

70:                                               ; preds = %65
  %71 = load i32, i32* @SI476X_DAUDIO_MODE_IB, align 4
  %72 = load i32, i32* @SI476X_DAUDIO_MODE_IF, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %87

76:                                               ; preds = %65
  %77 = load i32, i32* @SI476X_DAUDIO_MODE_IB, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %87

80:                                               ; preds = %65
  %81 = load i32, i32* @SI476X_DAUDIO_MODE_IF, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %87

84:                                               ; preds = %65
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %114

87:                                               ; preds = %80, %76, %70, %69
  br label %91

88:                                               ; preds = %48
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %114

91:                                               ; preds = %87, %64
  %92 = load %struct.si476x_core*, %struct.si476x_core** %6, align 8
  %93 = call i32 @si476x_core_lock(%struct.si476x_core* %92)
  %94 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* @SI476X_DIGITAL_IO_OUTPUT_FORMAT, align 4
  %98 = load i32, i32* @SI476X_DIGITAL_IO_OUTPUT_FORMAT_MASK, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.TYPE_2__* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.si476x_core*, %struct.si476x_core** %6, align 8
  %102 = call i32 @si476x_core_unlock(%struct.si476x_core* %101)
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %91
  %106 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %107 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %105, %88, %84, %61, %45, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.si476x_core* @i2c_mfd_cell_to_core(i32) #1

declare dso_local i32 @si476x_core_lock(%struct.si476x_core*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @si476x_core_unlock(%struct.si476x_core*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
