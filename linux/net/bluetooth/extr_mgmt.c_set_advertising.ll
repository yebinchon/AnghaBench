; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i64, i32, i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@HCI_ADVERTISING_CONNECTABLE = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@LE_SCAN_ACTIVE = common dso_local global i64 0, align 8
@MGMT_OP_SET_LE = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@set_advertising_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_advertising to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_advertising(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %18, %struct.mgmt_mode** %10, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = call i32 @mgmt_le_support(%struct.hci_dev* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @mgmt_cmd_status(%struct.sock* %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %231

35:                                               ; preds = %4
  %36 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %42 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %47 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %56 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %57 = call i32 @mgmt_cmd_status(%struct.sock* %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %231

58:                                               ; preds = %45, %40, %35
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = call i32 @hci_dev_lock(%struct.hci_dev* %59)
  %61 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %62 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %69 = call i32 @hdev_is_powered(%struct.hci_dev* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %58
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %74 = load i32, i32* @HCI_ADVERTISING, align 4
  %75 = call i32 @hci_dev_test_flag(%struct.hci_dev* %73, i32 %74)
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %79 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i32
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %85 = call i32 @hci_dev_test_flag(%struct.hci_dev* %83, i32 %84)
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %77, %71
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = load i32, i32* @LE_LINK, align 4
  %90 = call i64 @hci_conn_num(%struct.hci_dev* %88, i32 %89)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = load i32, i32* @HCI_LE_SCAN, align 4
  %95 = call i32 @hci_dev_test_flag(%struct.hci_dev* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %153

97:                                               ; preds = %92
  %98 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LE_SCAN_ACTIVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %97, %87, %77, %58
  %104 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %105 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %110 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %109, i32 0, i32 1
  store i32 0, i32* %110, align 8
  %111 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %112 = load i32, i32* @HCI_ADVERTISING, align 4
  %113 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %118 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %125

121:                                              ; preds = %108
  %122 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %123 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %124 = call i32 @hci_dev_set_flag(%struct.hci_dev* %122, i32 %123)
  br label %129

125:                                              ; preds = %108
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %128 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %121
  br label %137

130:                                              ; preds = %103
  %131 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %132 = load i32, i32* @HCI_ADVERTISING, align 4
  %133 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %131, i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %135 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %136 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %129
  %138 = load %struct.sock*, %struct.sock** %6, align 8
  %139 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %140 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %141 = call i32 @send_settings_rsp(%struct.sock* %138, i32 %139, %struct.hci_dev* %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %227

145:                                              ; preds = %137
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %150 = load %struct.sock*, %struct.sock** %6, align 8
  %151 = call i32 @new_settings(%struct.hci_dev* %149, %struct.sock* %150)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %148, %145
  br label %227

153:                                              ; preds = %97, %92
  %154 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %155 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %156 = call i64 @pending_find(i32 %154, %struct.hci_dev* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %160 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %161 = call i64 @pending_find(i32 %159, %struct.hci_dev* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158, %153
  %164 = load %struct.sock*, %struct.sock** %6, align 8
  %165 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %166 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %169 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %170 = call i32 @mgmt_cmd_status(%struct.sock* %164, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %15, align 4
  br label %227

171:                                              ; preds = %158
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %174 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %172, i32 %173, %struct.hci_dev* %174, i8* %175, i32 %176)
  store %struct.mgmt_pending_cmd* %177, %struct.mgmt_pending_cmd** %11, align 8
  %178 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %179 = icmp ne %struct.mgmt_pending_cmd* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %15, align 4
  br label %227

183:                                              ; preds = %171
  %184 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %185 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %184)
  %186 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %187 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %192 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %193 = call i32 @hci_dev_set_flag(%struct.hci_dev* %191, i32 %192)
  br label %198

194:                                              ; preds = %183
  %195 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %196 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %197 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %190
  %199 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %200 = call i32 @cancel_adv_timeout(%struct.hci_dev* %199)
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %205 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %204, i32 0, i32 1
  store i32 0, i32* %205, align 8
  %206 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %207 = call i64 @ext_adv_capable(%struct.hci_dev* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = call i32 @__hci_req_start_ext_adv(%struct.hci_request* %12, i32 0)
  br label %215

211:                                              ; preds = %203
  %212 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %12, i32 0)
  %213 = call i32 @__hci_req_update_scan_rsp_data(%struct.hci_request* %12, i32 0)
  %214 = call i32 @__hci_req_enable_advertising(%struct.hci_request* %12)
  br label %215

215:                                              ; preds = %211, %209
  br label %218

216:                                              ; preds = %198
  %217 = call i32 @__hci_req_disable_advertising(%struct.hci_request* %12)
  br label %218

218:                                              ; preds = %216, %215
  %219 = load i32, i32* @set_advertising_complete, align 4
  %220 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %225 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %224)
  br label %226

226:                                              ; preds = %223, %218
  br label %227

227:                                              ; preds = %226, %180, %163, %152, %144
  %228 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %229 = call i32 @hci_dev_unlock(%struct.hci_dev* %228)
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %227, %50, %27
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_le_support(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_conn_num(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @cancel_adv_timeout(%struct.hci_dev*) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_scan_rsp_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_advertising(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_disable_advertising(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
