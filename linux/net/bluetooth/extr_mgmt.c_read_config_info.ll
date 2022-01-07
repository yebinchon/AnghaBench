; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_config_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_config_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i64, i32, i32, i32 }
%struct.mgmt_rp_read_config_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sock %p %s\00", align 1
@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_OPTION_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_OPTION_PUBLIC_ADDRESS = common dso_local global i32 0, align 4
@MGMT_OP_READ_CONFIG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @read_config_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_rp_read_config_info, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %11, i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = call i32 @memset(%struct.mgmt_rp_read_config_info* %9, i32 0, i32 12)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.mgmt_rp_read_config_info, %struct.mgmt_rp_read_config_info* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @MGMT_OPTION_EXTERNAL_CONFIG, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @MGMT_OPTION_PUBLIC_ADDRESS, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.mgmt_rp_read_config_info, %struct.mgmt_rp_read_config_info* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %47 = call i32 @get_missing_options(%struct.hci_dev* %46)
  %48 = getelementptr inbounds %struct.mgmt_rp_read_config_info, %struct.mgmt_rp_read_config_info* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %50 = call i32 @hci_dev_unlock(%struct.hci_dev* %49)
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MGMT_OP_READ_CONFIG_INFO, align 4
  %56 = call i32 @mgmt_cmd_complete(%struct.sock* %51, i32 %54, i32 %55, i32 0, %struct.mgmt_rp_read_config_info* %9, i32 12)
  ret i32 %56
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.mgmt_rp_read_config_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @get_missing_options(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_read_config_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
