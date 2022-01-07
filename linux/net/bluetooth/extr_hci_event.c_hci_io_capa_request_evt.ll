; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_io_capa_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_io_capa_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_io_capa_request = type { i32 }
%struct.hci_conn = type { i32, i32, i32, i32 }
%struct.hci_cp_io_capability_reply = type { i32, i32, i32, i32, i32 }
%struct.hci_cp_io_capability_neg_reply = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_INITIATOR = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@HCI_IO_DISPLAY_YESNO = common dso_local global i32 0, align 4
@HCI_IO_NO_INPUT_OUTPUT = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_OP_IO_CAPABILITY_REPLY = common dso_local global i32 0, align 4
@HCI_ERROR_PAIRING_NOT_ALLOWED = common dso_local global i32 0, align 4
@HCI_OP_IO_CAPABILITY_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_io_capa_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_io_capa_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_io_capa_request*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_io_capability_reply, align 4
  %8 = alloca %struct.hci_cp_io_capability_neg_reply, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_io_capa_request*
  store %struct.hci_ev_io_capa_request* %13, %struct.hci_ev_io_capa_request** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load i32, i32* @ACL_LINK, align 4
  %22 = load %struct.hci_ev_io_capa_request*, %struct.hci_ev_io_capa_request** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_io_capa_request, %struct.hci_ev_io_capa_request* %22, i32 0, i32 0
  %24 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %20, i32 %21, i32* %23)
  store %struct.hci_conn* %24, %struct.hci_conn** %6, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %26 = icmp ne %struct.hci_conn* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %133

28:                                               ; preds = %2
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = call i32 @hci_conn_hold(%struct.hci_conn* %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = load i32, i32* @HCI_MGMT, align 4
  %33 = call i64 @hci_dev_test_flag(%struct.hci_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %133

36:                                               ; preds = %28
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load i32, i32* @HCI_BONDABLE, align 4
  %39 = call i64 @hci_dev_test_flag(%struct.hci_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @HCI_CONN_AUTH_INITIATOR, align 4
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -2
  %52 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %121

54:                                               ; preds = %47, %41, %36
  %55 = getelementptr inbounds %struct.hci_cp_io_capability_reply, %struct.hci_cp_io_capability_reply* %7, i32 0, i32 3
  %56 = load %struct.hci_ev_io_capa_request*, %struct.hci_ev_io_capa_request** %5, align 8
  %57 = getelementptr inbounds %struct.hci_ev_io_capa_request, %struct.hci_ev_io_capa_request* %56, i32 0, i32 0
  %58 = call i32 @bacpy(i32* %55, i32* %57)
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @HCI_IO_DISPLAY_YESNO, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %67 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ %68, %65 ]
  %71 = getelementptr inbounds %struct.hci_cp_io_capability_reply, %struct.hci_cp_io_capability_reply* %7, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %73 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 255
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HCI_IO_NO_INPUT_OUTPUT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %90 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %82, %76
  br label %99

94:                                               ; preds = %69
  %95 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %96 = call i32 @hci_get_auth_req(%struct.hci_conn* %95)
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %98 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %93
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load i32, i32* @HCI_BONDABLE, align 4
  %102 = call i64 @hci_dev_test_flag(%struct.hci_dev* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @HCI_AT_NO_BONDING_MITM, align 4
  %106 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %112 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.hci_cp_io_capability_reply, %struct.hci_cp_io_capability_reply* %7, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %116 = call i32 @bredr_oob_data_present(%struct.hci_conn* %115)
  %117 = getelementptr inbounds %struct.hci_cp_io_capability_reply, %struct.hci_cp_io_capability_reply* %7, i32 0, i32 4
  store i32 %116, i32* %117, align 4
  %118 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %119 = load i32, i32* @HCI_OP_IO_CAPABILITY_REPLY, align 4
  %120 = call i32 @hci_send_cmd(%struct.hci_dev* %118, i32 %119, i32 20, %struct.hci_cp_io_capability_reply* %7)
  br label %132

121:                                              ; preds = %47
  %122 = getelementptr inbounds %struct.hci_cp_io_capability_neg_reply, %struct.hci_cp_io_capability_neg_reply* %8, i32 0, i32 3
  %123 = load %struct.hci_ev_io_capa_request*, %struct.hci_ev_io_capa_request** %5, align 8
  %124 = getelementptr inbounds %struct.hci_ev_io_capa_request, %struct.hci_ev_io_capa_request* %123, i32 0, i32 0
  %125 = call i32 @bacpy(i32* %122, i32* %124)
  %126 = load i32, i32* @HCI_ERROR_PAIRING_NOT_ALLOWED, align 4
  %127 = getelementptr inbounds %struct.hci_cp_io_capability_neg_reply, %struct.hci_cp_io_capability_neg_reply* %8, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %129 = load i32, i32* @HCI_OP_IO_CAPABILITY_NEG_REPLY, align 4
  %130 = bitcast %struct.hci_cp_io_capability_neg_reply* %8 to %struct.hci_cp_io_capability_reply*
  %131 = call i32 @hci_send_cmd(%struct.hci_dev* %128, i32 %129, i32 20, %struct.hci_cp_io_capability_reply* %130)
  br label %132

132:                                              ; preds = %121, %110
  br label %133

133:                                              ; preds = %132, %35, %27
  %134 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %135 = call i32 @hci_dev_unlock(%struct.hci_dev* %134)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_get_auth_req(%struct.hci_conn*) #1

declare dso_local i32 @bredr_oob_data_present(%struct.hci_conn*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_io_capability_reply*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
