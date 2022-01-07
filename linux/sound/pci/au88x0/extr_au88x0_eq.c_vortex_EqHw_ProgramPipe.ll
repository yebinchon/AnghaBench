; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_EqHw_ProgramPipe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_EqHw_ProgramPipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asEqCoefsPipes = common dso_local global i32 0, align 4
@eq_gains_current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vortex_EqHw_ProgramPipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_EqHw_ProgramPipe(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @vortex_EqHw_SetTimeConsts(i32* %3, i32 0, i32 0)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @asEqCoefsPipes, align 4
  %7 = call i32 @vortex_EqHw_SetLeftCoefs(i32* %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @asEqCoefsPipes, align 4
  %10 = call i32 @vortex_EqHw_SetRightCoefs(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @eq_gains_current, align 4
  %13 = call i32 @vortex_EqHw_SetLeftGainsCurrent(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @eq_gains_current, align 4
  %16 = call i32 @vortex_EqHw_SetRightGainsCurrent(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @eq_gains_current, align 4
  %19 = call i32 @vortex_EqHw_SetLeftGainsTarget(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @eq_gains_current, align 4
  %22 = call i32 @vortex_EqHw_SetRightGainsTarget(i32* %20, i32 %21)
  ret void
}

declare dso_local i32 @vortex_EqHw_SetTimeConsts(i32*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftCoefs(i32*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightCoefs(i32*, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftGainsCurrent(i32*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightGainsCurrent(i32*, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftGainsTarget(i32*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightGainsTarget(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
