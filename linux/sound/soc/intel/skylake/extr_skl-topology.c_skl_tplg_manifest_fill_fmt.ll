; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_manifest_fill_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_manifest_fill_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_module_iface = type { %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt* }
%struct.skl_module_pin_fmt = type { i32, %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid direction: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.skl_module_iface*, %struct.snd_soc_tplg_vendor_value_elem*, i32, i32)* @skl_tplg_manifest_fill_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_manifest_fill_fmt(%struct.device* %0, %struct.skl_module_iface* %1, %struct.snd_soc_tplg_vendor_value_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.skl_module_iface*, align 8
  %9 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skl_module_pin_fmt*, align 8
  %13 = alloca %struct.skl_module_fmt*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.skl_module_iface* %1, %struct.skl_module_iface** %8, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %2, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.skl_module_iface*, %struct.skl_module_iface** %8, align 8
  %16 = icmp ne %struct.skl_module_iface* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %70

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %36 [
    i32 130, label %22
    i32 129, label %29
  ]

22:                                               ; preds = %20
  %23 = load %struct.skl_module_iface*, %struct.skl_module_iface** %8, align 8
  %24 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %23, i32 0, i32 1
  %25 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %25, i64 %27
  store %struct.skl_module_pin_fmt* %28, %struct.skl_module_pin_fmt** %12, align 8
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.skl_module_iface*, %struct.skl_module_iface** %8, align 8
  %31 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %30, i32 0, i32 0
  %32 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %32, i64 %34
  store %struct.skl_module_pin_fmt* %35, %struct.skl_module_pin_fmt** %12, align 8
  br label %42

36:                                               ; preds = %20
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %29, %22
  %43 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %12, align 8
  %44 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %43, i32 0, i32 1
  store %struct.skl_module_fmt* %44, %struct.skl_module_fmt** %13, align 8
  %45 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  %46 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %54 [
    i32 128, label %48
  ]

48:                                               ; preds = %42
  %49 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  %50 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %12, align 8
  %53 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %69

54:                                               ; preds = %42
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %13, align 8
  %57 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  %58 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %9, align 8
  %61 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @skl_tplg_fill_fmt(%struct.device* %55, %struct.skl_module_fmt* %56, i32 %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %48
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %66, %36, %17
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @skl_tplg_fill_fmt(%struct.device*, %struct.skl_module_fmt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
