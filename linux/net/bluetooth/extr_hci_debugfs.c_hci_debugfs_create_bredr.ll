; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_bredr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_hci_debugfs_create_bredr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"inquiry_cache\00", align 1
@inquiry_cache_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"link_keys\00", align 1
@link_keys_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dev_class\00", align 1
@dev_class_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"voice_setting\00", align 1
@voice_setting_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"ssp_debug_mode\00", align 1
@ssp_debug_mode_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"min_encrypt_key_size\00", align 1
@min_encrypt_key_size_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"auto_accept_delay\00", align 1
@auto_accept_delay_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"idle_timeout\00", align 1
@idle_timeout_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"sniff_min_interval\00", align 1
@sniff_min_interval_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"sniff_max_interval\00", align 1
@sniff_max_interval_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_debugfs_create_bredr(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 292, i32 %5, %struct.hci_dev* %6, i32* @inquiry_cache_fops)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %10, %struct.hci_dev* %11, i32* @link_keys_fops)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %15, %struct.hci_dev* %16, i32* @dev_class_fops)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %20, %struct.hci_dev* %21, i32* @voice_setting_fops)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = call i64 @lmp_ssp_capable(%struct.hci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %31 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %29, %struct.hci_dev* %30, i32* @ssp_debug_mode_fops)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 420, i32 %34, %struct.hci_dev* %35, i32* @min_encrypt_key_size_fops)
  %37 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %41 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 420, i32 %39, %struct.hci_dev* %40, i32* @auto_accept_delay_fops)
  br label %42

42:                                               ; preds = %26, %1
  %43 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %44 = call i64 @lmp_sniff_capable(%struct.hci_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %51 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 420, i32 %49, %struct.hci_dev* %50, i32* @idle_timeout_fops)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %56 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 420, i32 %54, %struct.hci_dev* %55, i32* @sniff_min_interval_fops)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 420, i32 %59, %struct.hci_dev* %60, i32* @sniff_max_interval_fops)
  br label %62

62:                                               ; preds = %46, %42
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hci_dev*, i32*) #1

declare dso_local i64 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_sniff_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
