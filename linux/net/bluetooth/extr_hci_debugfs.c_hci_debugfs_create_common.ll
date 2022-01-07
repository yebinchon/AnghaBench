; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"features\00", align 1
@features_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hci_version\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hci_revision\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hardware_error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@device_id_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@device_list_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@blacklist_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@uuids_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"remote_oob\00", align 1
@remote_oob_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"conn_info_min_age\00", align 1
@conn_info_min_age_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"conn_info_max_age\00", align 1
@conn_info_max_age_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"use_debug_keys\00", align 1
@use_debug_keys_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"sc_only_mode\00", align 1
@sc_only_mode_fops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"hardware_info\00", align 1
@hardware_info_fops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"firmware_info\00", align 1
@firmware_info_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_debugfs_create_common(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 292, i32 %5, %struct.hci_dev* %6, i32* @features_fops)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 6
  %13 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %10, i32* %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 5
  %19 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %16, i32* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 4
  %25 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %22, i32* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 3
  %31 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %28, i32* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 292, i32 %34, %struct.hci_dev* %35, i32* @device_id_fops)
  %37 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %41 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 292, i32 %39, %struct.hci_dev* %40, i32* @device_list_fops)
  %42 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 292, i32 %44, %struct.hci_dev* %45, i32* @blacklist_fops)
  %47 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %51 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 292, i32 %49, %struct.hci_dev* %50, i32* @uuids_fops)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %56 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 256, i32 %54, %struct.hci_dev* %55, i32* @remote_oob_fops)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 420, i32 %59, %struct.hci_dev* %60, i32* @conn_info_min_age_fops)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %66 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 420, i32 %64, %struct.hci_dev* %65, i32* @conn_info_max_age_fops)
  %67 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %68 = call i64 @lmp_ssp_capable(%struct.hci_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %1
  %71 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %72 = call i64 @lmp_le_capable(%struct.hci_dev* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %1
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %79 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 292, i32 %77, %struct.hci_dev* %78, i32* @use_debug_keys_fops)
  br label %80

80:                                               ; preds = %74, %70
  %81 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %82 = call i64 @lmp_sc_capable(%struct.hci_dev* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %86 = call i64 @lmp_le_capable(%struct.hci_dev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84, %80
  %89 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %93 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 292, i32 %91, %struct.hci_dev* %92, i32* @sc_only_mode_fops)
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %104 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 292, i32 %102, %struct.hci_dev* %103, i32* @hardware_info_fops)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %112 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %115 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 292, i32 %113, %struct.hci_dev* %114, i32* @firmware_info_fops)
  br label %116

116:                                              ; preds = %110, %105
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hci_dev*, i32*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

declare dso_local i64 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_sc_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
