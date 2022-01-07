; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_stop_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_stop_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_voice = type { i32 }

@PTRX_PITCHTARGET = common dso_local global i32 0, align 4
@CPF_CURRENTPITCH = common dso_local global i32 0, align 4
@IFATN = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_voice*)* @snd_emu10k1_playback_stop_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_voice* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_voice* %1, %struct.snd_emu10k1_voice** %4, align 8
  %6 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %4, align 8
  %7 = icmp eq %struct.snd_emu10k1_voice* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %40

9:                                                ; preds = %2
  %10 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %4, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @snd_emu10k1_voice_intr_disable(%struct.snd_emu10k1* %13, i32 %14)
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = load i32, i32* @PTRX_PITCHTARGET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %21 = load i32, i32* @CPF_CURRENTPITCH, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = load i32, i32* @IFATN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %24, i32 %25, i32 %26, i32 65535)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %29 = load i32, i32* @VTFT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %28, i32 %29, i32 %30, i32 65535)
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %33 = load i32, i32* @CVCF, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %32, i32 %33, i32 %34, i32 65535)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %37 = load i32, i32* @IP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %36, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @snd_emu10k1_voice_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
