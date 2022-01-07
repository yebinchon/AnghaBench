; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@MEM_CONNID_WUH = common dso_local global i32 0, align 4
@SR_48_000 = common dso_local global i32 0, align 4
@CONTROL_PARAM_SPDIF1_SOURCE = common dso_local global i32 0, align 4
@CONTROL_PARAM_VIP_SOURCE = common dso_local global i32 0, align 4
@CONTROL_PARAM_PORTA_160OHM_GAIN = common dso_local global i32 0, align 4
@CONTROL_PARAM_PORTD_160OHM_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_params(%struct.hda_codec* %0) #0 {
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
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load i32, i32* @MEM_CONNID_WUH, align 4
  %13 = load i32, i32* @SR_48_000, align 4
  %14 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %11, i32 %12, i32 %13)
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = load i32, i32* @SR_48_000, align 4
  %17 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %15, i32 11, i32 %16)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load i32, i32* @CONTROL_PARAM_SPDIF1_SOURCE, align 4
  %20 = call i32 @chipio_set_control_param(%struct.hda_codec* %18, i32 %19, i32 0)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @chipio_set_control_param(%struct.hda_codec* %21, i32 0, i32 0)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* @CONTROL_PARAM_VIP_SOURCE, align 4
  %25 = call i32 @chipio_set_control_param(%struct.hda_codec* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10, %1
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* @CONTROL_PARAM_PORTA_160OHM_GAIN, align 4
  %29 = call i32 @chipio_set_control_param(%struct.hda_codec* %27, i32 %28, i32 6)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* @CONTROL_PARAM_PORTD_160OHM_GAIN, align 4
  %32 = call i32 @chipio_set_control_param(%struct.hda_codec* %30, i32 %31, i32 6)
  ret void
}

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_control_param(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
