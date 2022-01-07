; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_clock_info_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_clock_info_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_read_clock = type { i32, i64 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %u\00", align 1
@HCI_OP_READ_CLOCK = common dso_local global i32 0, align 4
@MGMT_OP_GET_CLOCK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @get_clock_info_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_clock_info_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_cp_read_clock*, align 8
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = load i32, i32* @HCI_OP_READ_CLOCK, align 4
  %20 = call %struct.hci_cp_read_clock* @hci_sent_cmd_data(%struct.hci_dev* %18, i32 %19)
  store %struct.hci_cp_read_clock* %20, %struct.hci_cp_read_clock** %7, align 8
  %21 = load %struct.hci_cp_read_clock*, %struct.hci_cp_read_clock** %7, align 8
  %22 = icmp ne %struct.hci_cp_read_clock* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %56

24:                                               ; preds = %3
  %25 = load %struct.hci_cp_read_clock*, %struct.hci_cp_read_clock** %7, align 8
  %26 = getelementptr inbounds %struct.hci_cp_read_clock, %struct.hci_cp_read_clock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.hci_cp_read_clock*, %struct.hci_cp_read_clock** %7, align 8
  %31 = getelementptr inbounds %struct.hci_cp_read_clock, %struct.hci_cp_read_clock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @__le16_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %34, i32 %35)
  store %struct.hci_conn* %36, %struct.hci_conn** %9, align 8
  br label %38

37:                                               ; preds = %24
  store %struct.hci_conn* null, %struct.hci_conn** %9, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* @MGMT_OP_GET_CLOCK_INFO, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %42 = call %struct.mgmt_pending_cmd* @pending_find_data(i32 %39, %struct.hci_dev* %40, %struct.hci_conn* %41)
  store %struct.mgmt_pending_cmd* %42, %struct.mgmt_pending_cmd** %8, align 8
  %43 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %44 = icmp ne %struct.mgmt_pending_cmd* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %56

46:                                               ; preds = %38
  %47 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %47, i32 0, i32 0
  %49 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %48, align 8
  %50 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mgmt_status(i32 %51)
  %53 = call i32 %49(%struct.mgmt_pending_cmd* %50, i32 %52)
  %54 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %55 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %54)
  br label %56

56:                                               ; preds = %46, %45, %23
  %57 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %58 = call i32 @hci_dev_unlock(%struct.hci_dev* %57)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_cp_read_clock* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find_data(i32, %struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
