; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ps3_card_info = type { i32, i64*, i64* }

@SND_PS3_CH_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ps3_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ps3_card_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ps3_card_info* %7, %struct.snd_ps3_card_info** %3, align 8
  %8 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @SND_PS3_CH_L, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @SND_PS3_CH_L, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %16, %22
  store i64 %23, i64* %4, align 8
  %24 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 2
  %32 = call i32 @bytes_to_frames(i32 %29, i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
