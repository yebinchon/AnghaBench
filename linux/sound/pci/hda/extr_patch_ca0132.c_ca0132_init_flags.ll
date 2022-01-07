; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_flags.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@CONTROL_FLAG_DSP_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_DAC_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_ADC_B_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_ADC_C_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_SRC_RATE_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_IDLE_ENABLE = common dso_local global i32 0, align 4
@CONTROL_FLAG_SPDIF2OUT = common dso_local global i32 0, align 4
@CONTROL_FLAG_PORT_D_10KOHM_LOAD = common dso_local global i32 0, align 4
@CONTROL_FLAG_PORT_A_10KOHM_LOAD = common dso_local global i32 0, align 4
@CONTROL_FLAG_PORT_A_COMMON_MODE = common dso_local global i32 0, align 4
@CONTROL_FLAG_PORT_D_COMMON_MODE = common dso_local global i32 0, align 4
@CONTROL_FLAG_ADC_C_HIGH_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_flags(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load i32, i32* @CONTROL_FLAG_DSP_96KHZ, align 4
  %13 = call i32 @chipio_set_control_flag(%struct.hda_codec* %11, i32 %12, i32 1)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load i32, i32* @CONTROL_FLAG_DAC_96KHZ, align 4
  %16 = call i32 @chipio_set_control_flag(%struct.hda_codec* %14, i32 %15, i32 1)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* @CONTROL_FLAG_ADC_B_96KHZ, align 4
  %19 = call i32 @chipio_set_control_flag(%struct.hda_codec* %17, i32 %18, i32 1)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* @CONTROL_FLAG_ADC_C_96KHZ, align 4
  %22 = call i32 @chipio_set_control_flag(%struct.hda_codec* %20, i32 %21, i32 1)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* @CONTROL_FLAG_SRC_RATE_96KHZ, align 4
  %25 = call i32 @chipio_set_control_flag(%struct.hda_codec* %23, i32 %24, i32 1)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* @CONTROL_FLAG_IDLE_ENABLE, align 4
  %28 = call i32 @chipio_set_control_flag(%struct.hda_codec* %26, i32 %27, i32 0)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i32, i32* @CONTROL_FLAG_SPDIF2OUT, align 4
  %31 = call i32 @chipio_set_control_flag(%struct.hda_codec* %29, i32 %30, i32 0)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i32, i32* @CONTROL_FLAG_PORT_D_10KOHM_LOAD, align 4
  %34 = call i32 @chipio_set_control_flag(%struct.hda_codec* %32, i32 %33, i32 0)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* @CONTROL_FLAG_PORT_A_10KOHM_LOAD, align 4
  %37 = call i32 @chipio_set_control_flag(%struct.hda_codec* %35, i32 %36, i32 1)
  br label %57

38:                                               ; preds = %1
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load i32, i32* @CONTROL_FLAG_IDLE_ENABLE, align 4
  %41 = call i32 @chipio_set_control_flag(%struct.hda_codec* %39, i32 %40, i32 0)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* @CONTROL_FLAG_PORT_A_COMMON_MODE, align 4
  %44 = call i32 @chipio_set_control_flag(%struct.hda_codec* %42, i32 %43, i32 0)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i32, i32* @CONTROL_FLAG_PORT_D_COMMON_MODE, align 4
  %47 = call i32 @chipio_set_control_flag(%struct.hda_codec* %45, i32 %46, i32 0)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load i32, i32* @CONTROL_FLAG_PORT_A_10KOHM_LOAD, align 4
  %50 = call i32 @chipio_set_control_flag(%struct.hda_codec* %48, i32 %49, i32 0)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load i32, i32* @CONTROL_FLAG_PORT_D_10KOHM_LOAD, align 4
  %53 = call i32 @chipio_set_control_flag(%struct.hda_codec* %51, i32 %52, i32 0)
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = load i32, i32* @CONTROL_FLAG_ADC_C_HIGH_PASS, align 4
  %56 = call i32 @chipio_set_control_flag(%struct.hda_codec* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %38, %10
  ret void
}

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @chipio_set_control_flag(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
