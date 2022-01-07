; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_ext_scan_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_ext_scan_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_cp_le_set_ext_scan_params = type { i64 }
%struct.hci_cp_le_scan_phy_params = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_SET_EXT_SCAN_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_le_set_ext_scan_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_le_set_ext_scan_param(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_cp_le_set_ext_scan_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hci_cp_le_scan_phy_params*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_PARAMS, align 4
  %24 = call %struct.hci_cp_le_set_ext_scan_params* @hci_sent_cmd_data(%struct.hci_dev* %22, i32 %23)
  store %struct.hci_cp_le_set_ext_scan_params* %24, %struct.hci_cp_le_set_ext_scan_params** %5, align 8
  %25 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %5, align 8
  %26 = icmp ne %struct.hci_cp_le_set_ext_scan_params* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %5, align 8
  %30 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.hci_cp_le_scan_phy_params*
  store %struct.hci_cp_le_scan_phy_params* %33, %struct.hci_cp_le_scan_phy_params** %7, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = call i32 @hci_dev_lock(%struct.hci_dev* %34)
  %36 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %7, align 8
  %37 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = call i32 @hci_dev_unlock(%struct.hci_dev* %41)
  br label %43

43:                                               ; preds = %28, %27, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_cp_le_set_ext_scan_params* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
