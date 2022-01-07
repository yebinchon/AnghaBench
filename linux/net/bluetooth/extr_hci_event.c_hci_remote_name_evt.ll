; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_name_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_name_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_name = type { i64, i32, i32* }
%struct.hci_conn = type { i32, i32 }
%struct.hci_cp_auth_requested = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_INITIATOR = common dso_local global i32 0, align 4
@HCI_OP_AUTH_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_name_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_name_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_name*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_auth_requested, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_remote_name*
  store %struct.hci_ev_remote_name* %12, %struct.hci_ev_remote_name** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call i32 @hci_conn_check_pending(%struct.hci_dev* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @ACL_LINK, align 4
  %23 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %23, i32 0, i32 1
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i32 %22, i32* %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* @HCI_MGMT, align 4
  %28 = call i32 @hci_dev_test_flag(%struct.hci_dev* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %39 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %40 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %39, i32 0, i32 1
  %41 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %42 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %45 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @HCI_MAX_NAME_LENGTH, align 4
  %48 = call i32 @strnlen(i32* %46, i32 %47)
  %49 = call i32 @hci_check_pending_name(%struct.hci_dev* %37, %struct.hci_conn* %38, i32* %40, i32* %43, i32 %48)
  br label %56

50:                                               ; preds = %31
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %53 = load %struct.hci_ev_remote_name*, %struct.hci_ev_remote_name** %5, align 8
  %54 = getelementptr inbounds %struct.hci_ev_remote_name, %struct.hci_ev_remote_name* %53, i32 0, i32 1
  %55 = call i32 @hci_check_pending_name(%struct.hci_dev* %51, %struct.hci_conn* %52, i32* %54, i32* null, i32 0)
  br label %56

56:                                               ; preds = %50, %36
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %59 = icmp ne %struct.hci_conn* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %87

61:                                               ; preds = %57
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %64 = call i32 @hci_outgoing_auth_needed(%struct.hci_dev* %62, %struct.hci_conn* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %87

67:                                               ; preds = %61
  %68 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %69 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 1
  %71 = call i32 @test_and_set_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @HCI_CONN_AUTH_INITIATOR, align 4
  %75 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 1
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__cpu_to_le16(i32 %80)
  %82 = getelementptr inbounds %struct.hci_cp_auth_requested, %struct.hci_cp_auth_requested* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %84 = load i32, i32* @HCI_OP_AUTH_REQUESTED, align 4
  %85 = call i32 @hci_send_cmd(%struct.hci_dev* %83, i32 %84, i32 4, %struct.hci_cp_auth_requested* %7)
  br label %86

86:                                               ; preds = %73, %67
  br label %87

87:                                               ; preds = %86, %66, %60
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = call i32 @hci_dev_unlock(%struct.hci_dev* %88)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_conn_check_pending(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_check_pending_name(%struct.hci_dev*, %struct.hci_conn*, i32*, i32*, i32) #1

declare dso_local i32 @strnlen(i32*, i32) #1

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
