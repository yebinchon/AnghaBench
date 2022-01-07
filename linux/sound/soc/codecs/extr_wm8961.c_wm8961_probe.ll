; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8961_CHARGE_PUMP_B = common dso_local global i32 0, align 4
@WM8961_CP_DYN_PWR_MASK = common dso_local global i32 0, align 4
@WM8961_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8961_LO1ZC = common dso_local global i32 0, align 4
@WM8961_OUT1VU = common dso_local global i32 0, align 4
@WM8961_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8961_ROUT2_VOLUME = common dso_local global i32 0, align 4
@WM8961_SPKRZC = common dso_local global i32 0, align 4
@WM8961_SPKVU = common dso_local global i32 0, align 4
@WM8961_LOUT2_VOLUME = common dso_local global i32 0, align 4
@WM8961_SPKLZC = common dso_local global i32 0, align 4
@WM8961_RIGHT_ADC_VOLUME = common dso_local global i32 0, align 4
@WM8961_ADCVU = common dso_local global i32 0, align 4
@WM8961_RIGHT_INPUT_VOLUME = common dso_local global i32 0, align 4
@WM8961_IPVU = common dso_local global i32 0, align 4
@WM8961_ADC_DAC_CONTROL_2 = common dso_local global i32 0, align 4
@WM8961_DACSMM = common dso_local global i32 0, align 4
@WM8961_CLOCKING_3 = common dso_local global i32 0, align 4
@WM8961_MANUAL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8961_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = load i32, i32* @WM8961_CHARGE_PUMP_B, align 4
  %6 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @WM8961_CP_DYN_PWR_MASK, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @WM8961_CHARGE_PUMP_B, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %10, i32 %11, i32 %12)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = load i32, i32* @WM8961_ROUT1_VOLUME, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %18 = load i32, i32* @WM8961_ROUT1_VOLUME, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @WM8961_LO1ZC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WM8961_OUT1VU, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %17, i32 %18, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @WM8961_LOUT1_VOLUME, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @WM8961_LO1ZC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @WM8961_ROUT2_VOLUME, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %35 = load i32, i32* @WM8961_ROUT2_VOLUME, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @WM8961_SPKRZC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WM8961_SPKVU, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %43 = load i32, i32* @WM8961_LOUT2_VOLUME, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @WM8961_SPKLZC, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %49 = load i32, i32* @WM8961_RIGHT_ADC_VOLUME, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %52 = load i32, i32* @WM8961_RIGHT_ADC_VOLUME, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @WM8961_ADCVU, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %58 = load i32, i32* @WM8961_RIGHT_INPUT_VOLUME, align 4
  %59 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %61 = load i32, i32* @WM8961_RIGHT_INPUT_VOLUME, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @WM8961_IPVU, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i32 %61, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %67 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %68 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @WM8961_DACSMM, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %73 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = load i32, i32* @WM8961_CLOCKING_3, align 4
  %78 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @WM8961_MANUAL_MODE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %84 = load i32, i32* @WM8961_CLOCKING_3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
