; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_vx_reset_board.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_vx_reset_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.vx_core*, i32)* }

@VX_AUDIO_SRC_LINE = common dso_local global i32 0, align 4
@INTERNAL_QUARTZ = common dso_local global i32 0, align 4
@VX_CLOCK_MODE_AUTO = common dso_local global i32 0, align 4
@VX_UER_MODE_NOT_PRESENT = common dso_local global i32 0, align 4
@SNDRV_PCM_DEFAULT_CON_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vx_reset_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_reset_board(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %6 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.vx_core*, i32)*, i32 (%struct.vx_core*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.vx_core*, i32)* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %75

16:                                               ; preds = %2
  %17 = load i32, i32* @VX_AUDIO_SRC_LINE, align 4
  %18 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %19 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %24 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %27 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @INTERNAL_QUARTZ, align 4
  %29 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %30 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @VX_CLOCK_MODE_AUTO, align 4
  %32 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %33 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %35 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %34, i32 0, i32 0
  store i32 48000, i32* %35, align 8
  %36 = load i32, i32* @VX_UER_MODE_NOT_PRESENT, align 4
  %37 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %38 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %40 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %41 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %22, %16
  %43 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %44 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.vx_core*, i32)*, i32 (%struct.vx_core*, i32)** %46, align 8
  %48 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 %47(%struct.vx_core* %48, i32 %49)
  %51 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @vx_reset_codec(%struct.vx_core* %51, i32 %52)
  %54 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %55 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %56 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vx_set_internal_clock(%struct.vx_core* %54, i32 %57)
  %59 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %60 = call i32 @vx_reset_dsp(%struct.vx_core* %59)
  %61 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %62 = call i64 @vx_is_pcmcia(%struct.vx_core* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %42
  %65 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %66 = call i32 @vx_test_and_ack(%struct.vx_core* %65)
  %67 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %68 = call i32 @vx_validate_irq(%struct.vx_core* %67, i32 1)
  br label %69

69:                                               ; preds = %64, %42
  %70 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %71 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %72 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vx_set_iec958_status(%struct.vx_core* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %15
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_reset_codec(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_set_internal_clock(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_reset_dsp(%struct.vx_core*) #1

declare dso_local i64 @vx_is_pcmcia(%struct.vx_core*) #1

declare dso_local i32 @vx_test_and_ack(%struct.vx_core*) #1

declare dso_local i32 @vx_validate_irq(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_set_iec958_status(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
