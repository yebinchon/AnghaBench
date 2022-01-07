; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_emu10k1 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_fx8010_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_fx8010_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %4, align 8
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %11, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %12, i64 %15
  store %struct.snd_emu10k1_fx8010_pcm* %16, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %17, i64 %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %29, i64 %36, i32 0)
  %38 = shl i32 %37, 2
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %41 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream* %40, i32* %42, i64 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %28, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i64, i32) #1

declare dso_local i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
