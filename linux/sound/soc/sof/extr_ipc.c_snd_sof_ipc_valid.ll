; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_valid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, %struct.sof_ipc_fw_ready }
%struct.sof_ipc_fw_ready = type { i32, %struct.sof_ipc_fw_version }
%struct.sof_ipc_fw_version = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Firmware info: version %d:%d:%d-%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Firmware: ABI %d:%d:%d Kernel ABI %d:%d:%d\0A\00", align 1
@SOF_ABI_MAJOR = common dso_local global i8* null, align 8
@SOF_ABI_MINOR = common dso_local global i8* null, align 8
@SOF_ABI_PATCH = common dso_local global i8* null, align 8
@SOF_ABI_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"error: incompatible FW ABI version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"warn: FW ABI is more recent than kernel\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"error: FW ABI is more recent than kernel\0A\00", align 1
@SOF_IPC_INFO_BUILD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [87 x i8] c"Firmware debug build %d on %s-%s - options:\0A GDB: %s\0A lock debug: %s\0A lock vdebug: %s\0A\00", align 1
@SOF_IPC_INFO_GDB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@SOF_IPC_INFO_LOCKS = common dso_local global i32 0, align 4
@SOF_IPC_INFO_LOCKSV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_ipc_valid(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.sof_ipc_fw_ready*, align 8
  %5 = alloca %struct.sof_ipc_fw_version*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 2
  store %struct.sof_ipc_fw_ready* %7, %struct.sof_ipc_fw_ready** %4, align 8
  %8 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %9 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %8, i32 0, i32 1
  store %struct.sof_ipc_fw_version* %9, %struct.sof_ipc_fw_version** %5, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %11 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %14 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %17 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %20 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %23 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @dev_info(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i8* %26)
  %28 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %29 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %32 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SOF_ABI_VERSION_MAJOR(i64 %33)
  %35 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %36 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @SOF_ABI_VERSION_MINOR(i64 %37)
  %39 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %40 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @SOF_ABI_VERSION_PATCH(i64 %41)
  %43 = load i8*, i8** @SOF_ABI_MAJOR, align 8
  %44 = load i8*, i8** @SOF_ABI_MINOR, align 8
  %45 = load i8*, i8** @SOF_ABI_PATCH, align 8
  %46 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i8* %43, i8* %44, i8* %45)
  %47 = load i64, i64* @SOF_ABI_VERSION, align 8
  %48 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %49 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @SOF_ABI_VERSION_INCOMPATIBLE(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %55 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %133

60:                                               ; preds = %1
  %61 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %62 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOF_ABI_VERSION, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i32, i32* @CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS, align 4
  %68 = call i32 @IS_ENABLED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_warn(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %82

75:                                               ; preds = %66
  %76 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %77 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %133

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %60
  %84 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %85 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SOF_IPC_INFO_BUILD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %83
  %91 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %92 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %95 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %98 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %101 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %104 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SOF_IPC_INFO_GDB, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %111 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %112 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SOF_IPC_INFO_LOCKS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %119 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %120 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SOF_IPC_INFO_LOCKSV, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %127 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @dev_info(i32 %93, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i8* %110, i8* %118, i8* %126)
  br label %128

128:                                              ; preds = %90, %83
  %129 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %130 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %129, i32 0, i32 0
  %131 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %132 = call i32 @memcpy(i32* %130, %struct.sof_ipc_fw_version* %131, i32 40)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %75, %53
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @SOF_ABI_VERSION_MAJOR(i64) #1

declare dso_local i32 @SOF_ABI_VERSION_MINOR(i64) #1

declare dso_local i32 @SOF_ABI_VERSION_PATCH(i64) #1

declare dso_local i64 @SOF_ABI_VERSION_INCOMPATIBLE(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sof_ipc_fw_version*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
