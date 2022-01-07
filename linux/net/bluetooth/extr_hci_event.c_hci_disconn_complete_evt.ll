; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_disconn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_disconn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_disconn_complete = type { i32, i64, i32 }
%struct.hci_conn_params = type { i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@BT_CLOSED = common dso_local global i32 0, align 4
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_FAILURE = common dso_local global i32 0, align 4
@MGMT_DEV_DISCONN_AUTH_FAILURE = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_CONN_FLUSH_KEY = common dso_local global i32 0, align 4
@HCI_ERROR_CONNECTION_TIMEOUT = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_disconn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_disconn_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_disconn_complete*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hci_conn_params*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hci_ev_disconn_complete*
  store %struct.hci_ev_disconn_complete* %15, %struct.hci_ev_disconn_complete** %5, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %20 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %27 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__le16_to_cpu(i32 %28)
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %25, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %8, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %158

34:                                               ; preds = %2
  %35 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %36 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 2
  %43 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %50 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @mgmt_disconnect_failed(%struct.hci_dev* %40, i32* %42, i64 %45, i32 %48, i64 %51)
  br label %158

53:                                               ; preds = %34
  %54 = load i32, i32* @BT_CLOSED, align 4
  %55 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %58 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 3
  %60 = call i32 @test_and_clear_bit(i32 %57, i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @HCI_CONN_AUTH_FAILURE, align 4
  %62 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 3
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* @MGMT_DEV_DISCONN_AUTH_FAILURE, align 8
  store i64 %67, i64* %6, align 8
  br label %73

68:                                               ; preds = %53
  %69 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %70 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @hci_to_mgmt_reason(i32 %71)
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %68, %66
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 2
  %77 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mgmt_device_disconnected(%struct.hci_dev* %74, i32* %76, i64 %79, i32 %82, i64 %83, i32 %84)
  %86 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ACL_LINK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %73
  %92 = load i32, i32* @HCI_CONN_FLUSH_KEY, align 4
  %93 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 3
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %100 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %99, i32 0, i32 2
  %101 = call i32 @hci_remove_link_key(%struct.hci_dev* %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %104 = call i32 @hci_req_update_scan(%struct.hci_dev* %103)
  br label %105

105:                                              ; preds = %102, %73
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %108 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %107, i32 0, i32 2
  %109 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %110 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %106, i32* %108, i32 %111)
  store %struct.hci_conn_params* %112, %struct.hci_conn_params** %7, align 8
  %113 = load %struct.hci_conn_params*, %struct.hci_conn_params** %7, align 8
  %114 = icmp ne %struct.hci_conn_params* %113, null
  br i1 %114, label %115, label %140

115:                                              ; preds = %105
  %116 = load %struct.hci_conn_params*, %struct.hci_conn_params** %7, align 8
  %117 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %138 [
    i32 128, label %119
    i32 129, label %127
    i32 130, label %127
  ]

119:                                              ; preds = %115
  %120 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %121 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HCI_ERROR_CONNECTION_TIMEOUT, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %139

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %115, %115, %126
  %128 = load %struct.hci_conn_params*, %struct.hci_conn_params** %7, align 8
  %129 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %128, i32 0, i32 1
  %130 = call i32 @list_del_init(i32* %129)
  %131 = load %struct.hci_conn_params*, %struct.hci_conn_params** %7, align 8
  %132 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %131, i32 0, i32 1
  %133 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %134 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %133, i32 0, i32 0
  %135 = call i32 @list_add(i32* %132, i32* %134)
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = call i32 @hci_update_background_scan(%struct.hci_dev* %136)
  br label %139

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138, %127, %125
  br label %140

140:                                              ; preds = %139, %105
  %141 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %142 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %10, align 8
  %144 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %145 = load %struct.hci_ev_disconn_complete*, %struct.hci_ev_disconn_complete** %5, align 8
  %146 = getelementptr inbounds %struct.hci_ev_disconn_complete, %struct.hci_ev_disconn_complete* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @hci_disconn_cfm(%struct.hci_conn* %144, i32 %147)
  %149 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %150 = call i32 @hci_conn_del(%struct.hci_conn* %149)
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @LE_LINK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %156 = call i32 @hci_req_reenable_advertising(%struct.hci_dev* %155)
  br label %157

157:                                              ; preds = %154, %140
  br label %158

158:                                              ; preds = %157, %39, %33
  %159 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %160 = call i32 @hci_dev_unlock(%struct.hci_dev* %159)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @mgmt_disconnect_failed(%struct.hci_dev*, i32*, i64, i32, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_to_mgmt_reason(i32) #1

declare dso_local i32 @mgmt_device_disconnected(%struct.hci_dev*, i32*, i64, i32, i64, i32) #1

declare dso_local i32 @hci_remove_link_key(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_req_update_scan(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @hci_disconn_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_req_reenable_advertising(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
