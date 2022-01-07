; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pins_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pins_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_module_cfg = type { %struct.skl_module_pin*, %struct.skl_module_pin* }
%struct.skl_module_pin = type { i32, i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid direction value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKL_PIN_UNBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.skl_module_cfg*, %struct.snd_soc_tplg_vendor_value_elem*, i32, i32)* @skl_tplg_fill_pins_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_pins_info(%struct.device* %0, %struct.skl_module_cfg* %1, %struct.snd_soc_tplg_vendor_value_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.skl_module_cfg*, align 8
  %9 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.skl_module_pin*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %8, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %2, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %5
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 1
  %18 = load %struct.skl_module_pin*, %struct.skl_module_pin** %17, align 8
  store %struct.skl_module_pin* %18, %struct.skl_module_pin** %13, align 8
  br label %28

19:                                               ; preds = %5
  %20 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %20, i32 0, i32 0
  %22 = load %struct.skl_module_pin*, %struct.skl_module_pin** %21, align 8
  store %struct.skl_module_pin* %22, %struct.skl_module_pin** %13, align 8
  br label %28

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %50

28:                                               ; preds = %19, %15
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  %31 = load %struct.skl_module_pin*, %struct.skl_module_pin** %13, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @skl_tplg_fill_pin(%struct.device* %29, %struct.snd_soc_tplg_vendor_value_elem* %30, %struct.skl_module_pin* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %50

38:                                               ; preds = %28
  %39 = load %struct.skl_module_pin*, %struct.skl_module_pin** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %39, i64 %41
  %43 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @SKL_PIN_UNBIND, align 4
  %45 = load %struct.skl_module_pin*, %struct.skl_module_pin** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %45, i64 %47
  %49 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %38, %36, %23
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @skl_tplg_fill_pin(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
