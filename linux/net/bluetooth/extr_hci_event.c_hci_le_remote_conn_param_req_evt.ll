; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_remote_conn_param_req_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_remote_conn_param_req_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_le_remote_conn_param_req = type { i32, i32, i32, i32, i32 }
%struct.hci_cp_le_conn_param_req_reply = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.hci_conn = type { i64, i64, i32, i32 }
%struct.hci_conn_params = type { i8*, i8*, i8*, i8* }

@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_ERROR_UNKNOWN_CONN_ID = common dso_local global i32 0, align 4
@HCI_ERROR_INVALID_LL_PARAMS = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@HCI_OP_LE_CONN_PARAM_REQ_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_remote_conn_param_req_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_remote_conn_param_req_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_le_remote_conn_param_req*, align 8
  %6 = alloca %struct.hci_cp_le_conn_param_req_reply, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.hci_conn_params*, align 8
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.hci_ev_le_remote_conn_param_req*
  store %struct.hci_ev_le_remote_conn_param_req* %19, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %20 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %21 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le16_to_cpu(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %29 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le16_to_cpu(i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %37 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le16_to_cpu(i32 %38)
  store i8* %39, i8** %12, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %40, i8* %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %7, align 8
  %43 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %44 = icmp ne %struct.hci_conn* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_CONNECTED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %2
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @HCI_ERROR_UNKNOWN_CONN_ID, align 4
  call void @send_conn_param_neg_reply(%struct.hci_dev* %52, i8* %53, i32 %54)
  br label %139

55:                                               ; preds = %45
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @hci_check_conn_params(i8* %56, i8* %57, i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @HCI_ERROR_INVALID_LL_PARAMS, align 4
  call void @send_conn_param_neg_reply(%struct.hci_dev* %63, i8* %64, i32 %65)
  br label %139

66:                                               ; preds = %55
  %67 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %68 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %66
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = call i32 @hci_dev_lock(%struct.hci_dev* %73)
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %77 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %76, i32 0, i32 3
  %78 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %75, i32* %77, i32 %80)
  store %struct.hci_conn_params* %81, %struct.hci_conn_params** %13, align 8
  %82 = load %struct.hci_conn_params*, %struct.hci_conn_params** %13, align 8
  %83 = icmp ne %struct.hci_conn_params* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.hci_conn_params*, %struct.hci_conn_params** %13, align 8
  %87 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.hci_conn_params*, %struct.hci_conn_params** %13, align 8
  %90 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.hci_conn_params*, %struct.hci_conn_params** %13, align 8
  %93 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.hci_conn_params*, %struct.hci_conn_params** %13, align 8
  %96 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  store i32 1, i32* %14, align 4
  br label %98

97:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %100 = call i32 @hci_dev_unlock(%struct.hci_dev* %99)
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %103 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %102, i32 0, i32 3
  %104 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %105 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @mgmt_new_conn_param(%struct.hci_dev* %101, i32* %103, i32 %106, i32 %107, i8* %108, i8* %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %98, %66
  %114 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %115 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 6
  store i32 %116, i32* %117, align 8
  %118 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %119 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 5
  store i32 %120, i32* %121, align 4
  %122 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %123 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 4
  store i32 %124, i32* %125, align 8
  %126 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %127 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load %struct.hci_ev_le_remote_conn_param_req*, %struct.hci_ev_le_remote_conn_param_req** %5, align 8
  %131 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, %struct.hci_ev_le_remote_conn_param_req* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 2
  store i32 %132, i32* %133, align 8
  %134 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, %struct.hci_cp_le_conn_param_req_reply* %6, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = load i32, i32* @HCI_OP_LE_CONN_PARAM_REQ_REPLY, align 4
  %138 = call i32 @hci_send_cmd(%struct.hci_dev* %136, i32 %137, i32 40, %struct.hci_cp_le_conn_param_req_reply* %6)
  br label %139

139:                                              ; preds = %113, %62, %51
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i8*) #1

declare dso_local void @send_conn_param_neg_reply(%struct.hci_dev*, i8*, i32) #1

declare dso_local i64 @hci_check_conn_params(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_new_conn_param(%struct.hci_dev*, i32*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_le_conn_param_req_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
