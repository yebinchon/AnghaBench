; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_unpair_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_unpair_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_cp_unpair_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mgmt_rp_unpair_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hci_conn_params = type { i32, i64 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_conn = type { i32 }

@MGMT_OP_UNPAIR_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_PAIRED = common dso_local global i32 0, align 4
@HCI_CONN_PARAM_REMOVAL_PEND = common dso_local global i32 0, align 4
@HCI_AUTO_CONN_EXPLICIT = common dso_local global i32 0, align 4
@HCI_AUTO_CONN_DISABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@addr_cmd_complete = common dso_local global i32 0, align 4
@HCI_ERROR_REMOTE_USER_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @unpair_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpair_device(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_unpair_device*, align 8
  %11 = alloca %struct.mgmt_rp_unpair_device, align 8
  %12 = alloca %struct.hci_conn_params*, align 8
  %13 = alloca %struct.mgmt_pending_cmd*, align 8
  %14 = alloca %struct.hci_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.mgmt_cp_unpair_device*
  store %struct.mgmt_cp_unpair_device* %18, %struct.mgmt_cp_unpair_device** %10, align 8
  %19 = call i32 @memset(%struct.mgmt_rp_unpair_device* %11, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.mgmt_rp_unpair_device, %struct.mgmt_rp_unpair_device* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %23 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @bacpy(i32* %21, i32* %24)
  %26 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %27 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.mgmt_rp_unpair_device, %struct.mgmt_rp_unpair_device* %11, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %33 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @bdaddr_type_is_valid(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %4
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %44 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %45 = call i32 @mgmt_cmd_complete(%struct.sock* %39, i32 %42, i32 %43, i32 %44, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %45, i32* %5, align 4
  br label %235

46:                                               ; preds = %4
  %47 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %48 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %53 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %62 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %63 = call i32 @mgmt_cmd_complete(%struct.sock* %57, i32 %60, i32 %61, i32 %62, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %63, i32* %5, align 4
  br label %235

64:                                               ; preds = %51, %46
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
  %75 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %76 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %77 = call i32 @mgmt_cmd_complete(%struct.sock* %71, i32 %74, i32 %75, i32 %76, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %77, i32* %16, align 4
  br label %231

78:                                               ; preds = %64
  %79 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %80 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BDADDR_BREDR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %78
  %86 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %87 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = load i32, i32* @ACL_LINK, align 4
  %93 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %94 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %91, i32 %92, i32* %95)
  store %struct.hci_conn* %96, %struct.hci_conn** %14, align 8
  br label %98

97:                                               ; preds = %85
  store %struct.hci_conn* null, %struct.hci_conn** %14, align 8
  br label %98

98:                                               ; preds = %97, %90
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %101 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = call i32 @hci_remove_link_key(%struct.hci_dev* %99, i32* %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %112 = load i32, i32* @MGMT_STATUS_NOT_PAIRED, align 4
  %113 = call i32 @mgmt_cmd_complete(%struct.sock* %107, i32 %110, i32 %111, i32 %112, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %113, i32* %16, align 4
  br label %231

114:                                              ; preds = %98
  br label %187

115:                                              ; preds = %78
  %116 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %117 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @le_addr_type(i64 %119)
  store i32 %120, i32* %15, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %122 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %123 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @smp_cancel_and_remove_pairing(%struct.hci_dev* %121, i32* %124, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %115
  %130 = load %struct.sock*, %struct.sock** %6, align 8
  %131 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %135 = load i32, i32* @MGMT_STATUS_NOT_PAIRED, align 4
  %136 = call i32 @mgmt_cmd_complete(%struct.sock* %130, i32 %133, i32 %134, i32 %135, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %136, i32* %16, align 4
  br label %231

137:                                              ; preds = %115
  %138 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %139 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %140 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %15, align 4
  %143 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %138, i32* %141, i32 %142)
  store %struct.hci_conn* %143, %struct.hci_conn** %14, align 8
  %144 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %145 = icmp ne %struct.hci_conn* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %137
  %147 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %148 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %149 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @hci_conn_params_del(%struct.hci_dev* %147, i32* %150, i32 %151)
  br label %187

153:                                              ; preds = %137
  %154 = load i32, i32* @HCI_CONN_PARAM_REMOVAL_PEND, align 4
  %155 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %156 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %155, i32 0, i32 0
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  %158 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %159 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %160 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %15, align 4
  %163 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %158, i32* %161, i32 %162)
  store %struct.hci_conn_params* %163, %struct.hci_conn_params** %12, align 8
  %164 = load %struct.hci_conn_params*, %struct.hci_conn_params** %12, align 8
  %165 = icmp ne %struct.hci_conn_params* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %153
  %167 = load %struct.hci_conn_params*, %struct.hci_conn_params** %12, align 8
  %168 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @HCI_AUTO_CONN_EXPLICIT, align 4
  %173 = load %struct.hci_conn_params*, %struct.hci_conn_params** %12, align 8
  %174 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %179

175:                                              ; preds = %166
  %176 = load i32, i32* @HCI_AUTO_CONN_DISABLED, align 4
  %177 = load %struct.hci_conn_params*, %struct.hci_conn_params** %12, align 8
  %178 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %182 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  store %struct.hci_conn* null, %struct.hci_conn** %14, align 8
  br label %186

186:                                              ; preds = %185, %180
  br label %187

187:                                              ; preds = %186, %146, %114
  %188 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %189 = icmp ne %struct.hci_conn* %188, null
  br i1 %189, label %207, label %190

190:                                              ; preds = %187
  %191 = load %struct.sock*, %struct.sock** %6, align 8
  %192 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %193 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %196 = call i32 @mgmt_cmd_complete(%struct.sock* %191, i32 %194, i32 %195, i32 0, %struct.mgmt_rp_unpair_device* %11, i32 16)
  store i32 %196, i32* %16, align 4
  %197 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %198 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %199 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %202 = getelementptr inbounds %struct.mgmt_cp_unpair_device, %struct.mgmt_cp_unpair_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.sock*, %struct.sock** %6, align 8
  %206 = call i32 @device_unpaired(%struct.hci_dev* %197, i32* %200, i64 %204, %struct.sock* %205)
  br label %231

207:                                              ; preds = %187
  %208 = load %struct.sock*, %struct.sock** %6, align 8
  %209 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %210 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %211 = load %struct.mgmt_cp_unpair_device*, %struct.mgmt_cp_unpair_device** %10, align 8
  %212 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %208, i32 %209, %struct.hci_dev* %210, %struct.mgmt_cp_unpair_device* %211, i32 24)
  store %struct.mgmt_pending_cmd* %212, %struct.mgmt_pending_cmd** %13, align 8
  %213 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %214 = icmp ne %struct.mgmt_pending_cmd* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %16, align 4
  br label %231

218:                                              ; preds = %207
  %219 = load i32, i32* @addr_cmd_complete, align 4
  %220 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %221 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %223 = load i32, i32* @HCI_ERROR_REMOTE_USER_TERM, align 4
  %224 = call i32 @hci_abort_conn(%struct.hci_conn* %222, i32 %223)
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %229 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %228)
  br label %230

230:                                              ; preds = %227, %218
  br label %231

231:                                              ; preds = %230, %215, %190, %129, %106, %70
  %232 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %233 = call i32 @hci_dev_unlock(%struct.hci_dev* %232)
  %234 = load i32, i32* %16, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %231, %56, %38
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @memset(%struct.mgmt_rp_unpair_device*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_unpair_device*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_remove_link_key(%struct.hci_dev*, i32*) #1

declare dso_local i32 @le_addr_type(i64) #1

declare dso_local i32 @smp_cancel_and_remove_pairing(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_conn_params_del(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @device_unpaired(%struct.hci_dev*, i32*, i64, %struct.sock*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, %struct.mgmt_cp_unpair_device*, i32) #1

declare dso_local i32 @hci_abort_conn(%struct.hci_conn*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
