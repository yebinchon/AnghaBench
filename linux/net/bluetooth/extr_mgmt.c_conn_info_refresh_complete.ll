; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_conn_info_refresh_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_conn_info_refresh_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_read_rssi = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@HCI_OP_READ_RSSI = common dso_local global i32 0, align 4
@HCI_OP_READ_TX_POWER = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid sent_cmd in conn_info response\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"unknown handle (%d) in conn_info response\00", align 1
@MGMT_OP_GET_CONN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @conn_info_refresh_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_info_refresh_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_cp_read_rssi*, align 8
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = call i32 @hci_dev_lock(%struct.hci_dev* %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = load i32, i32* @HCI_OP_READ_RSSI, align 4
  %18 = call %struct.hci_cp_read_rssi* @hci_sent_cmd_data(%struct.hci_dev* %16, i32 %17)
  store %struct.hci_cp_read_rssi* %18, %struct.hci_cp_read_rssi** %7, align 8
  %19 = load %struct.hci_cp_read_rssi*, %struct.hci_cp_read_rssi** %7, align 8
  %20 = icmp ne %struct.hci_cp_read_rssi* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = load i32, i32* @HCI_OP_READ_TX_POWER, align 4
  %24 = call %struct.hci_cp_read_rssi* @hci_sent_cmd_data(%struct.hci_dev* %22, i32 %23)
  store %struct.hci_cp_read_rssi* %24, %struct.hci_cp_read_rssi** %7, align 8
  %25 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %25, i32* %11, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mgmt_status(i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.hci_cp_read_rssi*, %struct.hci_cp_read_rssi** %7, align 8
  %31 = icmp ne %struct.hci_cp_read_rssi* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %66

35:                                               ; preds = %29
  %36 = load %struct.hci_cp_read_rssi*, %struct.hci_cp_read_rssi** %7, align 8
  %37 = getelementptr inbounds %struct.hci_cp_read_rssi, %struct.hci_cp_read_rssi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__le16_to_cpu(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %40, i32 %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %9, align 8
  %43 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %44 = icmp ne %struct.hci_conn* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %66

49:                                               ; preds = %35
  %50 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %51 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %53 = call %struct.mgmt_pending_cmd* @pending_find_data(i32 %50, %struct.hci_dev* %51, %struct.hci_conn* %52)
  store %struct.mgmt_pending_cmd* %53, %struct.mgmt_pending_cmd** %8, align 8
  %54 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %55 = icmp ne %struct.mgmt_pending_cmd* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %66

57:                                               ; preds = %49
  %58 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %59 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %58, i32 0, i32 0
  %60 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %59, align 8
  %61 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 %60(%struct.mgmt_pending_cmd* %61, i32 %62)
  %64 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %65 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %64)
  br label %66

66:                                               ; preds = %57, %56, %45, %32
  %67 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %68 = call i32 @hci_dev_unlock(%struct.hci_dev* %67)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_cp_read_rssi* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find_data(i32, %struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
