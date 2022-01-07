; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_manifest_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_manifest_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_tplg_manifest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i64 }

@SKL_MAX_LIB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Exceeding max Library count. Got:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_soc_tplg_manifest*)* @skl_manifest_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_manifest_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_tplg_manifest* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %8 = alloca %struct.hdac_bus*, align 8
  %9 = alloca %struct.skl_dev*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_tplg_manifest* %2, %struct.snd_soc_tplg_manifest** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.hdac_bus* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.hdac_bus* %11, %struct.hdac_bus** %8, align 8
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %13 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %12)
  store %struct.skl_dev* %13, %struct.skl_dev** %9, align 8
  %14 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %7, align 8
  %22 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %23 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %26 = call i32 @skl_tplg_get_manifest_data(%struct.snd_soc_tplg_manifest* %21, i32 %24, %struct.skl_dev* %25)
  %27 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %28 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SKL_MAX_LIB, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %34 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %37 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %32, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.hdac_bus* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @skl_tplg_get_manifest_data(%struct.snd_soc_tplg_manifest*, i32, %struct.skl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
