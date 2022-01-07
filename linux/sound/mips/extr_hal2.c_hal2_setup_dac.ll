; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_setup_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_setup_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.hal2_pbus }
%struct.hal2_pbus = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HPC3_PDMACTRL_RT = common dso_local global i32 0, align 4
@HPC3_PDMACTRL_LD = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN_CODECTX = common dso_local global i32 0, align 4
@H2I_DMA_END = common dso_local global i32 0, align 4
@H2I_DMA_END_CODECTX = common dso_local global i32 0, align 4
@H2I_DMA_DRV = common dso_local global i32 0, align 4
@H2I_DAC_C1 = common dso_local global i32 0, align 4
@H2I_C1_DMA_SHIFT = common dso_local global i32 0, align 4
@H2I_C1_CLKID_SHIFT = common dso_local global i32 0, align 4
@H2I_C1_DATAT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*)* @hal2_setup_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_setup_dac(%struct.snd_hal2* %0) #0 {
  %2 = alloca %struct.snd_hal2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal2_pbus*, align 8
  store %struct.snd_hal2* %0, %struct.snd_hal2** %2, align 8
  %8 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %9 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.hal2_pbus* %10, %struct.hal2_pbus** %7, align 8
  %11 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %12 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 2, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 %16, 2
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 %19, 4
  %21 = lshr i32 %20, 3
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @HPC3_PDMACTRL_RT, align 4
  %23 = load i32, i32* @HPC3_PDMACTRL_LD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %24, %26
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 24
  %33 = or i32 %30, %32
  %34 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %35 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @HPC3_PDMACTRL_LD, align 4
  %37 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %38 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %42 = load i32, i32* @H2I_DMA_PORT_EN, align 4
  %43 = load i32, i32* @H2I_DMA_PORT_EN_CODECTX, align 4
  %44 = call i32 @hal2_i_clearbit16(%struct.snd_hal2* %41, i32 %42, i32 %43)
  %45 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %46 = call i32 @hal2_set_dac_rate(%struct.snd_hal2* %45)
  %47 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %48 = load i32, i32* @H2I_DMA_END, align 4
  %49 = load i32, i32* @H2I_DMA_END_CODECTX, align 4
  %50 = call i32 @hal2_i_clearbit16(%struct.snd_hal2* %47, i32 %48, i32 %49)
  %51 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %52 = load i32, i32* @H2I_DMA_DRV, align 4
  %53 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %54 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = call i32 @hal2_i_setbit16(%struct.snd_hal2* %51, i32 %52, i32 %56)
  %58 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %59 = load i32, i32* @H2I_DAC_C1, align 4
  %60 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %61 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @H2I_C1_DMA_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @H2I_C1_CLKID_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %69 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @H2I_C1_DATAT_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %67, %73
  %75 = call i32 @hal2_i_write16(%struct.snd_hal2* %58, i32 %59, i32 %74)
  ret void
}

declare dso_local i32 @hal2_i_clearbit16(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @hal2_set_dac_rate(%struct.snd_hal2*) #1

declare dso_local i32 @hal2_i_setbit16(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @hal2_i_write16(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
