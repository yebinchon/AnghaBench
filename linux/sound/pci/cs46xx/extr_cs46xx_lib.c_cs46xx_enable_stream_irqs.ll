; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_cs46xx_enable_stream_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_cs46xx_enable_stream_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@BA0_HICR = common dso_local global i32 0, align 4
@HICR_IEV = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i32 0, align 4
@BA1_PFIE = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @cs46xx_enable_stream_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs46xx_enable_stream_irqs(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = load i32, i32* @BA0_HICR, align 4
  %6 = load i32, i32* @HICR_IEV, align 4
  %7 = load i32, i32* @HICR_CHGM, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %4, i32 %5, i32 %8)
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %11 = load i32, i32* @BA1_PFIE, align 4
  %12 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -61504
  store i32 %14, i32* %3, align 4
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %16 = load i32, i32* @BA1_PFIE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %15, i32 %16, i32 %17)
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %20 = load i32, i32* @BA1_CIE, align 4
  %21 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -64
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %27 = load i32, i32* @BA1_CIE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
