; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c2412_i2s_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c2412_i2s_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.s3c_i2sv2_info = type { i64 }

@S3C2412_IISFIC = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @s3c2412_i2s_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_i2s_delay(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.s3c_i2sv2_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai* %8)
  store %struct.s3c_i2sv2_info* %9, %struct.s3c_i2sv2_info** %5, align 8
  %10 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %5, align 8
  %11 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2412_IISFIC, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @S3C2412_IISFIC_TXCOUNT(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @S3C2412_IISFIC_RXCOUNT(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @S3C2412_IISFIC_TXCOUNT(i32) #1

declare dso_local i32 @S3C2412_IISFIC_RXCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
