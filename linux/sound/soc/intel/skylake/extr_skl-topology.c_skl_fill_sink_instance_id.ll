; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_sink_instance_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_sink_instance_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i64 }
%struct.skl_kpb_params = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.skl_mod_inst_map* }
%struct.skl_mod_inst_map = type { i32, i32 }

@SKL_MODULE_TYPE_KPB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, i32*, i32, %struct.skl_module_cfg*)* @skl_fill_sink_instance_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_fill_sink_instance_id(%struct.skl_dev* %0, i32* %1, i32 %2, %struct.skl_module_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skl_kpb_params*, align 8
  %13 = alloca %struct.skl_mod_inst_map*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.skl_module_cfg* %3, %struct.skl_module_cfg** %9, align 8
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %15 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SKL_MODULE_TYPE_KPB, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.skl_kpb_params*
  store %struct.skl_kpb_params* %21, %struct.skl_kpb_params** %12, align 8
  %22 = load %struct.skl_kpb_params*, %struct.skl_kpb_params** %12, align 8
  %23 = getelementptr inbounds %struct.skl_kpb_params, %struct.skl_kpb_params* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.skl_mod_inst_map*, %struct.skl_mod_inst_map** %24, align 8
  store %struct.skl_mod_inst_map* %25, %struct.skl_mod_inst_map** %13, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %52, %19
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.skl_kpb_params*, %struct.skl_kpb_params** %12, align 8
  %29 = getelementptr inbounds %struct.skl_kpb_params, %struct.skl_kpb_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %34 = load %struct.skl_mod_inst_map*, %struct.skl_mod_inst_map** %13, align 8
  %35 = getelementptr inbounds %struct.skl_mod_inst_map, %struct.skl_mod_inst_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.skl_mod_inst_map*, %struct.skl_mod_inst_map** %13, align 8
  %38 = getelementptr inbounds %struct.skl_mod_inst_map, %struct.skl_mod_inst_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @skl_get_pvt_instance_id_map(%struct.skl_dev* %33, i32 %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.skl_mod_inst_map*, %struct.skl_mod_inst_map** %13, align 8
  %49 = getelementptr inbounds %struct.skl_mod_inst_map, %struct.skl_mod_inst_map* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.skl_mod_inst_map*, %struct.skl_mod_inst_map** %13, align 8
  %51 = getelementptr inbounds %struct.skl_mod_inst_map, %struct.skl_mod_inst_map* %50, i32 1
  store %struct.skl_mod_inst_map* %51, %struct.skl_mod_inst_map** %13, align 8
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %26

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55, %4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @skl_get_pvt_instance_id_map(%struct.skl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
