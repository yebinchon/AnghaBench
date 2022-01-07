; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.skl_module_pin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%d Not a pin token\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_pin*, i32)* @skl_tplg_fill_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_pin(%struct.device* %0, %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.skl_module_pin* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %8 = alloca %struct.skl_module_pin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  store %struct.skl_module_pin* %2, %struct.skl_module_pin** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %50 [
    i32 129, label %14
    i32 130, label %24
    i32 128, label %34
  ]

14:                                               ; preds = %4
  %15 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.skl_module_pin*, %struct.skl_module_pin** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %18, i64 %20
  %22 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %17, i32* %23, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skl_module_pin*, %struct.skl_module_pin** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %28, i64 %30
  %32 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %27, i32* %33, align 4
  br label %58

34:                                               ; preds = %4
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.skl_module_pin*, %struct.skl_module_pin** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %36, i64 %38
  %40 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %43 = bitcast %struct.snd_soc_tplg_vendor_value_elem* %42 to %struct.snd_soc_tplg_vendor_uuid_elem*
  %44 = call i32 @skl_tplg_get_uuid(%struct.device* %35, i32* %41, %struct.snd_soc_tplg_vendor_uuid_elem* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %34
  br label %58

50:                                               ; preds = %4
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %49, %24, %14
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %50, %47
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @skl_tplg_get_uuid(%struct.device*, i32*, %struct.snd_soc_tplg_vendor_uuid_elem*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
