; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32 }

@DAC33_SER_AUDIOIF_CTRL_A = common dso_local global i32 0, align 4
@DAC33_SER_AUDIOIF_CTRL_B = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@DAC33_MSBCLK = common dso_local global i32 0, align 4
@DAC33_MSWCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FIFO mode requires master mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DAC33_AFMT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DAC33_AFMT_I2S = common dso_local global i32 0, align 4
@DAC33_AFMT_DSP = common dso_local global i32 0, align 4
@DAC33_DATA_DELAY_MASK = common dso_local global i32 0, align 4
@DAC33_AFMT_RIGHT_J = common dso_local global i32 0, align 4
@DAC33_AFMT_LEFT_J = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported format (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @dac33_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tlv320dac33_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tlv320dac33_priv* %14, %struct.tlv320dac33_priv** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_A, align 4
  %17 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %20 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %50 [
    i32 133, label %24
    i32 132, label %30
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @DAC33_MSBCLK, align 4
  %26 = load i32, i32* @DAC33_MSWCLK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %32 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %103

42:                                               ; preds = %30
  %43 = load i32, i32* @DAC33_MSBCLK, align 4
  %44 = load i32, i32* @DAC33_MSWCLK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %42
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %103

53:                                               ; preds = %49, %24
  %54 = load i32, i32* @DAC33_AFMT_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %84 [
    i32 130, label %61
    i32 131, label %65
    i32 128, label %76
    i32 129, label %80
  ]

61:                                               ; preds = %53
  %62 = load i32, i32* @DAC33_AFMT_I2S, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %94

65:                                               ; preds = %53
  %66 = load i32, i32* @DAC33_AFMT_DSP, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @DAC33_DATA_DELAY_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = call i32 @DAC33_DATA_DELAY(i32 0)
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %94

76:                                               ; preds = %53
  %77 = load i32, i32* @DAC33_AFMT_RIGHT_J, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %94

80:                                               ; preds = %53
  %81 = load i32, i32* @DAC33_AFMT_LEFT_J, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %94

84:                                               ; preds = %53
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %86 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %80, %76, %65, %61
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %96 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_A, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %100 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %84, %50, %35
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dac33_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @DAC33_DATA_DELAY(i32) #1

declare dso_local i32 @dac33_write_reg_cache(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
