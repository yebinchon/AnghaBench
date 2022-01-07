; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_res_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_res_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.skl_module_res = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Not a res type token: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_res*, i32, i32)* @skl_tplg_fill_res_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_res_tkn(%struct.device* %0, %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.skl_module_res* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %9 = alloca %struct.skl_module_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  store %struct.skl_module_res* %2, %struct.skl_module_res** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %15 = icmp ne %struct.skl_module_res* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %78

19:                                               ; preds = %5
  %20 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %66 [
    i32 134, label %23
    i32 136, label %29
    i32 129, label %35
    i32 128, label %41
    i32 131, label %47
    i32 132, label %53
    i32 133, label %53
    i32 135, label %65
    i32 130, label %65
  ]

23:                                               ; preds = %19
  %24 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %28 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %74

29:                                               ; preds = %19
  %30 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %31 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %34 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %74

35:                                               ; preds = %19
  %36 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %40 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %74

41:                                               ; preds = %19
  %42 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %46 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %74

47:                                               ; preds = %19
  %48 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %49 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %52 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %74

53:                                               ; preds = %19, %19
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %56 = load %struct.skl_module_res*, %struct.skl_module_res** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @skl_tplg_manifest_pin_res_tkn(%struct.device* %54, %struct.snd_soc_tplg_vendor_value_elem* %55, %struct.skl_module_res* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %78

64:                                               ; preds = %53
  br label %74

65:                                               ; preds = %19, %19
  br label %74

66:                                               ; preds = %19
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %65, %64, %47, %41, %35, %29, %23
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %66, %62, %16
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @skl_tplg_manifest_pin_res_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_res*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
