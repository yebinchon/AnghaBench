; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_phy_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_phy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_rp_get_phy_confguration = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"sock %p %s\00", align 1
@MGMT_OP_GET_PHY_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @get_phy_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phy_configuration(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_rp_get_phy_confguration, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %10, i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %16 = call i32 @hci_dev_lock(%struct.hci_dev* %15)
  %17 = call i32 @memset(%struct.mgmt_rp_get_phy_confguration* %9, i32 0, i32 24)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @get_supported_phys(%struct.hci_dev* %18)
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.mgmt_rp_get_phy_confguration, %struct.mgmt_rp_get_phy_confguration* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = call i32 @get_selected_phys(%struct.hci_dev* %22)
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.mgmt_rp_get_phy_confguration, %struct.mgmt_rp_get_phy_confguration* %9, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %27 = call i32 @get_configurable_phys(%struct.hci_dev* %26)
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.mgmt_rp_get_phy_confguration, %struct.mgmt_rp_get_phy_confguration* %9, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %31 = call i32 @hci_dev_unlock(%struct.hci_dev* %30)
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MGMT_OP_GET_PHY_CONFIGURATION, align 4
  %37 = call i32 @mgmt_cmd_complete(%struct.sock* %32, i32 %35, i32 %36, i32 0, %struct.mgmt_rp_get_phy_confguration* %9, i32 24)
  ret i32 %37
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.mgmt_rp_get_phy_confguration*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @get_supported_phys(%struct.hci_dev*) #1

declare dso_local i32 @get_selected_phys(%struct.hci_dev*) #1

declare dso_local i32 @get_configurable_phys(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_get_phy_confguration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
