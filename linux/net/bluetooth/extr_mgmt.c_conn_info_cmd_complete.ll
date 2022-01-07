; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_conn_info_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_conn_info_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32, i32, i32, %struct.hci_conn* }
%struct.hci_conn = type { i8*, i8*, i32 }
%struct.mgmt_rp_get_conn_info = type { i8*, i8*, i32, i32 }

@MGMT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@HCI_RSSI_INVALID = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i8* null, align 8
@MGMT_OP_GET_CONN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgmt_pending_cmd*, i64)* @conn_info_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_info_cmd_complete(%struct.mgmt_pending_cmd* %0, i64 %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.mgmt_rp_get_conn_info, align 8
  %7 = alloca i32, align 4
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %8, i32 0, i32 3
  %10 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  store %struct.hci_conn* %10, %struct.hci_conn** %5, align 8
  %11 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 3
  %12 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memcpy(i32* %11, i32 %14, i32 4)
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MGMT_STATUS_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @HCI_RSSI_INVALID, align 4
  %34 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** @HCI_TX_POWER_INVALID, align 8
  %36 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** @HCI_TX_POWER_INVALID, align 8
  %38 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %19
  %40 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @mgmt_cmd_complete(i32 %42, i32 %45, i32 %46, i64 %47, %struct.mgmt_rp_get_conn_info* %6, i32 24)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %50 = call i32 @hci_conn_drop(%struct.hci_conn* %49)
  %51 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %52 = call i32 @hci_conn_put(%struct.hci_conn* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i64, %struct.mgmt_rp_get_conn_info*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
