; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_discoverable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_discoverable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.mgmt_cp_set_discoverable = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@MGMT_OP_SET_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@MGMT_OP_SET_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i8*)* @set_discoverable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_discoverable(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mgmt_cp_set_discoverable*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.mgmt_cp_set_discoverable*
  store %struct.mgmt_cp_set_discoverable* %17, %struct.mgmt_cp_set_discoverable** %10, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %23 = load i32, i32* @HCI_LE_ENABLED, align 4
  %24 = call i32 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %29 = call i32 @hci_dev_test_flag(%struct.hci_dev* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %37 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %38 = call i32 @mgmt_cmd_status(%struct.sock* %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %287

39:                                               ; preds = %26, %4
  %40 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %41 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %46 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %51 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %60 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %61 = call i32 @mgmt_cmd_status(%struct.sock* %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %287

62:                                               ; preds = %49, %44, %39
  %63 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %64 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @__le16_to_cpu(i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %68 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ugt i8* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %71, %62
  %75 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %76 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79, %71
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %88 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %89 = call i32 @mgmt_cmd_status(%struct.sock* %83, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %287

90:                                               ; preds = %79, %74
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = call i32 @hci_dev_lock(%struct.hci_dev* %91)
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = call i32 @hdev_is_powered(%struct.hci_dev* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ugt i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.sock*, %struct.sock** %6, align 8
  %101 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %105 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %106 = call i32 @mgmt_cmd_status(%struct.sock* %100, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  br label %283

107:                                              ; preds = %96, %90
  %108 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %109 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %110 = call i64 @pending_find(i32 %108, %struct.hci_dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %114 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %115 = call i64 @pending_find(i32 %113, %struct.hci_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112, %107
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %123 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %124 = call i32 @mgmt_cmd_status(%struct.sock* %118, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %13, align 4
  br label %283

125:                                              ; preds = %112
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = load i32, i32* @HCI_CONNECTABLE, align 4
  %128 = call i32 @hci_dev_test_flag(%struct.hci_dev* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %133 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %136 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %137 = call i32 @mgmt_cmd_status(%struct.sock* %131, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %13, align 4
  br label %283

138:                                              ; preds = %125
  %139 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %140 = call i32 @hdev_is_powered(%struct.hci_dev* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %174, label %142

142:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  %143 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %144 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %151 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %152 = call i32 @hci_dev_test_flag(%struct.hci_dev* %150, i32 %151)
  %153 = icmp ne i32 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %142
  %155 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %156 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %157 = call i32 @hci_dev_change_flag(%struct.hci_dev* %155, i32 %156)
  store i32 1, i32* %14, align 4
  br label %158

158:                                              ; preds = %154, %142
  %159 = load %struct.sock*, %struct.sock** %6, align 8
  %160 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %161 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %162 = call i32 @send_settings_rsp(%struct.sock* %159, i32 %160, %struct.hci_dev* %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %283

166:                                              ; preds = %158
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %171 = load %struct.sock*, %struct.sock** %6, align 8
  %172 = call i32 @new_settings(%struct.hci_dev* %170, %struct.sock* %171)
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %169, %166
  br label %283

174:                                              ; preds = %138
  %175 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %176 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %183 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %184 = call i32 @hci_dev_test_flag(%struct.hci_dev* %182, i32 %183)
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %231

186:                                              ; preds = %174
  %187 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %188 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i32
  %192 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %193 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %194 = call i32 @hci_dev_test_flag(%struct.hci_dev* %192, i32 %193)
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %231

196:                                              ; preds = %186
  %197 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %198 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %197, i32 0, i32 3
  %199 = call i32 @cancel_delayed_work(i32* %198)
  %200 = load i8*, i8** %12, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %203 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %205 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %196
  %209 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %210 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %208
  %214 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %215 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %216, 1000
  %218 = call i32 @msecs_to_jiffies(i32 %217)
  store i32 %218, i32* %15, align 4
  %219 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %220 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %223 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %222, i32 0, i32 3
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @queue_delayed_work(i32 %221, i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %213, %208, %196
  %227 = load %struct.sock*, %struct.sock** %6, align 8
  %228 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %229 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %230 = call i32 @send_settings_rsp(%struct.sock* %227, i32 %228, %struct.hci_dev* %229)
  store i32 %230, i32* %13, align 4
  br label %283

231:                                              ; preds = %186, %174
  %232 = load %struct.sock*, %struct.sock** %6, align 8
  %233 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %234 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = load i8*, i8** %9, align 8
  %237 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %232, i32 %233, %struct.hci_dev* %234, i8* %235, i8* %236)
  store %struct.mgmt_pending_cmd* %237, %struct.mgmt_pending_cmd** %11, align 8
  %238 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %239 = icmp ne %struct.mgmt_pending_cmd* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %13, align 4
  br label %283

243:                                              ; preds = %231
  %244 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %245 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %244, i32 0, i32 3
  %246 = call i32 @cancel_delayed_work(i32* %245)
  %247 = load i8*, i8** %12, align 8
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %250 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 4
  %251 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %252 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %243
  %256 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %257 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %258 = call i32 @hci_dev_set_flag(%struct.hci_dev* %256, i32 %257)
  br label %263

259:                                              ; preds = %243
  %260 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %261 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %262 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %260, i32 %261)
  br label %263

263:                                              ; preds = %259, %255
  %264 = load %struct.mgmt_cp_set_discoverable*, %struct.mgmt_cp_set_discoverable** %10, align 8
  %265 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, %struct.mgmt_cp_set_discoverable* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %270 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %271 = call i32 @hci_dev_set_flag(%struct.hci_dev* %269, i32 %270)
  br label %276

272:                                              ; preds = %263
  %273 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %274 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %275 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %268
  %277 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %278 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %281 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %280, i32 0, i32 1
  %282 = call i32 @queue_work(i32 %279, i32* %281)
  store i32 0, i32* %13, align 4
  br label %283

283:                                              ; preds = %276, %240, %226, %173, %165, %130, %117, %99
  %284 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %285 = call i32 @hci_dev_unlock(%struct.hci_dev* %284)
  %286 = load i32, i32* %13, align 4
  store i32 %286, i32* %5, align 4
  br label %287

287:                                              ; preds = %283, %82, %54, %31
  %288 = load i32, i32* %5, align 4
  ret i32 %288
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_dev_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i8*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
