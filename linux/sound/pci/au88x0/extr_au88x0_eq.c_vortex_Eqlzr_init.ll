; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_Eqlzr_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_Eqlzr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @vortex_Eqlzr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_Eqlzr_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 11
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 22937, i32* %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i32 22937, i32* %11, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store i32 22937, i32* %13, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i32 10, i32* %15, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 10
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 6
  store i32 65535, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 7
  store i32 65535, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = call i32 @vortex_EqHw_ZeroState(%struct.TYPE_13__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = call i32 @vortex_EqHw_SetSampleRate(%struct.TYPE_13__* %36, i32 17)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = call i32 @vortex_Eqlzr_ReadAndSetActiveCoefSet(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 8
  %43 = call i32 @vortex_EqHw_Program10Band(%struct.TYPE_13__* %40, i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vortex_Eqlzr_SetBypass(%struct.TYPE_13__* %44, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @vortex_Eqlzr_SetA3dBypassGain(%struct.TYPE_13__* %49, i32 0, i32 0)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call i32 @vortex_EqHw_Enable(%struct.TYPE_13__* %51)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vortex_EqHw_ZeroState(%struct.TYPE_13__*) #1

declare dso_local i32 @vortex_EqHw_SetSampleRate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vortex_Eqlzr_ReadAndSetActiveCoefSet(%struct.TYPE_13__*) #1

declare dso_local i32 @vortex_EqHw_Program10Band(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @vortex_Eqlzr_SetBypass(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vortex_Eqlzr_SetA3dBypassGain(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @vortex_EqHw_Enable(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
