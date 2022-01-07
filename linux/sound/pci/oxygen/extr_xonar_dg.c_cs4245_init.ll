; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.dg* }
%struct.dg = type { i32* }

@CS4245_SAVE_TO_SHADOW = common dso_local global i32 0, align 4
@CS4245_POWER_CTRL = common dso_local global i64 0, align 8
@CS4245_A_OUT_SEL_DAC = common dso_local global i32 0, align 4
@CS4245_ASYNCH = common dso_local global i32 0, align 4
@CS4245_SIGNAL_SEL = common dso_local global i64 0, align 8
@CS4245_DAC_FM_SINGLE = common dso_local global i32 0, align 4
@CS4245_DAC_DIF_LJUST = common dso_local global i32 0, align 4
@CS4245_DAC_CTRL_1 = common dso_local global i64 0, align 8
@CS4245_DAC_SOFT = common dso_local global i32 0, align 4
@CS4245_DAC_ZERO = common dso_local global i32 0, align 4
@CS4245_INVERT_DAC = common dso_local global i32 0, align 4
@CS4245_DAC_CTRL_2 = common dso_local global i64 0, align 8
@CS4245_ADC_FM_SINGLE = common dso_local global i32 0, align 4
@CS4245_ADC_DIF_LJUST = common dso_local global i32 0, align 4
@CS4245_ADC_CTRL = common dso_local global i64 0, align 8
@CS4245_PGA_SOFT = common dso_local global i32 0, align 4
@CS4245_PGA_ZERO = common dso_local global i32 0, align 4
@CS4245_ANALOG_IN = common dso_local global i64 0, align 8
@CS4245_PGA_B_CTRL = common dso_local global i64 0, align 8
@CS4245_PGA_A_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_A_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_B_CTRL = common dso_local global i64 0, align 8
@CS4245_LOAD_FROM_SHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CS4245\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @cs4245_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4245_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 1
  %6 = load %struct.dg*, %struct.dg** %5, align 8
  store %struct.dg* %6, %struct.dg** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i32, i32* @CS4245_SAVE_TO_SHADOW, align 4
  %9 = call i32 @cs4245_shadow_control(%struct.oxygen* %7, i32 %8)
  %10 = load %struct.dg*, %struct.dg** %3, align 8
  %11 = getelementptr inbounds %struct.dg, %struct.dg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @CS4245_POWER_CTRL, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @CS4245_A_OUT_SEL_DAC, align 4
  %16 = load i32, i32* @CS4245_ASYNCH, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.dg*, %struct.dg** %3, align 8
  %19 = getelementptr inbounds %struct.dg, %struct.dg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @CS4245_DAC_FM_SINGLE, align 4
  %24 = load i32, i32* @CS4245_DAC_DIF_LJUST, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.dg*, %struct.dg** %3, align 8
  %27 = getelementptr inbounds %struct.dg, %struct.dg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @CS4245_DAC_SOFT, align 4
  %32 = load i32, i32* @CS4245_DAC_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CS4245_INVERT_DAC, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.dg*, %struct.dg** %3, align 8
  %37 = getelementptr inbounds %struct.dg, %struct.dg* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @CS4245_DAC_CTRL_2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* @CS4245_ADC_FM_SINGLE, align 4
  %42 = load i32, i32* @CS4245_ADC_DIF_LJUST, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.dg*, %struct.dg** %3, align 8
  %45 = getelementptr inbounds %struct.dg, %struct.dg* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* @CS4245_PGA_SOFT, align 4
  %50 = load i32, i32* @CS4245_PGA_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.dg*, %struct.dg** %3, align 8
  %53 = getelementptr inbounds %struct.dg, %struct.dg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.dg*, %struct.dg** %3, align 8
  %58 = getelementptr inbounds %struct.dg, %struct.dg* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @CS4245_PGA_B_CTRL, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load %struct.dg*, %struct.dg** %3, align 8
  %63 = getelementptr inbounds %struct.dg, %struct.dg* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @CS4245_PGA_A_CTRL, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load %struct.dg*, %struct.dg** %3, align 8
  %68 = getelementptr inbounds %struct.dg, %struct.dg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 8, i32* %71, align 4
  %72 = load %struct.dg*, %struct.dg** %3, align 8
  %73 = getelementptr inbounds %struct.dg, %struct.dg* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 8, i32* %76, align 4
  %77 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %78 = load i32, i32* @CS4245_LOAD_FROM_SHADOW, align 4
  %79 = call i32 @cs4245_shadow_control(%struct.oxygen* %77, i32 %78)
  %80 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %81 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @snd_component_add(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cs4245_shadow_control(%struct.oxygen*, i32) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
