; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@EMU8000_DRAM_VOICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*)* @snd_emu8000_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu8000_init_hw(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %4 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %4, i32 0, i32 0
  store i32 65535, i32* %5, align 4
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %7 = call i32 @EMU8000_HWCF1_WRITE(%struct.snd_emu8000* %6, i32 89)
  %8 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %9 = call i32 @EMU8000_HWCF2_WRITE(%struct.snd_emu8000* %8, i32 32)
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %11 = call i32 @EMU8000_HWCF3_WRITE(%struct.snd_emu8000* %10, i32 0)
  %12 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %13 = call i32 @init_audio(%struct.snd_emu8000* %12)
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %15 = call i32 @init_dma(%struct.snd_emu8000* %14)
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %17 = call i32 @init_arrays(%struct.snd_emu8000* %16)
  %18 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %19 = call i32 @snd_emu8000_init_fm(%struct.snd_emu8000* %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %27, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EMU8000_DRAM_VOICES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %26 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %25, i32 0, i32 32895)
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %32 = call i32 @size_dram(%struct.snd_emu8000* %31)
  %33 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %34 = call i32 @EMU8000_HWCF3_WRITE(%struct.snd_emu8000* %33, i32 4)
  %35 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %36 = call i32 @snd_emu8000_update_equalizer(%struct.snd_emu8000* %35)
  %37 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %38 = call i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000* %37)
  %39 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %40 = call i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000* %39)
  ret void
}

declare dso_local i32 @EMU8000_HWCF1_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF2_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF3_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @init_audio(%struct.snd_emu8000*) #1

declare dso_local i32 @init_dma(%struct.snd_emu8000*) #1

declare dso_local i32 @init_arrays(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_init_fm(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @size_dram(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_update_equalizer(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
