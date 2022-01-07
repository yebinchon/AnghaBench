; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_acpi.c_sst_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_acpi.c_sst_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_platform_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_sst_drv = type { i32, %struct.sst_platform_info* }
%struct.acpi_device_id = type { i32, i64 }
%struct.snd_soc_acpi_mach = type { i32, i32, %struct.TYPE_5__, %struct.sst_platform_info* }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No matching machine driver found\0A\00", align 1
@byt_rvp_platform_data = common dso_local global %struct.sst_platform_info zeroinitializer, align 8
@chv_platform_data = common dso_local global %struct.sst_platform_info zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unique device id conversion error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ACPI device id: %x\0A\00", align 1
@bytcr_res_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create machine device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sst_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_acpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_sst_drv*, align 8
  %7 = alloca %struct.acpi_device_id*, align 8
  %8 = alloca %struct.snd_soc_acpi_mach*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.sst_platform_info*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.acpi_device_id* @acpi_match_device(i32 %19, %struct.device* %20)
  store %struct.acpi_device_id* %21, %struct.acpi_device_id** %7, align 8
  %22 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %23 = icmp ne %struct.acpi_device_id* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %161

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.snd_soc_acpi_mach*
  store %struct.snd_soc_acpi_mach* %36, %struct.snd_soc_acpi_mach** %8, align 8
  %37 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %38 = call %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(%struct.snd_soc_acpi_mach* %37)
  store %struct.snd_soc_acpi_mach* %38, %struct.snd_soc_acpi_mach** %8, align 8
  %39 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %40 = icmp eq %struct.snd_soc_acpi_mach* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %161

46:                                               ; preds = %27
  %47 = call i64 (...) @soc_intel_is_byt()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %50, i32 0, i32 3
  store %struct.sst_platform_info* @byt_rvp_platform_data, %struct.sst_platform_info** %51, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %54 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %53, i32 0, i32 3
  store %struct.sst_platform_info* @chv_platform_data, %struct.sst_platform_info** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %56, i32 0, i32 3
  %58 = load %struct.sst_platform_info*, %struct.sst_platform_info** %57, align 8
  store %struct.sst_platform_info* %58, %struct.sst_platform_info** %11, align 8
  %59 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %60 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kstrtouint(i32 %61, i32 16, i32* %12)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %161

70:                                               ; preds = %55
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @sst_alloc_drv_context(%struct.intel_sst_drv** %6, %struct.device* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %161

81:                                               ; preds = %70
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i64 @soc_intel_is_byt_cr(%struct.platform_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store %struct.TYPE_6__* @bytcr_res_info, %struct.TYPE_6__** getelementptr inbounds (%struct.sst_platform_info, %struct.sst_platform_info* @byt_rvp_platform_data, i32 0, i32 1), align 8
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.sst_platform_info*, %struct.sst_platform_info** %11, align 8
  %88 = getelementptr inbounds %struct.sst_platform_info, %struct.sst_platform_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %93 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.sst_platform_info*, %struct.sst_platform_info** %11, align 8
  %97 = getelementptr inbounds %struct.sst_platform_info, %struct.sst_platform_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.platform_device* @platform_device_register_data(%struct.device* %95, i32 %98, i32 -1, i8* null, i32 0)
  store %struct.platform_device* %99, %struct.platform_device** %10, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %101 = call i64 @IS_ERR(%struct.platform_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %86
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.sst_platform_info*, %struct.sst_platform_info** %11, align 8
  %106 = getelementptr inbounds %struct.sst_platform_info, %struct.sst_platform_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %110 = call i32 @PTR_ERR(%struct.platform_device* %109)
  store i32 %110, i32* %2, align 4
  br label %161

111:                                              ; preds = %86
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %114 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %117 = bitcast %struct.snd_soc_acpi_mach* %116 to i8*
  %118 = call %struct.platform_device* @platform_device_register_data(%struct.device* %112, i32 %115, i32 -1, i8* %117, i32 24)
  store %struct.platform_device* %118, %struct.platform_device** %9, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %120 = call i64 @IS_ERR(%struct.platform_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %125 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %129 = call i32 @PTR_ERR(%struct.platform_device* %128)
  store i32 %129, i32* %2, align 4
  br label %161

130:                                              ; preds = %111
  %131 = load %struct.sst_platform_info*, %struct.sst_platform_info** %11, align 8
  %132 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %133 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %132, i32 0, i32 1
  store %struct.sst_platform_info* %131, %struct.sst_platform_info** %133, align 8
  %134 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %135 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %138 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @strcpy(i32 %136, i32 %139)
  %141 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %142 = call i32 @sst_platform_get_resources(%struct.intel_sst_drv* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %130
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %161

147:                                              ; preds = %130
  %148 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %149 = call i32 @sst_context_init(%struct.intel_sst_drv* %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %161

154:                                              ; preds = %147
  %155 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %156 = call i32 @sst_configure_runtime_pm(%struct.intel_sst_drv* %155)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.intel_sst_drv* %158)
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %154, %152, %145, %122, %103, %79, %65, %41, %24
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(%struct.snd_soc_acpi_mach*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @soc_intel_is_byt(...) #1

declare dso_local i32 @kstrtouint(i32, i32, i32*) #1

declare dso_local i32 @sst_alloc_drv_context(%struct.intel_sst_drv**, %struct.device*, i32) #1

declare dso_local i64 @soc_intel_is_byt_cr(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(%struct.device*, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @sst_platform_get_resources(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_context_init(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_configure_runtime_pm(%struct.intel_sst_drv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
