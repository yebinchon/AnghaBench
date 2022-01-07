; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_ext_features_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_ext_features_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_ext_features = type { i64, i32*, i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32* }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_cp_remote_name_req = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_MAX_PAGES = common dso_local global i64 0, align 8
@LMP_HOST_SSP = common dso_local global i32 0, align 4
@HCI_CONN_SSP_ENABLED = common dso_local global i32 0, align 4
@LMP_HOST_SC = common dso_local global i32 0, align 4
@HCI_CONN_SC_ENABLED = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_NAME_REQ = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_ext_features_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_ext_features_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_ext_features*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.inquiry_entry*, align 8
  %8 = alloca %struct.hci_cp_remote_name_req, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_remote_ext_features*
  store %struct.hci_ev_remote_ext_features* %13, %struct.hci_ev_remote_ext_features** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %20, i32 %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = icmp ne %struct.hci_conn* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %166

29:                                               ; preds = %2
  %30 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HCI_MAX_PAGES, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %40 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %45 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @memcpy(i32 %43, i32* %46, i32 8)
  br label %48

48:                                               ; preds = %35, %29
  %49 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %50 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %110, label %53

53:                                               ; preds = %48
  %54 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %55 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %110

58:                                               ; preds = %53
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 2
  %62 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %59, i32* %61)
  store %struct.inquiry_entry* %62, %struct.inquiry_entry** %7, align 8
  %63 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %64 = icmp ne %struct.inquiry_entry* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %67 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LMP_HOST_SSP, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %74 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %58
  %77 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %78 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LMP_HOST_SSP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* @HCI_CONN_SSP_ENABLED, align 4
  %87 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %88 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  br label %95

90:                                               ; preds = %76
  %91 = load i32, i32* @HCI_CONN_SSP_ENABLED, align 4
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 1
  %94 = call i32 @clear_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %97 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @LMP_HOST_SC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load i32, i32* @HCI_CONN_SC_ENABLED, align 4
  %106 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 1
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %95
  br label %110

110:                                              ; preds = %109, %53, %48
  %111 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %112 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BT_CONFIG, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %166

117:                                              ; preds = %110
  %118 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %119 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %124 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %125 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %124, i32 0, i32 1
  %126 = call i32 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %122
  %129 = call i32 @memset(%struct.hci_cp_remote_name_req* %8, i32 0, i32 8)
  %130 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %8, i32 0, i32 1
  %131 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %132 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %131, i32 0, i32 2
  %133 = call i32 @bacpy(i32* %130, i32* %132)
  %134 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %8, i32 0, i32 0
  store i32 2, i32* %134, align 4
  %135 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %136 = load i32, i32* @HCI_OP_REMOTE_NAME_REQ, align 4
  %137 = call i32 @hci_send_cmd(%struct.hci_dev* %135, i32 %136, i32 8, %struct.hci_cp_remote_name_req* %8)
  br label %149

138:                                              ; preds = %122, %117
  %139 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %140 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %141 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %140, i32 0, i32 1
  %142 = call i32 @test_and_set_bit(i32 %139, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %146 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %147 = call i32 @mgmt_device_connected(%struct.hci_dev* %145, %struct.hci_conn* %146, i32 0, i32* null, i32 0)
  br label %148

148:                                              ; preds = %144, %138
  br label %149

149:                                              ; preds = %148, %128
  %150 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %151 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %152 = call i32 @hci_outgoing_auth_needed(%struct.hci_dev* %150, %struct.hci_conn* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* @BT_CONNECTED, align 8
  %156 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %157 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %159 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %160 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @hci_connect_cfm(%struct.hci_conn* %158, i32 %161)
  %163 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %164 = call i32 @hci_conn_drop(%struct.hci_conn* %163)
  br label %165

165:                                              ; preds = %154, %149
  br label %166

166:                                              ; preds = %165, %116, %28
  %167 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %168 = call i32 @hci_dev_unlock(%struct.hci_dev* %167)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.hci_cp_remote_name_req*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_remote_name_req*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_device_connected(%struct.hci_dev*, %struct.hci_conn*, i32, i32*, i32) #1

declare dso_local i32 @hci_outgoing_auth_needed(%struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
