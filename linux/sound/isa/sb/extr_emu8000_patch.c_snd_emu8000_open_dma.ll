; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_open_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_open_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@EMU8000_DRAM_VOICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu8000*, i32)* @snd_emu8000_open_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu8000_open_dma(%struct.snd_emu8000* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @EMU8000_DRAM_VOICES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %12 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @snd_emux_lock_voice(i32 %13, i32 %14)
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %25 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %24, i32 30, i32 0)
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %27 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %26, i32 30, i32 472)
  %28 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %29 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %28, i32 30, i32 480)
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %31 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %30, i32 30, i32 472)
  %32 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %33 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %32, i32 31, i32 0)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %35 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %34, i32 31, i32 472)
  %36 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %37 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %36, i32 31, i32 480)
  %38 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %39 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %38, i32 31, i32 472)
  ret i32 0
}

declare dso_local i32 @snd_emux_lock_voice(i32, i32) #1

declare dso_local i32 @snd_emu8000_dma_chan(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
