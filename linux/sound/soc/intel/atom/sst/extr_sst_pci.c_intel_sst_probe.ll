; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pci.c_intel_sst_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pci.c_intel_sst_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sst_platform_info* }
%struct.sst_platform_info = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.intel_sst_drv = type { i8*, i32, i32, i32, i32, %struct.sst_platform_info* }

@.str = private unnamed_addr constant [18 x i8] c"Probe for DID %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%04x%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fw_sst_\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"device can't be enabled. Returned err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Probe failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_sst_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sst_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sst_drv*, align 8
  %8 = alloca %struct.sst_platform_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.sst_platform_info*, %struct.sst_platform_info** %11, align 8
  store %struct.sst_platform_info* %12, %struct.sst_platform_info** %8, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(%struct.TYPE_3__* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sst_alloc_drv_context(%struct.intel_sst_drv** %7, %struct.TYPE_3__* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %2
  %30 = load %struct.sst_platform_info*, %struct.sst_platform_info** %8, align 8
  %31 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %32 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %31, i32 0, i32 5
  store %struct.sst_platform_info* %30, %struct.sst_platform_info** %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %37 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %39 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %42 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %46 = call i32 @sst_context_init(%struct.intel_sst_drv* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %29
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pcim_enable_device(%struct.pci_dev* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %58 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %79

62:                                               ; preds = %51
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @pci_dev_get(%struct.pci_dev* %63)
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %66 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %68 = call i32 @sst_platform_get_resources(%struct.intel_sst_drv* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %79

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %75 = call i32 @pci_set_drvdata(%struct.pci_dev* %73, %struct.intel_sst_drv* %74)
  %76 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %77 = call i32 @sst_configure_runtime_pm(%struct.intel_sst_drv* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %71, %56
  %80 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %81 = call i32 @sst_context_cleanup(%struct.intel_sst_drv* %80)
  %82 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %83 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %72, %49, %27
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @sst_alloc_drv_context(%struct.intel_sst_drv**, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sst_context_init(%struct.intel_sst_drv*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @sst_platform_get_resources(%struct.intel_sst_drv*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.intel_sst_drv*) #1

declare dso_local i32 @sst_configure_runtime_pm(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_context_cleanup(%struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
