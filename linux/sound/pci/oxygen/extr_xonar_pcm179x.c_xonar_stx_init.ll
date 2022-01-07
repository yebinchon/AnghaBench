; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_stx_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_stx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OXYGEN_GPI_DATA = common dso_local global i32 0, align 4
@OXYGEN_GPI_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GPI_EXT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_stx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_stx_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = call i32 @xonar_st_init_i2c(%struct.oxygen* %7)
  %9 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 800, i32* %11, align 4
  %12 = load i32, i32* @OXYGEN_GPI_DATA, align 4
  %13 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %14 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @OXYGEN_GPI_INTERRUPT_MASK, align 4
  %17 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %18 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @GPI_EXT_POWER, align 4
  %21 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %22 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = call i32 @xonar_init_ext_power(%struct.oxygen* %24)
  %26 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %27 = call i32 @xonar_st_init_common(%struct.oxygen* %26)
  ret void
}

declare dso_local i32 @xonar_st_init_i2c(%struct.oxygen*) #1

declare dso_local i32 @xonar_init_ext_power(%struct.oxygen*) #1

declare dso_local i32 @xonar_st_init_common(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
