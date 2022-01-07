; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_Vort3D_InitializeSource.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_Vort3D_InitializeSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Vort3D_InitializeSource: A3D source not initialized\0A\00", align 1
@HrtfTCDefault = common dso_local global i32 0, align 4
@ItdTCDefault = common dso_local global i32 0, align 4
@GainTCDefault = common dso_local global i32 0, align 4
@CoefTCDefault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_13__*)* @vortex_Vort3D_InitializeSource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_Vort3D_InitializeSource(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call i32 @a3dsrc_ProgramPipe(%struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = call i32 @a3dsrc_SetA3DSampleRate(%struct.TYPE_14__* %24, i32 17)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load i32, i32* @HrtfTCDefault, align 4
  %28 = load i32, i32* @ItdTCDefault, align 4
  %29 = load i32, i32* @GainTCDefault, align 4
  %30 = load i32, i32* @CoefTCDefault, align 4
  %31 = call i32 @a3dsrc_SetTimeConsts(%struct.TYPE_14__* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call i32 @a3dsrc_EnableA3D(%struct.TYPE_14__* %32)
  br label %39

34:                                               ; preds = %18
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i32 @a3dsrc_DisableA3D(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = call i32 @a3dsrc_ZeroState(%struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %11, %34, %21
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @a3dsrc_ProgramPipe(%struct.TYPE_14__*) #1

declare dso_local i32 @a3dsrc_SetA3DSampleRate(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @a3dsrc_SetTimeConsts(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @a3dsrc_EnableA3D(%struct.TYPE_14__*) #1

declare dso_local i32 @a3dsrc_DisableA3D(%struct.TYPE_14__*) #1

declare dso_local i32 @a3dsrc_ZeroState(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
