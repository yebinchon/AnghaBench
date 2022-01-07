; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_start_adc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_start_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hal2_pbus }
%struct.hal2_pbus = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@HPC3_PDMACTRL_ACT = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN_CODECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*)* @hal2_start_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_start_adc(%struct.snd_hal2* %0) #0 {
  %2 = alloca %struct.snd_hal2*, align 8
  %3 = alloca %struct.hal2_pbus*, align 8
  store %struct.snd_hal2* %0, %struct.snd_hal2** %2, align 8
  %4 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %5 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store %struct.hal2_pbus* %6, %struct.hal2_pbus** %3, align 8
  %7 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %8 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hal2_pbus*, %struct.hal2_pbus** %3, align 8
  %12 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load %struct.hal2_pbus*, %struct.hal2_pbus** %3, align 8
  %16 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HPC3_PDMACTRL_ACT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.hal2_pbus*, %struct.hal2_pbus** %3, align 8
  %21 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %25 = load i32, i32* @H2I_DMA_PORT_EN, align 4
  %26 = load i32, i32* @H2I_DMA_PORT_EN_CODECR, align 4
  %27 = call i32 @hal2_i_setbit16(%struct.snd_hal2* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @hal2_i_setbit16(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
