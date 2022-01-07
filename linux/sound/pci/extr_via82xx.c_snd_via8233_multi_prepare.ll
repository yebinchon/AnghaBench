; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_multi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_multi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i32, %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_SURR_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LFE_DAC_RATE = common dso_local global i32 0, align 4
@AC97_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@VIA_REG_MULTPLAY_FMT_16BIT = common dso_local global i32 0, align 4
@VIA_REG_MULTPLAY_FMT_8BIT = common dso_local global i32 0, align 4
@OFS_MULTPLAY_FORMAT = common dso_local global i32 0, align 4
@OFFSET_STOP_IDX = common dso_local global i32 0, align 4
@VIA_REV_8233A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via8233_multi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_multi_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.via82xx* %10, %struct.via82xx** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 3
  %15 = load %struct.viadev*, %struct.viadev** %14, align 8
  store %struct.viadev* %15, %struct.viadev** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %6, align 8
  %19 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %20 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @via_lock_rate(i32* %22, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %1
  %32 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %33 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_ac97_set_rate(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %41 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_ac97_set_rate(i32 %42, i32 %43, i32 %46)
  %48 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %49 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AC97_PCM_LFE_DAC_RATE, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_ac97_set_rate(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %57 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AC97_SPDIF, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_ac97_set_rate(i32 %58, i32 %59, i32 %62)
  %64 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %65 = load %struct.viadev*, %struct.viadev** %5, align 8
  %66 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %64, %struct.viadev* %65)
  %67 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %68 = load %struct.viadev*, %struct.viadev** %5, align 8
  %69 = call i32 @snd_via82xx_set_table_ptr(%struct.via82xx* %67, %struct.viadev* %68)
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %31
  %76 = load i32, i32* @VIA_REG_MULTPLAY_FMT_16BIT, align 4
  br label %79

77:                                               ; preds = %31
  %78 = load i32, i32* @VIA_REG_MULTPLAY_FMT_8BIT, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %8, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.viadev*, %struct.viadev** %5, align 8
  %89 = load i32, i32* @OFS_MULTPLAY_FORMAT, align 4
  %90 = call i32 @VIADEV_REG(%struct.viadev* %88, i32 %89)
  %91 = call i32 @outb(i32 %87, i32 %90)
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %101 [
    i32 1, label %95
    i32 2, label %96
    i32 3, label %97
    i32 4, label %98
    i32 5, label %99
    i32 6, label %100
  ]

95:                                               ; preds = %79
  store i32 17, i32* %7, align 4
  br label %102

96:                                               ; preds = %79
  store i32 33, i32* %7, align 4
  br label %102

97:                                               ; preds = %79
  store i32 1313, i32* %7, align 4
  br label %102

98:                                               ; preds = %79
  store i32 17185, i32* %7, align 4
  br label %102

99:                                               ; preds = %79
  store i32 344865, i32* %7, align 4
  br label %102

100:                                              ; preds = %79
  store i32 6636321, i32* %7, align 4
  br label %102

101:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %100, %99, %98, %97, %96, %95
  %103 = load i32, i32* %7, align 4
  %104 = or i32 -16777216, %103
  %105 = load %struct.viadev*, %struct.viadev** %5, align 8
  %106 = load i32, i32* @OFFSET_STOP_IDX, align 4
  %107 = call i32 @VIADEV_REG(%struct.viadev* %105, i32 %106)
  %108 = call i32 @outl(i32 %104, i32 %107)
  %109 = call i32 @udelay(i32 20)
  %110 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %111 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %110, i32 0)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %102, %28
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @via_lock_rate(i32*, i32) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @snd_via82xx_set_table_ptr(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
