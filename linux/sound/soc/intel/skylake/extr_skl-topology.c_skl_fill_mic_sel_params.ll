; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_mic_sel_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_mic_sel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_cfg = type { %struct.skl_specific_cfg }
%struct.skl_specific_cfg = type { i32, i32, i64, i32 }
%struct.skl_mic_sel_config = type { i64, i32 }
%struct.device = type { i32 }

@SKL_PARAM_SET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKL_MIC_SEL_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_module_cfg*, %struct.skl_mic_sel_config*, %struct.device*)* @skl_fill_mic_sel_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_fill_mic_sel_params(%struct.skl_module_cfg* %0, %struct.skl_mic_sel_config* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_mic_sel_config*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.skl_specific_cfg*, align 8
  store %struct.skl_module_cfg* %0, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_mic_sel_config* %1, %struct.skl_mic_sel_config** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %10 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %9, i32 0, i32 0
  store %struct.skl_specific_cfg* %10, %struct.skl_specific_cfg** %8, align 8
  %11 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %12 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %11, i32 0, i32 0
  store i32 16, i32* %12, align 8
  %13 = load i32, i32* @SKL_PARAM_SET, align 4
  %14 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %15 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %17 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %19 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %25 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @devm_kzalloc(%struct.device* %23, i32 %26, i32 %27)
  %29 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %30 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* @SKL_MIC_SEL_SWITCH, align 4
  %41 = load %struct.skl_mic_sel_config*, %struct.skl_mic_sel_config** %6, align 8
  %42 = getelementptr inbounds %struct.skl_mic_sel_config, %struct.skl_mic_sel_config* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.skl_mic_sel_config*, %struct.skl_mic_sel_config** %6, align 8
  %44 = getelementptr inbounds %struct.skl_mic_sel_config, %struct.skl_mic_sel_config* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.skl_mic_sel_config*, %struct.skl_mic_sel_config** %6, align 8
  %49 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %8, align 8
  %50 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy(i64 %47, %struct.skl_mic_sel_config* %48, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %39, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.skl_mic_sel_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
