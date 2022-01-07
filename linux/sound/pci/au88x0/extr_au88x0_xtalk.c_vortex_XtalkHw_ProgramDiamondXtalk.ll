; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_ProgramDiamondXtalk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_ProgramDiamondXtalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sDiamondKLeftEq = common dso_local global i32 0, align 4
@sDiamondShiftLeftEq = common dso_local global i32 0, align 4
@asDiamondCoefsLeftEq = common dso_local global i32 0, align 4
@sDiamondKRightEq = common dso_local global i32 0, align 4
@sDiamondShiftRightEq = common dso_local global i32 0, align 4
@asDiamondCoefsRightEq = common dso_local global i32 0, align 4
@sDiamondKLeftXt = common dso_local global i32 0, align 4
@sDiamondShiftLeftXt = common dso_local global i32 0, align 4
@asDiamondCoefsLeftXt = common dso_local global i32 0, align 4
@wDiamondRightDelay = common dso_local global i32 0, align 4
@wDiamondLeftDelay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vortex_XtalkHw_ProgramDiamondXtalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_XtalkHw_ProgramDiamondXtalk(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @sDiamondKLeftEq, align 4
  %5 = load i32, i32* @sDiamondShiftLeftEq, align 4
  %6 = load i32, i32* @asDiamondCoefsLeftEq, align 4
  %7 = call i32 @vortex_XtalkHw_SetLeftEQ(i32* %3, i32 %4, i32 %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @sDiamondKRightEq, align 4
  %10 = load i32, i32* @sDiamondShiftRightEq, align 4
  %11 = load i32, i32* @asDiamondCoefsRightEq, align 4
  %12 = call i32 @vortex_XtalkHw_SetRightEQ(i32* %8, i32 %9, i32 %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @sDiamondKLeftXt, align 4
  %15 = load i32, i32* @sDiamondShiftLeftXt, align 4
  %16 = load i32, i32* @asDiamondCoefsLeftXt, align 4
  %17 = call i32 @vortex_XtalkHw_SetLeftXT(i32* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @sDiamondKLeftXt, align 4
  %20 = load i32, i32* @sDiamondShiftLeftXt, align 4
  %21 = load i32, i32* @asDiamondCoefsLeftXt, align 4
  %22 = call i32 @vortex_XtalkHw_SetRightXT(i32* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @wDiamondRightDelay, align 4
  %25 = load i32, i32* @wDiamondLeftDelay, align 4
  %26 = call i32 @vortex_XtalkHw_SetDelay(i32* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @vortex_XtalkHw_SetLeftEQ(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightEQ(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftXT(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightXT(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetDelay(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
