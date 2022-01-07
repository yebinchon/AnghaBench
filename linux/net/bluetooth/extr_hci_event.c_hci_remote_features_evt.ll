; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_features_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_features_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, i32*, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_features = type { i32, i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32*, i32 }
%struct.hci_cp_read_remote_ext_features = type { i32, i32, i32, i32 }
%struct.hci_cp_remote_name_req = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_OP_READ_REMOTE_EXT_FEATURES = common dso_local global i32 0, align 4
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_NAME_REQ = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_features_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_features_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_features*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_read_remote_ext_features, align 4
  %8 = alloca %struct.hci_cp_remote_name_req, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_remote_features*
  store %struct.hci_ev_remote_features* %13, %struct.hci_ev_remote_features** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %18 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le16_to_cpu(i32 %26)
  %28 = call %struct.hci_dev* @hci_conn_hash_lookup_handle(%struct.hci_dev* %23, i32 %27)
  %29 = bitcast %struct.hci_dev* %28 to %struct.hci_conn*
  store %struct.hci_conn* %29, %struct.hci_conn** %6, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %31 = icmp ne %struct.hci_conn* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %132

33:                                               ; preds = %2
  %34 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %35 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %45 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %46, i32 8)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BT_CONFIG, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %132

55:                                               ; preds = %48
  %56 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %57 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %55
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = call i64 @lmp_ext_feat_capable(%struct.hci_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %66 = bitcast %struct.hci_conn* %65 to %struct.hci_dev*
  %67 = call i64 @lmp_ext_feat_capable(%struct.hci_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %71 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.hci_cp_read_remote_ext_features, %struct.hci_cp_read_remote_ext_features* %7, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.hci_cp_read_remote_ext_features, %struct.hci_cp_read_remote_ext_features* %7, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = load i32, i32* @HCI_OP_READ_REMOTE_EXT_FEATURES, align 4
  %77 = bitcast %struct.hci_cp_read_remote_ext_features* %7 to %struct.hci_cp_remote_name_req*
  %78 = call i32 @hci_send_cmd(%struct.hci_dev* %75, i32 %76, i32 16, %struct.hci_cp_remote_name_req* %77)
  br label %132

79:                                               ; preds = %64, %60, %55
  %80 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %81 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %86 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 1
  %88 = call i32 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = call i32 @memset(%struct.hci_cp_remote_name_req* %8, i32 0, i32 16)
  %92 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %8, i32 0, i32 2
  %93 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 2
  %95 = call i32 @bacpy(i32* %92, i32* %94)
  %96 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %8, i32 0, i32 1
  store i32 2, i32* %96, align 4
  %97 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %98 = load i32, i32* @HCI_OP_REMOTE_NAME_REQ, align 4
  %99 = call i32 @hci_send_cmd(%struct.hci_dev* %97, i32 %98, i32 16, %struct.hci_cp_remote_name_req* %8)
  br label %112

100:                                              ; preds = %84, %79
  %101 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %102 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %103 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %102, i32 0, i32 1
  %104 = call i32 @test_and_set_bit(i32 %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %108 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %109 = bitcast %struct.hci_conn* %108 to %struct.hci_dev*
  %110 = call i32 @mgmt_device_connected(%struct.hci_dev* %107, %struct.hci_dev* %109, i32 0, i32* null, i32 0)
  br label %111

111:                                              ; preds = %106, %100
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %114 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %115 = bitcast %struct.hci_conn* %114 to %struct.hci_dev*
  %116 = call i32 @hci_outgoing_auth_needed(%struct.hci_dev* %113, %struct.hci_dev* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* @BT_CONNECTED, align 8
  %120 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %121 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %123 = bitcast %struct.hci_conn* %122 to %struct.hci_dev*
  %124 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %125 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @hci_connect_cfm(%struct.hci_dev* %123, i32 %126)
  %128 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %129 = bitcast %struct.hci_conn* %128 to %struct.hci_dev*
  %130 = call i32 @hci_conn_drop(%struct.hci_dev* %129)
  br label %131

131:                                              ; preds = %118, %112
  br label %132

132:                                              ; preds = %131, %69, %54, %32
  %133 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %134 = call i32 @hci_dev_unlock(%struct.hci_dev* %133)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_dev* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @lmp_ext_feat_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_remote_name_req*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.hci_cp_remote_name_req*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_device_connected(%struct.hci_dev*, %struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i32 @hci_outgoing_auth_needed(%struct.hci_dev*, %struct.hci_dev*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
