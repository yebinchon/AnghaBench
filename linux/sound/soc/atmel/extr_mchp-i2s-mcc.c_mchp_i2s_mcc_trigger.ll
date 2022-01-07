; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.mchp_i2s_mcc_dev = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@MCHP_I2SMCC_CR_TXEN = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR_CKEN = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR_RXEN = common dso_local global i32 0, align 4
@MCHP_I2SMCC_SR = common dso_local global i32 0, align 4
@MCHP_I2SMCC_SR_TXEN = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR_TXDIS = common dso_local global i32 0, align 4
@MCHP_I2SMCC_SR_RXEN = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR_RXDIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable GCLK: %d\0A\00", align 1
@MCHP_I2SMCC_IERA = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @mchp_i2s_mcc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mchp_i2s_mcc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = call %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.mchp_i2s_mcc_dev* %15, %struct.mchp_i2s_mcc_dev** %8, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %74 [
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 129, label %35
    i32 128, label %35
    i32 133, label %35
  ]

23:                                               ; preds = %3, %3, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @MCHP_I2SMCC_CR_TXEN, align 4
  %28 = load i32, i32* @MCHP_I2SMCC_CR_CKEN, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @MCHP_I2SMCC_CR_RXEN, align 4
  %32 = load i32, i32* @MCHP_I2SMCC_CR_CKEN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %77

35:                                               ; preds = %3, %3, %3
  %36 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %37 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MCHP_I2SMCC_SR, align 4
  %40 = call i32 @regmap_read(i32 %38, i32 %39, i32* %12)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MCHP_I2SMCC_SR_TXEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @MCHP_I2SMCC_CR_TXDIS, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %51 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %50, i32 0, i32 7
  store i32 0, i32* %51, align 8
  %52 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %53 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %54)
  store i32 %55, i32* %11, align 4
  br label %73

56:                                               ; preds = %43, %35
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @MCHP_I2SMCC_SR_RXEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @MCHP_I2SMCC_CR_RXDIS, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %67 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %66, i32 0, i32 6
  store i32 0, i32* %67, align 4
  %68 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %69 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %64, %59, %56
  br label %73

73:                                               ; preds = %72, %48
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %122

77:                                               ; preds = %73, %34
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @MCHP_I2SMCC_CR_CKEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %84 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %82
  %88 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %89 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %94 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @clk_enable(i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %101 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @dev_err_once(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %108

105:                                              ; preds = %92
  %106 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %107 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %87, %82, %77
  %110 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %111 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MCHP_I2SMCC_IERA, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @regmap_write(i32 %112, i32 %113, i32 %114)
  %116 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %8, align 8
  %117 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MCHP_I2SMCC_CR, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @regmap_write(i32 %118, i32 %119, i32 %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %109, %74
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32) #1

declare dso_local i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err_once(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
