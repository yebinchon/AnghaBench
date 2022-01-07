; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32 }
%struct.mgmt_cp_add_advertising = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.mgmt_rp_add_advertising = type { i32 }
%struct.adv_info = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_ADD_ADVERTISING = common dso_local global i32 0, align 4
@HCI_MAX_ADV_INSTANCES = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_MASK = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_OP_REMOVE_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_OP_SET_LE = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@add_advertising_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i64)* @add_advertising to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_advertising(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mgmt_cp_add_advertising*, align 8
  %11 = alloca %struct.mgmt_rp_add_advertising, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.adv_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.mgmt_pending_cmd*, align 8
  %23 = alloca %struct.hci_request, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.mgmt_cp_add_advertising*
  store %struct.mgmt_cp_add_advertising* %25, %struct.mgmt_cp_add_advertising** %10, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = call i32 @mgmt_le_support(%struct.hci_dev* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @mgmt_cmd_status(%struct.sock* %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %337

45:                                               ; preds = %4
  %46 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %47 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %52 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @HCI_MAX_ADV_INSTANCES, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50, %45
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %62 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %63 = call i32 @mgmt_cmd_status(%struct.sock* %57, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %337

64:                                               ; preds = %50
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %67 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 48, %68
  %70 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %71 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = icmp ne i64 %65, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %81 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %82 = call i32 @mgmt_cmd_status(%struct.sock* %76, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %337

83:                                               ; preds = %64
  %84 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %85 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @__le32_to_cpu(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %89 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @__le16_to_cpu(i32 %90)
  store i64 %91, i64* %16, align 8
  %92 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %93 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @__le16_to_cpu(i32 %94)
  store i64 %95, i64* %17, align 8
  %96 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %97 = call i32 @get_supported_adv_flags(%struct.hci_dev* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @MGMT_ADV_FLAG_SEC_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %83
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 0, %112
  %114 = and i32 %111, %113
  %115 = xor i32 %110, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %109, %83
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %123 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %124 = call i32 @mgmt_cmd_status(%struct.sock* %118, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %337

125:                                              ; preds = %109, %106
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = call i32 @hci_dev_lock(%struct.hci_dev* %126)
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %132 = call i32 @hdev_is_powered(%struct.hci_dev* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load %struct.sock*, %struct.sock** %6, align 8
  %136 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %137 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %140 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %141 = call i32 @mgmt_cmd_status(%struct.sock* %135, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %21, align 4
  br label %333

142:                                              ; preds = %130, %125
  %143 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %144 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %145 = call i64 @pending_find(i32 %143, %struct.hci_dev* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %149 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %150 = call i64 @pending_find(i32 %148, %struct.hci_dev* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %154 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %155 = call i64 @pending_find(i32 %153, %struct.hci_dev* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152, %147, %142
  %158 = load %struct.sock*, %struct.sock** %6, align 8
  %159 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %160 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %163 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %164 = call i32 @mgmt_cmd_status(%struct.sock* %158, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %21, align 4
  br label %333

165:                                              ; preds = %152
  %166 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %169 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %172 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @tlv_data_is_valid(%struct.hci_dev* %166, i32 %167, i64 %170, i64 %173, i32 1)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %165
  %177 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %180 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %183 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %181, %184
  %186 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %187 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @tlv_data_is_valid(%struct.hci_dev* %177, i32 %178, i64 %185, i64 %188, i32 0)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %176, %165
  %192 = load %struct.sock*, %struct.sock** %6, align 8
  %193 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %194 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %197 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %198 = call i32 @mgmt_cmd_status(%struct.sock* %192, i32 %195, i32 %196, i32 %197)
  store i32 %198, i32* %21, align 4
  br label %333

199:                                              ; preds = %176
  %200 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %201 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %202 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %206 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %209 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %212 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %215 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %218 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %216, %219
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %17, align 8
  %223 = call i32 @hci_add_adv_instance(%struct.hci_dev* %200, i32 %203, i32 %204, i64 %207, i64 %210, i64 %213, i64 %220, i64 %221, i64 %222)
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %199
  %227 = load %struct.sock*, %struct.sock** %6, align 8
  %228 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %229 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %232 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %233 = call i32 @mgmt_cmd_status(%struct.sock* %227, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %21, align 4
  br label %333

234:                                              ; preds = %199
  %235 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %236 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %18, align 4
  %239 = icmp ugt i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %234
  %241 = load %struct.sock*, %struct.sock** %6, align 8
  %242 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %243 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %244 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @mgmt_advertising_added(%struct.sock* %241, %struct.hci_dev* %242, i32 %245)
  br label %247

247:                                              ; preds = %240, %234
  %248 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %249 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %252 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %250, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %247
  %256 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %257 = call i32 @cancel_adv_timeout(%struct.hci_dev* %256)
  %258 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %259 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %260 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call %struct.adv_info* @hci_get_next_instance(%struct.hci_dev* %258, i32 %261)
  store %struct.adv_info* %262, %struct.adv_info** %20, align 8
  %263 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %264 = icmp ne %struct.adv_info* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %255
  %266 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %267 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %19, align 4
  br label %269

269:                                              ; preds = %265, %255
  br label %280

270:                                              ; preds = %247
  %271 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %272 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %270
  %276 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %277 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %19, align 4
  br label %279

279:                                              ; preds = %275, %270
  br label %280

280:                                              ; preds = %279, %269
  %281 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %282 = call i32 @hdev_is_powered(%struct.hci_dev* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %286 = load i32, i32* @HCI_ADVERTISING, align 4
  %287 = call i64 @hci_dev_test_flag(%struct.hci_dev* %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* %19, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %289, %284, %280
  %293 = load %struct.mgmt_cp_add_advertising*, %struct.mgmt_cp_add_advertising** %10, align 8
  %294 = getelementptr inbounds %struct.mgmt_cp_add_advertising, %struct.mgmt_cp_add_advertising* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = getelementptr inbounds %struct.mgmt_rp_add_advertising, %struct.mgmt_rp_add_advertising* %11, i32 0, i32 0
  store i32 %295, i32* %296, align 4
  %297 = load %struct.sock*, %struct.sock** %6, align 8
  %298 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %299 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %302 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %303 = call i32 @mgmt_cmd_complete(%struct.sock* %297, i32 %300, i32 %301, i32 %302, %struct.mgmt_rp_add_advertising* %11, i32 4)
  store i32 %303, i32* %21, align 4
  br label %333

304:                                              ; preds = %289
  %305 = load %struct.sock*, %struct.sock** %6, align 8
  %306 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %307 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %308 = load i8*, i8** %8, align 8
  %309 = load i64, i64* %9, align 8
  %310 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %305, i32 %306, %struct.hci_dev* %307, i8* %308, i64 %309)
  store %struct.mgmt_pending_cmd* %310, %struct.mgmt_pending_cmd** %22, align 8
  %311 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %22, align 8
  %312 = icmp ne %struct.mgmt_pending_cmd* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %304
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %21, align 4
  br label %333

316:                                              ; preds = %304
  %317 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %318 = call i32 @hci_req_init(%struct.hci_request* %23, %struct.hci_dev* %317)
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @__hci_req_schedule_adv_instance(%struct.hci_request* %23, i32 %319, i32 1)
  store i32 %320, i32* %21, align 4
  %321 = load i32, i32* %21, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %316
  %324 = load i32, i32* @add_advertising_complete, align 4
  %325 = call i32 @hci_req_run(%struct.hci_request* %23, i32 %324)
  store i32 %325, i32* %21, align 4
  br label %326

326:                                              ; preds = %323, %316
  %327 = load i32, i32* %21, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %22, align 8
  %331 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %330)
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %313, %292, %226, %191, %157, %134
  %334 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %335 = call i32 @hci_dev_unlock(%struct.hci_dev* %334)
  %336 = load i32, i32* %21, align 4
  store i32 %336, i32* %5, align 4
  br label %337

337:                                              ; preds = %333, %117, %75, %56, %37
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_le_support(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @get_supported_adv_flags(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @tlv_data_is_valid(%struct.hci_dev*, i32, i64, i64, i32) #1

declare dso_local i32 @hci_add_adv_instance(%struct.hci_dev*, i32, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @mgmt_advertising_added(%struct.sock*, %struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_adv_timeout(%struct.hci_dev*) #1

declare dso_local %struct.adv_info* @hci_get_next_instance(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_add_advertising*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i64) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_schedule_adv_instance(%struct.hci_request*, i32, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
