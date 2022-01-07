; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_manifest_pin_res_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_manifest_pin_res_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.skl_module_res = type { %struct.skl_module_pin_resources*, %struct.skl_module_pin_resources* }
%struct.skl_module_pin_resources = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid pin direction: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid token: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_res*, i32, i32)* @skl_tplg_manifest_pin_res_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_manifest_pin_res_tkn(%struct.device* %0, %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.skl_module_res* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %9 = alloca %struct.skl_module_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skl_module_pin_resources*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  store %struct.skl_module_res* %2, %struct.skl_module_res** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  switch i32 %13, label %28 [
    i32 131, label %14
    i32 130, label %21
  ]

14:                                               ; preds = %5
  %15 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %16 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %15, i32 0, i32 1
  %17 = load %struct.skl_module_pin_resources*, %struct.skl_module_pin_resources** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.skl_module_pin_resources, %struct.skl_module_pin_resources* %17, i64 %19
  store %struct.skl_module_pin_resources* %20, %struct.skl_module_pin_resources** %12, align 8
  br label %34

21:                                               ; preds = %5
  %22 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %23 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %22, i32 0, i32 0
  %24 = load %struct.skl_module_pin_resources*, %struct.skl_module_pin_resources** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.skl_module_pin_resources, %struct.skl_module_pin_resources* %24, i64 %26
  store %struct.skl_module_pin_resources* %27, %struct.skl_module_pin_resources** %12, align 8
  br label %34

28:                                               ; preds = %5
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %21, %14
  %35 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %50 [
    i32 128, label %38
    i32 129, label %44
  ]

38:                                               ; preds = %34
  %39 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.skl_module_pin_resources*, %struct.skl_module_pin_resources** %12, align 8
  %43 = getelementptr inbounds %struct.skl_module_pin_resources, %struct.skl_module_pin_resources* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.skl_module_pin_resources*, %struct.skl_module_pin_resources** %12, align 8
  %49 = getelementptr inbounds %struct.skl_module_pin_resources, %struct.skl_module_pin_resources* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %44, %38
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %50, %28
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
