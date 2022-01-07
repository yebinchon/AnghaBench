; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@BA1_PFIE = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@BA1_PCTL = common dso_local global i32 0, align 4
@BA1_CCTL = common dso_local global i32 0, align 4
@BA0_CLKCR1 = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @snd_cs46xx_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_hw_stop(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = load i32, i32* @BA1_PFIE, align 4
  %6 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, -61504
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 16
  store i32 %10, i32* %3, align 4
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %12 = load i32, i32* @BA1_PFIE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %16 = load i32, i32* @BA1_CIE, align 4
  %17 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, -64
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, 17
  store i32 %21, i32* %3, align 4
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %23 = load i32, i32* @BA1_CIE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %22, i32 %23, i32 %24)
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %27 = load i32, i32* @BA1_PCTL, align 4
  %28 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %30 = load i32, i32* @BA1_PCTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 65535
  %33 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %29, i32 %30, i32 %32)
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %35 = load i32, i32* @BA1_CCTL, align 4
  %36 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %38 = load i32, i32* @BA1_CCTL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, -65536
  %41 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %37, i32 %38, i32 %40)
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %43 = call i32 @snd_cs46xx_reset(%struct.snd_cs46xx* %42)
  %44 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %45 = call i32 @snd_cs46xx_proc_stop(%struct.snd_cs46xx* %44)
  %46 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %47 = load i32, i32* @BA0_CLKCR1, align 4
  %48 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %46, i32 %47, i32 0)
  %49 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %50 = load i32, i32* @BA0_CLKCR1, align 4
  %51 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %49, i32 %50)
  %52 = load i32, i32* @CLKCR1_SWCE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %3, align 4
  %55 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %56 = load i32, i32* @BA0_CLKCR1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_reset(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_proc_stop(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
