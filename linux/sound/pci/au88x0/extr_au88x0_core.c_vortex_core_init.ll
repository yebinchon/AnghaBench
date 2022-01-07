; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"init started\0A\00", align 1
@VORTEX_CTRL = common dso_local global i32 0, align 4
@VORTEX_IRQ_SOURCE = common dso_local global i32 0, align 4
@VORTEX_IRQ_STAT = common dso_local global i32 0, align 4
@VORTEX_ENGINE_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"init.... done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @vortex_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_core_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_info(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VORTEX_CTRL, align 4
  %13 = call i32 @hwwrite(i32 %11, i32 %12, i32 -1)
  %14 = call i32 @msleep(i32 5)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VORTEX_CTRL, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VORTEX_CTRL, align 4
  %23 = call i32 @hwread(i32 %21, i32 %22)
  %24 = and i32 %23, -2097153
  %25 = call i32 @hwwrite(i32 %17, i32 %18, i32 %24)
  %26 = call i32 @msleep(i32 5)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VORTEX_IRQ_SOURCE, align 4
  %31 = call i32 @hwwrite(i32 %29, i32 %30, i32 -1)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VORTEX_IRQ_STAT, align 4
  %36 = call i32 @hwread(i32 %34, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @vortex_codec_init(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = call i32 @vortex_adbdma_init(%struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VORTEX_ENGINE_CTRL, align 4
  %45 = call i32 @hwwrite(i32 %43, i32 %44, i32 0)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = call i32 @vortex_adb_init(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = call i32 @vortex_fifo_init(%struct.TYPE_16__* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = call i32 @vortex_mixer_init(%struct.TYPE_16__* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = call i32 @vortex_srcblock_init(%struct.TYPE_16__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = call i32 @vortex_eq_init(%struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = call i32 @vortex_spdif_init(%struct.TYPE_16__* %56, i32 48000, i32 1)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = call i32 @vortex_Vort3D_enable(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = call i32 @vortex_wt_init(%struct.TYPE_16__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = call i32 @vortex_settimer(%struct.TYPE_16__* %62, i32 144)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_info(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_init(i32* %71)
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @vortex_codec_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_adbdma_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_adb_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_fifo_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_mixer_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_srcblock_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_eq_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_spdif_init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @vortex_Vort3D_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_wt_init(%struct.TYPE_16__*) #1

declare dso_local i32 @vortex_settimer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
