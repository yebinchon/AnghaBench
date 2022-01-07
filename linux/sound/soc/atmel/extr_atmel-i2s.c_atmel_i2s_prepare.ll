; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.atmel_i2s_dev = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ATMEL_I2SC_SR = common dso_local global i32 0, align 4
@ATMEL_I2SC_SR_RXRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"RXRDY is set\0A\00", align 1
@ATMEL_I2SC_RHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_i2s_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.atmel_i2s_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.atmel_i2s_dev* %10, %struct.atmel_i2s_dev** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %5, align 8
  %21 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATMEL_I2SC_SR, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ATMEL_I2SC_SR_RXRDY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %5, align 8
  %35 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATMEL_I2SC_RHR, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %7)
  br label %39

39:                                               ; preds = %29, %19
  br label %40

40:                                               ; preds = %39, %2
  ret i32 0
}

declare dso_local %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
