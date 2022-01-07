; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.atmel_i2s_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ATMEL_I2SC_CR_TXEN = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR_RXEN = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR_TXDIS = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR_RXDIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_MODE_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_MODE_MASTER = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @atmel_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.atmel_i2s_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.atmel_i2s_dev* %16, %struct.atmel_i2s_dev** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %42 [
    i32 130, label %24
    i32 131, label %24
    i32 132, label %24
    i32 129, label %33
    i32 128, label %33
    i32 133, label %33
  ]

24:                                               ; preds = %3, %3, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ATMEL_I2SC_CR_TXEN, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ATMEL_I2SC_CR_RXEN, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %45

33:                                               ; preds = %3, %3, %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @ATMEL_I2SC_CR_TXDIS, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ATMEL_I2SC_CR_RXDIS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %97

45:                                               ; preds = %40, %31
  %46 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %47 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATMEL_I2SC_MR, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %13)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %97

55:                                               ; preds = %45
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ATMEL_I2SC_MR_MODE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @ATMEL_I2SC_MR_MODE_MASTER, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %69 = call i32 @atmel_i2s_switch_mck_generator(%struct.atmel_i2s_dev* %68, i32 1)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %67, %64, %55
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %97

75:                                               ; preds = %70
  %76 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %77 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATMEL_I2SC_CR, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @regmap_write(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %97

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %94 = call i32 @atmel_i2s_switch_mck_generator(%struct.atmel_i2s_dev* %93, i32 0)
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %92, %89, %86
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %84, %73, %53, %42
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atmel_i2s_switch_mck_generator(%struct.atmel_i2s_dev*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
