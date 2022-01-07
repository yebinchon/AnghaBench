; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pair_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pair_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_cp_pair_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mgmt_rp_pair_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)*, i32 }
%struct.hci_conn = type { i64, i64, i8*, i8*, i8* }
%struct.hci_conn_params = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_PAIR_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_IO_KEYBOARD_DISPLAY = common dso_local global i64 0, align 8
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@MGMT_STATUS_ALREADY_PAIRED = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@HCI_AT_DEDICATED_BONDING = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@HCI_AUTO_CONN_EXPLICIT = common dso_local global i64 0, align 8
@HCI_AUTO_CONN_DISABLED = common dso_local global i64 0, align 8
@HCI_LE_CONN_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_CONNECT_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pairing_complete_cb = common dso_local global i8* null, align 8
@le_pairing_complete_cb = common dso_local global i8* null, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @pair_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pair_device(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_pair_device*, align 8
  %11 = alloca %struct.mgmt_rp_pair_device, align 8
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hci_conn*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hci_conn_params*, align 8
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.mgmt_cp_pair_device*
  store %struct.mgmt_cp_pair_device* %21, %struct.mgmt_cp_pair_device** %10, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @memset(%struct.mgmt_rp_pair_device* %11, i32 0, i32 16)
  %24 = getelementptr inbounds %struct.mgmt_rp_pair_device, %struct.mgmt_rp_pair_device* %11, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %27 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @bacpy(i32* %25, i32* %28)
  %30 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %31 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mgmt_rp_pair_device, %struct.mgmt_rp_pair_device* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bdaddr_type_is_valid(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %4
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %48 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %49 = call i32 @mgmt_cmd_complete(%struct.sock* %43, i32 %46, i32 %47, i32 %48, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %49, i32* %5, align 4
  br label %282

50:                                               ; preds = %4
  %51 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %52 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMP_IO_KEYBOARD_DISPLAY, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %62 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %63 = call i32 @mgmt_cmd_complete(%struct.sock* %57, i32 %60, i32 %61, i32 %62, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %63, i32* %5, align 4
  br label %282

64:                                               ; preds = %50
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = call i32 @hci_dev_lock(%struct.hci_dev* %65)
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = call i32 @hdev_is_powered(%struct.hci_dev* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %76 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %77 = call i32 @mgmt_cmd_complete(%struct.sock* %71, i32 %74, i32 %75, i32 %76, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %77, i32* %16, align 4
  br label %278

78:                                               ; preds = %64
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %81 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %84 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @hci_bdaddr_is_paired(%struct.hci_dev* %79, i32* %82, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %95 = load i32, i32* @MGMT_STATUS_ALREADY_PAIRED, align 4
  %96 = call i32 @mgmt_cmd_complete(%struct.sock* %90, i32 %93, i32 %94, i32 %95, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %96, i32* %16, align 4
  br label %278

97:                                               ; preds = %78
  %98 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* @HCI_AT_DEDICATED_BONDING, align 4
  store i32 %99, i32* %14, align 4
  %100 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %101 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BDADDR_BREDR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %97
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %109 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call %struct.hci_conn* @hci_connect_acl(%struct.hci_dev* %107, i32* %110, i32 %111, i32 %112)
  store %struct.hci_conn* %113, %struct.hci_conn** %15, align 8
  br label %144

114:                                              ; preds = %97
  %115 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %116 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @le_addr_type(i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %121 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %122 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %17, align 4
  %125 = call %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev* %120, i32* %123, i32 %124)
  store %struct.hci_conn_params* %125, %struct.hci_conn_params** %18, align 8
  %126 = load %struct.hci_conn_params*, %struct.hci_conn_params** %18, align 8
  %127 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @HCI_AUTO_CONN_EXPLICIT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %114
  %132 = load i64, i64* @HCI_AUTO_CONN_DISABLED, align 8
  %133 = load %struct.hci_conn_params*, %struct.hci_conn_params** %18, align 8
  %134 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %114
  %136 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %137 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %138 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @HCI_LE_CONN_TIMEOUT, align 4
  %143 = call %struct.hci_conn* @hci_connect_le_scan(%struct.hci_dev* %136, i32* %139, i32 %140, i32 %141, i32 %142)
  store %struct.hci_conn* %143, %struct.hci_conn** %15, align 8
  br label %144

144:                                              ; preds = %135, %106
  %145 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %146 = call i64 @IS_ERR(%struct.hci_conn* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %144
  %149 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %150 = call i32 @PTR_ERR(%struct.hci_conn* %149)
  %151 = load i32, i32* @EBUSY, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  store i32 %155, i32* %19, align 4
  br label %176

156:                                              ; preds = %148
  %157 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %158 = call i32 @PTR_ERR(%struct.hci_conn* %157)
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  store i32 %163, i32* %19, align 4
  br label %175

164:                                              ; preds = %156
  %165 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %166 = call i32 @PTR_ERR(%struct.hci_conn* %165)
  %167 = load i32, i32* @ECONNREFUSED, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  store i32 %171, i32* %19, align 4
  br label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @MGMT_STATUS_CONNECT_FAILED, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175, %154
  %177 = load %struct.sock*, %struct.sock** %6, align 8
  %178 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %179 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @mgmt_cmd_complete(%struct.sock* %177, i32 %180, i32 %181, i32 %182, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %183, i32* %16, align 4
  br label %278

184:                                              ; preds = %144
  %185 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %186 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %191 = call i32 @hci_conn_drop(%struct.hci_conn* %190)
  %192 = load %struct.sock*, %struct.sock** %6, align 8
  %193 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %194 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %197 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %198 = call i32 @mgmt_cmd_complete(%struct.sock* %192, i32 %195, i32 %196, i32 %197, %struct.mgmt_rp_pair_device* %11, i32 16)
  store i32 %198, i32* %16, align 4
  br label %278

199:                                              ; preds = %184
  %200 = load %struct.sock*, %struct.sock** %6, align 8
  %201 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %202 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %200, i32 %201, %struct.hci_dev* %202, i8* %203, i32 %204)
  store %struct.mgmt_pending_cmd* %205, %struct.mgmt_pending_cmd** %12, align 8
  %206 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %207 = icmp ne %struct.mgmt_pending_cmd* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %16, align 4
  %211 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %212 = call i32 @hci_conn_drop(%struct.hci_conn* %211)
  br label %278

213:                                              ; preds = %199
  %214 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %215 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %214, i32 0, i32 0
  store i32 (%struct.mgmt_pending_cmd*, i32)* @pairing_complete, i32 (%struct.mgmt_pending_cmd*, i32)** %215, align 8
  %216 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %217 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @BDADDR_BREDR, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %213
  %223 = load i8*, i8** @pairing_complete_cb, align 8
  %224 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %225 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %224, i32 0, i32 4
  store i8* %223, i8** %225, align 8
  %226 = load i8*, i8** @pairing_complete_cb, align 8
  %227 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %228 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %227, i32 0, i32 3
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** @pairing_complete_cb, align 8
  %230 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %231 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  br label %242

232:                                              ; preds = %213
  %233 = load i8*, i8** @le_pairing_complete_cb, align 8
  %234 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %235 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  %236 = load i8*, i8** @le_pairing_complete_cb, align 8
  %237 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %238 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %237, i32 0, i32 3
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** @le_pairing_complete_cb, align 8
  %240 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %241 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  br label %242

242:                                              ; preds = %232, %222
  %243 = load %struct.mgmt_cp_pair_device*, %struct.mgmt_cp_pair_device** %10, align 8
  %244 = getelementptr inbounds %struct.mgmt_cp_pair_device, %struct.mgmt_cp_pair_device* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %247 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %249 = call i32 @hci_conn_get(%struct.hci_conn* %248)
  %250 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %251 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  %252 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %253 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @BT_CONNECTED, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %263, label %257

257:                                              ; preds = %242
  %258 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %259 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @BT_CONFIG, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %257, %242
  %264 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = call i64 @hci_conn_security(%struct.hci_conn* %264, i32 %265, i32 %266, i32 1)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %263
  %270 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %271 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %270, i32 0, i32 0
  %272 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %271, align 8
  %273 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %274 = call i32 %272(%struct.mgmt_pending_cmd* %273, i32 0)
  %275 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %276 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %275)
  br label %277

277:                                              ; preds = %269, %263, %257
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %277, %208, %189, %176, %89, %70
  %279 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %280 = call i32 @hci_dev_unlock(%struct.hci_dev* %279)
  %281 = load i32, i32* %16, align 4
  store i32 %281, i32* %5, align 4
  br label %282

282:                                              ; preds = %278, %56, %42
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @memset(%struct.mgmt_rp_pair_device*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_pair_device*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_bdaddr_is_paired(%struct.hci_dev*, i32*, i64) #1

declare dso_local %struct.hci_conn* @hci_connect_acl(%struct.hci_dev*, i32*, i32, i32) #1

declare dso_local i32 @le_addr_type(i64) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn* @hci_connect_le_scan(%struct.hci_dev*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.hci_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @pairing_complete(%struct.mgmt_pending_cmd*, i32) #1

declare dso_local i32 @hci_conn_get(%struct.hci_conn*) #1

declare dso_local i64 @hci_conn_security(%struct.hci_conn*, i32, i32, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
