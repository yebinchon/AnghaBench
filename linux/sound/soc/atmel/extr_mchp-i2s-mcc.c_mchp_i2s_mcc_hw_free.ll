; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.mchp_i2s_mcc_dev = type { i32, i32, i64, i32, i64, i32, i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Timeout waiting for Tx ready\0A\00", align 1
@MCHP_I2SMCC_IDRA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Timeout waiting for Rx ready\0A\00", align 1
@MCHP_I2SMCC_CR = common dso_local global i32 0, align 4
@MCHP_I2SMCC_CR_CKDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mchp_i2s_mcc_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_hw_free(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.mchp_i2s_mcc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.mchp_i2s_mcc_dev* %9, %struct.mchp_i2s_mcc_dev** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @msecs_to_jiffies(i32 500)
  %26 = call i64 @wait_event_interruptible_timeout(i32 %21, i32 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %18
  %30 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_warn_once(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %35 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MCHP_I2SMCC_IDRA, align 4
  %38 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %40)
  %42 = call i32 @regmap_write(i32 %36, i32 %37, i32 %41)
  %43 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %29, %18
  br label %74

46:                                               ; preds = %2
  %47 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msecs_to_jiffies(i32 500)
  %54 = call i64 @wait_event_interruptible_timeout(i32 %49, i32 %52, i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %59 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_warn_once(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %63 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MCHP_I2SMCC_IDRA, align 4
  %66 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %67 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %68)
  %70 = call i32 @regmap_write(i32 %64, i32 %65, i32 %69)
  %71 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %72 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %57, %46
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %76 = call i32 @mchp_i2s_mcc_is_running(%struct.mchp_i2s_mcc_dev* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %74
  %79 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %80 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MCHP_I2SMCC_CR, align 4
  %83 = load i32, i32* @MCHP_I2SMCC_CR_CKDIS, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %86 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %91 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @clk_disable(i32 %92)
  %94 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %78
  %97 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %98 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %103 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @clk_unprepare(i32 %104)
  %106 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %5, align 8
  %107 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %101, %96
  br label %109

109:                                              ; preds = %108, %74
  ret i32 0
}

declare dso_local %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32) #1

declare dso_local i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32) #1

declare dso_local i32 @mchp_i2s_mcc_is_running(%struct.mchp_i2s_mcc_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
