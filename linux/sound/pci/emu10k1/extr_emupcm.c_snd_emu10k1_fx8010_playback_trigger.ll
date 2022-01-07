; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_emu10k1 = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32, i32, i64, i32, i32 }

@snd_emu10k1_fx8010_playback_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPCS0 = common dso_local global i32 0, align 4
@SPCS_CHANNELNUM_LEFT = common dso_local global i32 0, align 4
@SPCS_CLKACCY_1000PPM = common dso_local global i32 0, align 4
@SPCS_COPYRIGHT = common dso_local global i32 0, align 4
@SPCS_EMPHASIS_NONE = common dso_local global i32 0, align 4
@SPCS_GENERATIONSTATUS = common dso_local global i32 0, align 4
@SPCS_NOTAUDIODATA = common dso_local global i32 0, align 4
@SPCS_SAMPLERATE_48 = common dso_local global i32 0, align 4
@SPCS_SOURCENUM_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_fx8010_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_fx8010_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_emu10k1* %9, %struct.snd_emu10k1** %5, align 8
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %13, i64 %16
  store %struct.snd_emu10k1_fx8010_pcm* %17, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %69 [
    i32 130, label %22
    i32 132, label %22
    i32 131, label %22
    i32 129, label %47
    i32 133, label %47
    i32 128, label %47
  ]

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %24 = load i32, i32* @snd_emu10k1_fx8010_playback_irq, align 4
  %25 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %29, i32 0, i32 4
  %31 = call i32 @snd_emu10k1_fx8010_register_irq_handler(%struct.snd_emu10k1* %23, i32 %24, i32 %27, %struct.snd_pcm_substream* %28, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %73

35:                                               ; preds = %22
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = call i32 @snd_emu10k1_fx8010_playback_transfer(%struct.snd_pcm_substream* %36)
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %38, i64 %45, i32 0, i32 1)
  br label %72

47:                                               ; preds = %2, %2, %2
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %49 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %49, i32 0, i32 4
  %51 = call i32 @snd_emu10k1_fx8010_unregister_irq_handler(%struct.snd_emu10k1* %48, i32* %50)
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %52, i64 %59, i32 0, i32 0)
  %61 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @INITIAL_TRAM_POS(i32 %63)
  %65 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %6, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %72

69:                                               ; preds = %2
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %47, %35
  br label %73

73:                                               ; preds = %72, %34
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_fx8010_register_irq_handler(%struct.snd_emu10k1*, i32, i32, %struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_emu10k1_fx8010_playback_transfer(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

declare dso_local i32 @snd_emu10k1_fx8010_unregister_irq_handler(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32 @INITIAL_TRAM_POS(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
