; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_le.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@identity_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rpa_timeout\00", align 1
@rpa_timeout_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"random_address\00", align 1
@random_address_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"static_address\00", align 1
@static_address_fops = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"force_static_address\00", align 1
@force_static_address_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"white_list_size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"white_list\00", align 1
@white_list_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"resolv_list_size\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"resolv_list\00", align 1
@resolv_list_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"identity_resolving_keys\00", align 1
@identity_resolving_keys_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"long_term_keys\00", align 1
@long_term_keys_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"conn_min_interval\00", align 1
@conn_min_interval_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"conn_max_interval\00", align 1
@conn_max_interval_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"conn_latency\00", align 1
@conn_latency_fops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"supervision_timeout\00", align 1
@supervision_timeout_fops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"adv_channel_map\00", align 1
@adv_channel_map_fops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"adv_min_interval\00", align 1
@adv_min_interval_fops = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"adv_max_interval\00", align 1
@adv_max_interval_fops = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"discov_interleaved_timeout\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"auth_payload_timeout\00", align 1
@auth_payload_timeout_fops = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"quirk_strict_duplicate_filter\00", align 1
@quirk_strict_duplicate_filter_fops = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"quirk_simultaneous_discovery\00", align 1
@quirk_simultaneous_discovery_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_debugfs_create_le(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 256, i32 %5, %struct.hci_dev* %6, i32* @identity_fops)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %10, %struct.hci_dev* %11, i32* @rpa_timeout_fops)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %15, %struct.hci_dev* %16, i32* @random_address_fops)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %20, %struct.hci_dev* %21, i32* @static_address_fops)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 4
  %25 = load i32, i32* @BDADDR_ANY, align 4
  %26 = call i64 @bacmp(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 420, i32 %31, %struct.hci_dev* %32, i32* @force_static_address_fops)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 3
  %40 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 292, i32 %37, i32* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 292, i32 %43, %struct.hci_dev* %44, i32* @white_list_fops)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 2
  %51 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 292, i32 %48, i32* %50)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %56 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 292, i32 %54, %struct.hci_dev* %55, i32* @resolv_list_fops)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 256, i32 %59, %struct.hci_dev* %60, i32* @identity_resolving_keys_fops)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %66 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 256, i32 %64, %struct.hci_dev* %65, i32* @long_term_keys_fops)
  %67 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %71 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 420, i32 %69, %struct.hci_dev* %70, i32* @conn_min_interval_fops)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 420, i32 %74, %struct.hci_dev* %75, i32* @conn_max_interval_fops)
  %77 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %81 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 420, i32 %79, %struct.hci_dev* %80, i32* @conn_latency_fops)
  %82 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %86 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 420, i32 %84, %struct.hci_dev* %85, i32* @supervision_timeout_fops)
  %87 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %91 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 420, i32 %89, %struct.hci_dev* %90, i32* @adv_channel_map_fops)
  %92 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %93 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %96 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 420, i32 %94, %struct.hci_dev* %95, i32* @adv_min_interval_fops)
  %97 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %98 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %101 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 420, i32 %99, %struct.hci_dev* %100, i32* @adv_max_interval_fops)
  %102 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 1
  %107 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 420, i32 %104, i32* %106)
  %108 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %112 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 420, i32 %110, %struct.hci_dev* %111, i32* @auth_payload_timeout_fops)
  %113 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %117 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 420, i32 %115, %struct.hci_dev* %116, i32* @quirk_strict_duplicate_filter_fops)
  %118 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %122 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 420, i32 %120, %struct.hci_dev* %121, i32* @quirk_simultaneous_discovery_fops)
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hci_dev*, i32*) #1

declare dso_local i64 @bacmp(i32*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
