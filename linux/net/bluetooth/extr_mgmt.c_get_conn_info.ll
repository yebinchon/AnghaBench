; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_conn_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_conn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i64, i32, i64, i32 }
%struct.mgmt_cp_get_conn_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mgmt_rp_get_conn_info = type { i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hci_conn = type { i64, i64, i64, i32, i64, i32 }
%struct.hci_request = type { i32 }
%struct.hci_cp_read_tx_power = type { i32, i8* }
%struct.hci_cp_read_rssi = type { i32, i8* }
%struct.mgmt_pending_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_GET_CONN_INFO = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@MGMT_STATUS_NOT_CONNECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HCI_OP_READ_RSSI = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i64 0, align 8
@HCI_OP_READ_TX_POWER = common dso_local global i32 0, align 4
@conn_info_refresh_complete = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@conn_info_cmd_complete = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @get_conn_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_conn_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_get_conn_info*, align 8
  %11 = alloca %struct.mgmt_rp_get_conn_info, align 8
  %12 = alloca %struct.hci_conn*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hci_request, align 4
  %16 = alloca %struct.hci_cp_read_tx_power, align 8
  %17 = alloca %struct.hci_cp_read_rssi, align 8
  %18 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.mgmt_cp_get_conn_info*
  store %struct.mgmt_cp_get_conn_info* %20, %struct.mgmt_cp_get_conn_info** %10, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @memset(%struct.mgmt_rp_get_conn_info* %11, i32 0, i32 40)
  %26 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %11, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %29 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @bacpy(i32* %27, i32* %30)
  %32 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %33 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %11, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %39 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bdaddr_type_is_valid(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %4
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %50 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %51 = call i32 @mgmt_cmd_complete(%struct.sock* %45, i32 %48, i32 %49, i32 %50, %struct.mgmt_rp_get_conn_info* %11, i32 40)
  store i32 %51, i32* %5, align 4
  br label %248

52:                                               ; preds = %4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %54 = call i32 @hci_dev_lock(%struct.hci_dev* %53)
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = call i32 @hdev_is_powered(%struct.hci_dev* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %64 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %65 = call i32 @mgmt_cmd_complete(%struct.sock* %59, i32 %62, i32 %63, i32 %64, %struct.mgmt_rp_get_conn_info* %11, i32 40)
  store i32 %65, i32* %14, align 4
  br label %244

66:                                               ; preds = %52
  %67 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %68 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BDADDR_BREDR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %75 = load i32, i32* @ACL_LINK, align 4
  %76 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %77 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %74, i32 %75, i32* %78)
  store %struct.hci_conn* %79, %struct.hci_conn** %12, align 8
  br label %87

80:                                               ; preds = %66
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = load i32, i32* @LE_LINK, align 4
  %83 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %84 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %81, i32 %82, i32* %85)
  store %struct.hci_conn* %86, %struct.hci_conn** %12, align 8
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %89 = icmp ne %struct.hci_conn* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %92 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BT_CONNECTED, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90, %87
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %102 = load i32, i32* @MGMT_STATUS_NOT_CONNECTED, align 4
  %103 = call i32 @mgmt_cmd_complete(%struct.sock* %97, i32 %100, i32 %101, i32 %102, %struct.mgmt_rp_get_conn_info* %11, i32 40)
  store i32 %103, i32* %14, align 4
  br label %244

104:                                              ; preds = %90
  %105 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %106 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %107 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %108 = call i64 @pending_find_data(i32 %105, %struct.hci_dev* %106, %struct.hci_conn* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %116 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %117 = call i32 @mgmt_cmd_complete(%struct.sock* %111, i32 %114, i32 %115, i32 %116, %struct.mgmt_rp_get_conn_info* %11, i32 40)
  store i32 %117, i32* %14, align 4
  br label %244

118:                                              ; preds = %104
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %123 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %126 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %124, %127
  %129 = call i64 @prandom_u32_max(i64 %128)
  %130 = add i64 %121, %129
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* @jiffies, align 8
  %132 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %133 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @msecs_to_jiffies(i64 %135)
  %137 = add nsw i64 %134, %136
  %138 = call i64 @time_after(i64 %131, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %118
  %141 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %142 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %223, label %145

145:                                              ; preds = %140, %118
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = call i32 @hci_req_init(%struct.hci_request* %15, %struct.hci_dev* %146)
  %148 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %149 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @cpu_to_le16(i32 %150)
  %152 = getelementptr inbounds %struct.hci_cp_read_rssi, %struct.hci_cp_read_rssi* %17, i32 0, i32 1
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* @HCI_OP_READ_RSSI, align 4
  %154 = bitcast %struct.hci_cp_read_rssi* %17 to %struct.hci_cp_read_tx_power*
  %155 = call i32 @hci_req_add(%struct.hci_request* %15, i32 %153, i32 16, %struct.hci_cp_read_tx_power* %154)
  %156 = load %struct.mgmt_cp_get_conn_info*, %struct.mgmt_cp_get_conn_info** %10, align 8
  %157 = getelementptr inbounds %struct.mgmt_cp_get_conn_info, %struct.mgmt_cp_get_conn_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @bdaddr_type_is_le(i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %145
  %163 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %164 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @HCI_TX_POWER_INVALID, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %162, %145
  %169 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %170 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = getelementptr inbounds %struct.hci_cp_read_tx_power, %struct.hci_cp_read_tx_power* %16, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = getelementptr inbounds %struct.hci_cp_read_tx_power, %struct.hci_cp_read_tx_power* %16, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load i32, i32* @HCI_OP_READ_TX_POWER, align 4
  %176 = call i32 @hci_req_add(%struct.hci_request* %15, i32 %175, i32 16, %struct.hci_cp_read_tx_power* %16)
  br label %177

177:                                              ; preds = %168, %162
  %178 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %179 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @HCI_TX_POWER_INVALID, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %185 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = getelementptr inbounds %struct.hci_cp_read_tx_power, %struct.hci_cp_read_tx_power* %16, i32 0, i32 1
  store i8* %187, i8** %188, align 8
  %189 = getelementptr inbounds %struct.hci_cp_read_tx_power, %struct.hci_cp_read_tx_power* %16, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load i32, i32* @HCI_OP_READ_TX_POWER, align 4
  %191 = call i32 @hci_req_add(%struct.hci_request* %15, i32 %190, i32 16, %struct.hci_cp_read_tx_power* %16)
  br label %192

192:                                              ; preds = %183, %177
  %193 = load i32, i32* @conn_info_refresh_complete, align 4
  %194 = call i32 @hci_req_run(%struct.hci_request* %15, i32 %193)
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %14, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %244

198:                                              ; preds = %192
  %199 = load %struct.sock*, %struct.sock** %6, align 8
  %200 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %201 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %202 = load i8*, i8** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %199, i32 %200, %struct.hci_dev* %201, i8* %202, i32 %203)
  store %struct.mgmt_pending_cmd* %204, %struct.mgmt_pending_cmd** %18, align 8
  %205 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %18, align 8
  %206 = icmp ne %struct.mgmt_pending_cmd* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %198
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %14, align 4
  br label %244

210:                                              ; preds = %198
  %211 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %212 = call i32 @hci_conn_hold(%struct.hci_conn* %211)
  %213 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %214 = call i32 @hci_conn_get(%struct.hci_conn* %213)
  %215 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %18, align 8
  %216 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @conn_info_cmd_complete, align 4
  %218 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %18, align 8
  %219 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  %220 = load i64, i64* @jiffies, align 8
  %221 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %222 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %221, i32 0, i32 4
  store i64 %220, i64* %222, align 8
  br label %243

223:                                              ; preds = %140
  %224 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %225 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %11, i32 0, i32 2
  store i32 %226, i32* %227, align 8
  %228 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %229 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %11, i32 0, i32 0
  store i64 %230, i64* %231, align 8
  %232 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %233 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, %struct.mgmt_rp_get_conn_info* %11, i32 0, i32 1
  store i64 %234, i64* %235, align 8
  %236 = load %struct.sock*, %struct.sock** %6, align 8
  %237 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %238 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @MGMT_OP_GET_CONN_INFO, align 4
  %241 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %242 = call i32 @mgmt_cmd_complete(%struct.sock* %236, i32 %239, i32 %240, i32 %241, %struct.mgmt_rp_get_conn_info* %11, i32 40)
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %223, %210
  br label %244

244:                                              ; preds = %243, %207, %197, %110, %96, %58
  %245 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %246 = call i32 @hci_dev_unlock(%struct.hci_dev* %245)
  %247 = load i32, i32* %14, align 4
  store i32 %247, i32* %5, align 4
  br label %248

248:                                              ; preds = %244, %44
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @memset(%struct.mgmt_rp_get_conn_info*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_get_conn_info*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i64 @pending_find_data(i32, %struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i64 @prandom_u32_max(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_read_tx_power*) #1

declare dso_local i32 @bdaddr_type_is_le(i64) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_get(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
