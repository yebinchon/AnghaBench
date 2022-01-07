; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_setup_adc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_setup_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.hal2_pbus }
%struct.hal2_pbus = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HPC3_PDMACTRL_RT = common dso_local global i32 0, align 4
@HPC3_PDMACTRL_RCV = common dso_local global i32 0, align 4
@HPC3_PDMACTRL_LD = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN = common dso_local global i32 0, align 4
@H2I_DMA_PORT_EN_CODECR = common dso_local global i32 0, align 4
@H2I_DMA_END = common dso_local global i32 0, align 4
@H2I_DMA_END_CODECR = common dso_local global i32 0, align 4
@H2I_DMA_DRV = common dso_local global i32 0, align 4
@H2I_ADC_C1 = common dso_local global i32 0, align 4
@H2I_C1_DMA_SHIFT = common dso_local global i32 0, align 4
@H2I_C1_CLKID_SHIFT = common dso_local global i32 0, align 4
@H2I_C1_DATAT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*)* @hal2_setup_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_setup_adc(%struct.snd_hal2* %0) #0 {
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
  store i32 2, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 %19, 4
  %21 = add i32 16, %20
  %22 = lshr i32 %21, 3
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @HPC3_PDMACTRL_RT, align 4
  %24 = load i32, i32* @HPC3_PDMACTRL_RCV, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HPC3_PDMACTRL_LD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* %3, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 24
  %36 = or i32 %33, %35
  %37 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %38 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @HPC3_PDMACTRL_LD, align 4
  %40 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %41 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %45 = load i32, i32* @H2I_DMA_PORT_EN, align 4
  %46 = load i32, i32* @H2I_DMA_PORT_EN_CODECR, align 4
  %47 = call i32 @hal2_i_clearbit16(%struct.snd_hal2* %44, i32 %45, i32 %46)
  %48 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %49 = call i32 @hal2_set_adc_rate(%struct.snd_hal2* %48)
  %50 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %51 = load i32, i32* @H2I_DMA_END, align 4
  %52 = load i32, i32* @H2I_DMA_END_CODECR, align 4
  %53 = call i32 @hal2_i_clearbit16(%struct.snd_hal2* %50, i32 %51, i32 %52)
  %54 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %55 = load i32, i32* @H2I_DMA_DRV, align 4
  %56 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %57 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = call i32 @hal2_i_setbit16(%struct.snd_hal2* %54, i32 %55, i32 %59)
  %61 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %62 = load i32, i32* @H2I_ADC_C1, align 4
  %63 = load %struct.hal2_pbus*, %struct.hal2_pbus** %7, align 8
  %64 = getelementptr inbounds %struct.hal2_pbus, %struct.hal2_pbus* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @H2I_C1_DMA_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @H2I_C1_CLKID_SHIFT, align 4
  %69 = shl i32 2, %68
  %70 = or i32 %67, %69
  %71 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %72 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @H2I_C1_DATAT_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %70, %76
  %78 = call i32 @hal2_i_write16(%struct.snd_hal2* %61, i32 %62, i32 %77)
  ret void
}

declare dso_local i32 @hal2_i_clearbit16(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @hal2_set_adc_rate(%struct.snd_hal2*) #1

declare dso_local i32 @hal2_i_setbit16(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @hal2_i_write16(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
