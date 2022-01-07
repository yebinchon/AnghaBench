; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ad1889 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@AD_DS_RAMC_ADEN = common dso_local global i32 0, align 4
@AD_DMA_ADCCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ad1889_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_ad1889*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ad1889* %7, %struct.snd_ad1889** %5, align 8
  %8 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %9 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AD_DS_RAMC_ADEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %22 = load i32, i32* @AD_DMA_ADCCA, align 4
  %23 = call i64 @ad1889_readl(%struct.snd_ad1889* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @snd_BUG_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %20
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @bytes_to_frames(i32 %43, i64 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %39, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ad1889_readl(%struct.snd_ad1889*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
