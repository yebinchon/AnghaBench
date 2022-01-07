; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@BA0_MIDCR = common dso_local global i32 0, align 4
@MIDCR_MRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @snd_cs46xx_midi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_midi_reset(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %3 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %4 = load i32, i32* @BA0_MIDCR, align 4
  %5 = load i32, i32* @MIDCR_MRST, align 4
  %6 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %3, i32 %4, i32 %5)
  %7 = call i32 @udelay(i32 100)
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %9 = load i32, i32* @BA0_MIDCR, align 4
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %11 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %8, i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
