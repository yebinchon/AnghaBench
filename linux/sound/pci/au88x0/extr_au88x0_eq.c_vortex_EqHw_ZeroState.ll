; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_EqHw_ZeroState.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_EqHw_ZeroState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@asEqCoefsZeros = common dso_local global i32 0, align 4
@eq_gains_zero = common dso_local global i32 0, align 4
@eq_states_zero = common dso_local global i32 0, align 4
@asEqOutStateZeros = common dso_local global i32 0, align 4
@eq_levels = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @vortex_EqHw_ZeroState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_EqHw_ZeroState(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %3 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %4 = call i32 @vortex_EqHw_SetControlReg(%struct.TYPE_17__* %3, i32 0)
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = call i32 @vortex_EqHw_ZeroIO(%struct.TYPE_17__* %5)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hwwrite(i32 %9, i32 177088, i32 0)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = call i32 @vortex_EqHw_SetTimeConsts(%struct.TYPE_17__* %11, i32 0, i32 0)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = load i32, i32* @asEqCoefsZeros, align 4
  %15 = call i32 @vortex_EqHw_SetLeftCoefs(%struct.TYPE_17__* %13, i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = load i32, i32* @asEqCoefsZeros, align 4
  %18 = call i32 @vortex_EqHw_SetRightCoefs(%struct.TYPE_17__* %16, i32 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = load i32, i32* @eq_gains_zero, align 4
  %21 = call i32 @vortex_EqHw_SetLeftGainsCurrent(%struct.TYPE_17__* %19, i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = load i32, i32* @eq_gains_zero, align 4
  %24 = call i32 @vortex_EqHw_SetRightGainsCurrent(%struct.TYPE_17__* %22, i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = load i32, i32* @eq_gains_zero, align 4
  %27 = call i32 @vortex_EqHw_SetLeftGainsTarget(%struct.TYPE_17__* %25, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = load i32, i32* @eq_gains_zero, align 4
  %30 = call i32 @vortex_EqHw_SetRightGainsTarget(%struct.TYPE_17__* %28, i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = call i32 @vortex_EqHw_SetBypassGain(%struct.TYPE_17__* %31, i32 0, i32 0)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call i32 @vortex_EqHw_SetA3DBypassGain(%struct.TYPE_17__* %33, i32 0, i32 0)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = load i32, i32* @eq_states_zero, align 4
  %37 = load i32, i32* @asEqOutStateZeros, align 4
  %38 = call i32 @vortex_EqHw_SetLeftStates(%struct.TYPE_17__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = load i32, i32* @eq_states_zero, align 4
  %41 = load i32, i32* @asEqOutStateZeros, align 4
  %42 = call i32 @vortex_EqHw_SetRightStates(%struct.TYPE_17__* %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = load i64, i64* @eq_levels, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @vortex_EqHw_SetLevels(%struct.TYPE_17__* %43, i32* %45)
  ret void
}

declare dso_local i32 @vortex_EqHw_SetControlReg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_ZeroIO(%struct.TYPE_17__*) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetTimeConsts(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftCoefs(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightCoefs(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftGainsCurrent(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightGainsCurrent(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftGainsTarget(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightGainsTarget(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_EqHw_SetBypassGain(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetA3DBypassGain(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetLeftStates(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetRightStates(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_SetLevels(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
