; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_remote_name_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_remote_name_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_remote_name_req = type { i32 }
%struct.hci_conn = type { i32, i32 }
%struct.hci_cp_auth_requested = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_REMOTE_NAME_REQ = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_INITIATOR = common dso_local global i32 0, align 4
@HCI_OP_AUTH_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_remote_name_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_remote_name_req(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_remote_name_req*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_auth_requested, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* @HCI_OP_REMOTE_NAME_REQ, align 4
  %19 = call %struct.hci_cp_remote_name_req* @hci_sent_cmd_data(%struct.hci_dev* %17, i32 %18)
  store %struct.hci_cp_remote_name_req* %19, %struct.hci_cp_remote_name_req** %5, align 8
  %20 = load %struct.hci_cp_remote_name_req*, %struct.hci_cp_remote_name_req** %5, align 8
  %21 = icmp ne %struct.hci_cp_remote_name_req* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %74

23:                                               ; preds = %16
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call i32 @hci_dev_lock(%struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* @ACL_LINK, align 4
  %28 = load %struct.hci_cp_remote_name_req*, %struct.hci_cp_remote_name_req** %5, align 8
  %29 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %28, i32 0, i32 0
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %26, i32 %27, i32* %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %6, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = load i32, i32* @HCI_MGMT, align 4
  %33 = call i64 @hci_dev_test_flag(%struct.hci_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = load %struct.hci_cp_remote_name_req*, %struct.hci_cp_remote_name_req** %5, align 8
  %39 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %38, i32 0, i32 0
  %40 = call i32 @hci_check_pending_name(%struct.hci_dev* %36, %struct.hci_conn* %37, i32* %39, i32* null, i32 0)
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = icmp ne %struct.hci_conn* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %71

45:                                               ; preds = %41
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = call i32 @hci_outgoing_auth_needed(%struct.hci_dev* %46, %struct.hci_conn* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %71

51:                                               ; preds = %45
  %52 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %53 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 1
  %55 = call i32 @test_and_set_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @HCI_CONN_AUTH_INITIATOR, align 4
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__cpu_to_le16(i32 %64)
  %66 = getelementptr inbounds %struct.hci_cp_auth_requested, %struct.hci_cp_auth_requested* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = load i32, i32* @HCI_OP_AUTH_REQUESTED, align 4
  %69 = call i32 @hci_send_cmd(%struct.hci_dev* %67, i32 %68, i32 4, %struct.hci_cp_auth_requested* %7)
  br label %70

70:                                               ; preds = %57, %51
  br label %71

71:                                               ; preds = %70, %50, %44
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = call i32 @hci_dev_unlock(%struct.hci_dev* %72)
  br label %74

74:                                               ; preds = %71, %22, %15
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_remote_name_req* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_check_pending_name(%struct.hci_dev*, %struct.hci_conn*, i32*, i32*, i32) #1

declare dso_local i32 @hci_outgoing_auth_needed(%struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_auth_requested*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
