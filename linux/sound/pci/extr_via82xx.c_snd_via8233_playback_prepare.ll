; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx = type { i32**, i32, i64, i64, i32*, i64 }

@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_SPDIF = common dso_local global i32 0, align 4
@OFS_PLAYBACK_VOLUME_L = common dso_local global i32 0, align 4
@OFS_PLAYBACK_VOLUME_R = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@VIA8233_REG_TYPE_16BIT = common dso_local global i32 0, align 4
@VIA8233_REG_TYPE_STEREO = common dso_local global i32 0, align 4
@OFFSET_STOP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via8233_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.via82xx* %11, %struct.via82xx** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 3
  %16 = load %struct.viadev*, %struct.viadev** %15, align 8
  store %struct.viadev* %16, %struct.viadev** %5, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %6, align 8
  %20 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %21 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 48000, %24 ], [ %28, %25 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %32 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @via_lock_rate(i32* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %168

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %45 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %48 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %49 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i32 [ 48000, %52 ], [ %56, %53 ]
  %59 = call i32 @snd_ac97_set_rate(i32 %46, i32 %47, i32 %58)
  br label %60

60:                                               ; preds = %57, %40
  %61 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %62 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.viadev*, %struct.viadev** %5, align 8
  %67 = getelementptr inbounds %struct.viadev, %struct.viadev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 48
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %72 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AC97_SPDIF, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_ac97_set_rate(i32 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %65, %60
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 48000
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1048575, i32* %9, align 4
  br label %96

85:                                               ; preds = %79
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 21, %88
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 40576, %92
  %94 = sdiv i32 %93, 48000
  %95 = add nsw i32 %89, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %85, %84
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, -1048576
  %99 = call i32 @snd_BUG_ON(i32 %98)
  %100 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %101 = load %struct.viadev*, %struct.viadev** %5, align 8
  %102 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %100, %struct.viadev* %101)
  %103 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %104 = load %struct.viadev*, %struct.viadev** %5, align 8
  %105 = call i32 @snd_via82xx_set_table_ptr(%struct.via82xx* %103, %struct.viadev* %104)
  %106 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %107 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load %struct.viadev*, %struct.viadev** %5, align 8
  %110 = getelementptr inbounds %struct.viadev, %struct.viadev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %108, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.viadev*, %struct.viadev** %5, align 8
  %119 = load i32, i32* @OFS_PLAYBACK_VOLUME_L, align 4
  %120 = call i32 @VIADEV_REG(%struct.viadev* %118, i32 %119)
  %121 = call i32 @outb(i32 %117, i32 %120)
  %122 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %123 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load %struct.viadev*, %struct.viadev** %5, align 8
  %126 = getelementptr inbounds %struct.viadev, %struct.viadev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %127, 16
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %124, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.viadev*, %struct.viadev** %5, align 8
  %135 = load i32, i32* @OFS_PLAYBACK_VOLUME_R, align 4
  %136 = call i32 @VIADEV_REG(%struct.viadev* %134, i32 %135)
  %137 = call i32 @outb(i32 %133, i32 %136)
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %96
  %144 = load i32, i32* @VIA8233_REG_TYPE_16BIT, align 4
  br label %146

145:                                              ; preds = %96
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  %148 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @VIA8233_REG_TYPE_STEREO, align 4
  br label %155

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %147, %156
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %157, %158
  %160 = or i32 %159, -16777216
  %161 = load %struct.viadev*, %struct.viadev** %5, align 8
  %162 = load i32, i32* @OFFSET_STOP_IDX, align 4
  %163 = call i32 @VIADEV_REG(%struct.viadev* %161, i32 %162)
  %164 = call i32 @outl(i32 %160, i32 %163)
  %165 = call i32 @udelay(i32 20)
  %166 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %167 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %166, i32 0)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %155, %38
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @via_lock_rate(i32*, i32) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

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
