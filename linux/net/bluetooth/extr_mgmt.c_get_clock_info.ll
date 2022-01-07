; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_cp_get_clock_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mgmt_rp_get_clock_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hci_cp_read_clock = type { i32, i32, %struct.TYPE_3__ }
%struct.mgmt_pending_cmd = type { i32, i32 }
%struct.hci_request = type { i32 }
%struct.hci_conn = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BDADDR_BREDR = common dso_local global i64 0, align 8
@MGMT_OP_GET_CLOCK_INFO = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@MGMT_STATUS_NOT_CONNECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clock_info_cmd_complete = common dso_local global i32 0, align 4
@HCI_OP_READ_CLOCK = common dso_local global i32 0, align 4
@get_clock_info_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @get_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_get_clock_info*, align 8
  %11 = alloca %struct.mgmt_rp_get_clock_info, align 8
  %12 = alloca %struct.hci_cp_read_clock, align 8
  %13 = alloca %struct.mgmt_pending_cmd*, align 8
  %14 = alloca %struct.hci_request, align 4
  %15 = alloca %struct.hci_conn*, align 8
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.mgmt_cp_get_clock_info*
  store %struct.mgmt_cp_get_clock_info* %18, %struct.mgmt_cp_get_clock_info** %10, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @memset(%struct.mgmt_rp_get_clock_info* %11, i32 0, i32 24)
  %24 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %11, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.mgmt_cp_get_clock_info*, %struct.mgmt_cp_get_clock_info** %10, align 8
  %27 = getelementptr inbounds %struct.mgmt_cp_get_clock_info, %struct.mgmt_cp_get_clock_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @bacpy(i32* %25, i32* %28)
  %30 = load %struct.mgmt_cp_get_clock_info*, %struct.mgmt_cp_get_clock_info** %10, align 8
  %31 = getelementptr inbounds %struct.mgmt_cp_get_clock_info, %struct.mgmt_cp_get_clock_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %11, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mgmt_cp_get_clock_info*, %struct.mgmt_cp_get_clock_info** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_cp_get_clock_info, %struct.mgmt_cp_get_clock_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BDADDR_BREDR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MGMT_OP_GET_CLOCK_INFO, align 4
  %48 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %49 = call i32 @mgmt_cmd_complete(%struct.sock* %43, i32 %46, i32 %47, i32 %48, %struct.mgmt_rp_get_clock_info* %11, i32 24)
  store i32 %49, i32* %5, align 4
  br label %150

50:                                               ; preds = %4
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = call i32 @hci_dev_lock(%struct.hci_dev* %51)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %54 = call i32 @hdev_is_powered(%struct.hci_dev* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGMT_OP_GET_CLOCK_INFO, align 4
  %62 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %63 = call i32 @mgmt_cmd_complete(%struct.sock* %57, i32 %60, i32 %61, i32 %62, %struct.mgmt_rp_get_clock_info* %11, i32 24)
  store i32 %63, i32* %16, align 4
  br label %146

64:                                               ; preds = %50
  %65 = load %struct.mgmt_cp_get_clock_info*, %struct.mgmt_cp_get_clock_info** %10, align 8
  %66 = getelementptr inbounds %struct.mgmt_cp_get_clock_info, %struct.mgmt_cp_get_clock_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* @BDADDR_ANY, align 4
  %69 = call i64 @bacmp(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %73 = load i32, i32* @ACL_LINK, align 4
  %74 = load %struct.mgmt_cp_get_clock_info*, %struct.mgmt_cp_get_clock_info** %10, align 8
  %75 = getelementptr inbounds %struct.mgmt_cp_get_clock_info, %struct.mgmt_cp_get_clock_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %72, i32 %73, i32* %76)
  store %struct.hci_conn* %77, %struct.hci_conn** %15, align 8
  %78 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %79 = icmp ne %struct.hci_conn* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %82 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BT_CONNECTED, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80, %71
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MGMT_OP_GET_CLOCK_INFO, align 4
  %92 = load i32, i32* @MGMT_STATUS_NOT_CONNECTED, align 4
  %93 = call i32 @mgmt_cmd_complete(%struct.sock* %87, i32 %90, i32 %91, i32 %92, %struct.mgmt_rp_get_clock_info* %11, i32 24)
  store i32 %93, i32* %16, align 4
  br label %146

94:                                               ; preds = %80
  br label %96

95:                                               ; preds = %64
  store %struct.hci_conn* null, %struct.hci_conn** %15, align 8
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = load i32, i32* @MGMT_OP_GET_CLOCK_INFO, align 4
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %97, i32 %98, %struct.hci_dev* %99, i8* %100, i32 %101)
  store %struct.mgmt_pending_cmd* %102, %struct.mgmt_pending_cmd** %13, align 8
  %103 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %104 = icmp ne %struct.mgmt_pending_cmd* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %16, align 4
  br label %146

108:                                              ; preds = %96
  %109 = load i32, i32* @clock_info_cmd_complete, align 4
  %110 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %111 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %113 = call i32 @hci_req_init(%struct.hci_request* %14, %struct.hci_dev* %112)
  %114 = bitcast %struct.hci_cp_read_clock* %12 to %struct.mgmt_rp_get_clock_info*
  %115 = call i32 @memset(%struct.mgmt_rp_get_clock_info* %114, i32 0, i32 24)
  %116 = load i32, i32* @HCI_OP_READ_CLOCK, align 4
  %117 = bitcast %struct.hci_cp_read_clock* %12 to %struct.mgmt_rp_get_clock_info*
  %118 = call i32 @hci_req_add(%struct.hci_request* %14, i32 %116, i32 24, %struct.mgmt_rp_get_clock_info* %117)
  %119 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %120 = icmp ne %struct.hci_conn* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %108
  %122 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %123 = call i32 @hci_conn_hold(%struct.hci_conn* %122)
  %124 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %125 = call i32 @hci_conn_get(%struct.hci_conn* %124)
  %126 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %127 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %129 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @cpu_to_le16(i32 %130)
  %132 = getelementptr inbounds %struct.hci_cp_read_clock, %struct.hci_cp_read_clock* %12, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.hci_cp_read_clock, %struct.hci_cp_read_clock* %12, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i32, i32* @HCI_OP_READ_CLOCK, align 4
  %135 = bitcast %struct.hci_cp_read_clock* %12 to %struct.mgmt_rp_get_clock_info*
  %136 = call i32 @hci_req_add(%struct.hci_request* %14, i32 %134, i32 24, %struct.mgmt_rp_get_clock_info* %135)
  br label %137

137:                                              ; preds = %121, %108
  %138 = load i32, i32* @get_clock_info_complete, align 4
  %139 = call i32 @hci_req_run(%struct.hci_request* %14, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %144 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %143)
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145, %105, %86, %56
  %147 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %148 = call i32 @hci_dev_unlock(%struct.hci_dev* %147)
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %42
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @memset(%struct.mgmt_rp_get_clock_info*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_get_clock_info*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @bacmp(i32*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.mgmt_rp_get_clock_info*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_get(%struct.hci_conn*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
