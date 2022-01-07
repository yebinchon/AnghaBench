; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_copier_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_copier_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i32 }
%struct.skl_cpr_cfg = type { %struct.skl_audio_data_format }
%struct.skl_audio_data_format = type { i32 }
%struct.skl_base_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_cpr_cfg*)* @skl_set_copier_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_set_copier_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_cpr_cfg* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_cpr_cfg*, align 8
  %7 = alloca %struct.skl_audio_data_format*, align 8
  %8 = alloca %struct.skl_base_cfg*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_cpr_cfg* %2, %struct.skl_cpr_cfg** %6, align 8
  %9 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %10 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %9, i32 0, i32 0
  store %struct.skl_audio_data_format* %10, %struct.skl_audio_data_format** %7, align 8
  %11 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %12 = bitcast %struct.skl_cpr_cfg* %11 to %struct.skl_base_cfg*
  store %struct.skl_base_cfg* %12, %struct.skl_base_cfg** %8, align 8
  %13 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %15 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %8, align 8
  %16 = call i32 @skl_set_base_module_format(%struct.skl_dev* %13, %struct.skl_module_cfg* %14, %struct.skl_base_cfg* %15)
  %17 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %18 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %19 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %7, align 8
  %20 = call i32 @skl_setup_out_format(%struct.skl_dev* %17, %struct.skl_module_cfg* %18, %struct.skl_audio_data_format* %19)
  %21 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %22 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %23 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %24 = call i32 @skl_setup_cpr_gateway_cfg(%struct.skl_dev* %21, %struct.skl_module_cfg* %22, %struct.skl_cpr_cfg* %23)
  ret void
}

declare dso_local i32 @skl_set_base_module_format(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_base_cfg*) #1

declare dso_local i32 @skl_setup_out_format(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_audio_data_format*) #1

declare dso_local i32 @skl_setup_cpr_gateway_cfg(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_cpr_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
