; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_process_adv_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_process_adv_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, %struct.discovery_state }
%struct.discovery_state = type { i32, i32*, i32, i64, i32, i32 }
%struct.smp_irk = type { i32, i32 }
%struct.hci_conn = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"unknown advertising packet type: 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"advertising data len corrected\00", align 1
@HCI_PRIVACY = common dso_local global i32 0, align 4
@LE_SCAN_PASSIVE = common dso_local global i64 0, align 8
@MGMT_DEV_FOUND_NOT_CONNECTABLE = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32*, i32, i32*, i32, i32, i32*, i32)* @process_adv_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_adv_report(%struct.hci_dev* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.discovery_state*, align 8
  %20 = alloca %struct.smp_irk*, align 8
  %21 = alloca %struct.hci_conn*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 3
  store %struct.discovery_state* %27, %struct.discovery_state** %19, align 8
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %30 [
    i32 131, label %29
    i32 132, label %29
    i32 129, label %29
    i32 130, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %9, %9, %9, %9, %9
  br label %34

30:                                               ; preds = %9
  %31 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err_ratelimited(%struct.hci_dev* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %317

34:                                               ; preds = %29
  %35 = load i32*, i32** %17, align 8
  store i32* %35, i32** %24, align 8
  br label %36

36:                                               ; preds = %63, %34
  %37 = load i32*, i32** %24, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = icmp ult i32* %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %24, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi i1 [ false, %36 ], [ %46, %43 ]
  br i1 %48, label %49, label %70

49:                                               ; preds = %47
  %50 = load i32*, i32** %24, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32*, i32** %24, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = icmp ugt i32* %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %70

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %24, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32*, i32** %24, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %24, align 8
  br label %36

70:                                               ; preds = %61, %47
  %71 = load i32*, i32** %24, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %25, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %25, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %83 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err_ratelimited(%struct.hci_dev* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %25, align 4
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %81, %70
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %110

88:                                               ; preds = %85
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @hci_bdaddr_is_rpa(i32* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %317

94:                                               ; preds = %88
  %95 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %96 = load i32, i32* @HCI_PRIVACY, align 4
  %97 = call i32 @hci_dev_test_flag(%struct.hci_dev* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %317

100:                                              ; preds = %94
  %101 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %102 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @smp_irk_matches(%struct.hci_dev* %101, i32 %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %317

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %85
  %111 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.smp_irk* @hci_get_irk(%struct.hci_dev* %111, i32* %112, i32 %113)
  store %struct.smp_irk* %114, %struct.smp_irk** %20, align 8
  %115 = load %struct.smp_irk*, %struct.smp_irk** %20, align 8
  %116 = icmp ne %struct.smp_irk* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.smp_irk*, %struct.smp_irk** %20, align 8
  %119 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %118, i32 0, i32 1
  store i32* %119, i32** %12, align 8
  %120 = load %struct.smp_irk*, %struct.smp_irk** %20, align 8
  %121 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = call %struct.hci_conn* @check_pending_le_conn(%struct.hci_dev* %124, i32* %125, i32 %126, i32 %127, i32* %128)
  store %struct.hci_conn* %129, %struct.hci_conn** %21, align 8
  %130 = load %struct.hci_conn*, %struct.hci_conn** %21, align 8
  %131 = icmp ne %struct.hci_conn* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 131
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.hci_conn*, %struct.hci_conn** %21, align 8
  %137 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @memcpy(i32 %138, i32* %139, i32 %140)
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.hci_conn*, %struct.hci_conn** %21, align 8
  %144 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %132, %123
  %146 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %147 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LE_SCAN_PASSIVE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 132
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %317

155:                                              ; preds = %151
  %156 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %157 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %156, i32 0, i32 1
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @hci_pend_le_action_lookup(i32* %157, i32* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %155
  br label %317

163:                                              ; preds = %155
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 130
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, 129
  br i1 %168, label %169, label %171

169:                                              ; preds = %166, %163
  %170 = load i64, i64* @MGMT_DEV_FOUND_NOT_CONNECTABLE, align 8
  store i64 %170, i64* %23, align 8
  br label %172

171:                                              ; preds = %166
  store i64 0, i64* %23, align 8
  br label %172

172:                                              ; preds = %171, %169
  %173 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* @LE_LINK, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i64, i64* %23, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @mgmt_device_found(%struct.hci_dev* %173, i32* %174, i32 %175, i32 %176, i32* null, i32 %177, i64 %178, i32* %179, i32 %180, i32* null, i32 0)
  br label %317

182:                                              ; preds = %145
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, 130
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, 129
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 128
  br i1 %190, label %191, label %193

191:                                              ; preds = %188, %185, %182
  %192 = load i64, i64* @MGMT_DEV_FOUND_NOT_CONNECTABLE, align 8
  store i64 %192, i64* %23, align 8
  br label %194

193:                                              ; preds = %188
  store i64 0, i64* %23, align 8
  br label %194

194:                                              ; preds = %193, %191
  %195 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %196 = call i32 @has_pending_adv_report(%struct.hci_dev* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 131
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %11, align 4
  %203 = icmp eq i32 %202, 129
  br i1 %203, label %204, label %213

204:                                              ; preds = %201, %198
  %205 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i64, i64* %23, align 8
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @store_pending_adv_report(%struct.hci_dev* %205, i32* %206, i32 %207, i32 %208, i64 %209, i32* %210, i32 %211)
  br label %317

213:                                              ; preds = %201
  %214 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* @LE_LINK, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i64, i64* %23, align 8
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* %18, align 4
  %222 = call i32 @mgmt_device_found(%struct.hci_dev* %214, i32* %215, i32 %216, i32 %217, i32* null, i32 %218, i64 %219, i32* %220, i32 %221, i32* null, i32 0)
  br label %317

223:                                              ; preds = %194
  %224 = load i32*, i32** %12, align 8
  %225 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %226 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %225, i32 0, i32 4
  %227 = call i32 @bacmp(i32* %224, i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %232 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %230, %233
  br label %235

235:                                              ; preds = %229, %223
  %236 = phi i1 [ false, %223 ], [ %234, %229 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %22, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 128
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %22, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %294, label %243

243:                                              ; preds = %240, %235
  %244 = load i32, i32* %22, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %267, label %246

246:                                              ; preds = %243
  %247 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %248 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %249 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %248, i32 0, i32 4
  %250 = load i32, i32* @LE_LINK, align 4
  %251 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %252 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %255 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %258 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %261 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %264 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @mgmt_device_found(%struct.hci_dev* %247, i32* %249, i32 %250, i32 %253, i32* null, i32 %256, i64 %259, i32* %262, i32 %265, i32* null, i32 0)
  br label %267

267:                                              ; preds = %246, %243
  %268 = load i32, i32* %11, align 4
  %269 = icmp eq i32 %268, 131
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %11, align 4
  %272 = icmp eq i32 %271, 129
  br i1 %272, label %273, label %282

273:                                              ; preds = %270, %267
  %274 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %275 = load i32*, i32** %12, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load i64, i64* %23, align 8
  %279 = load i32*, i32** %17, align 8
  %280 = load i32, i32* %18, align 4
  %281 = call i32 @store_pending_adv_report(%struct.hci_dev* %274, i32* %275, i32 %276, i32 %277, i64 %278, i32* %279, i32 %280)
  br label %317

282:                                              ; preds = %270
  %283 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %284 = call i32 @clear_pending_adv_report(%struct.hci_dev* %283)
  %285 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %286 = load i32*, i32** %12, align 8
  %287 = load i32, i32* @LE_LINK, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %16, align 4
  %290 = load i64, i64* %23, align 8
  %291 = load i32*, i32** %17, align 8
  %292 = load i32, i32* %18, align 4
  %293 = call i32 @mgmt_device_found(%struct.hci_dev* %285, i32* %286, i32 %287, i32 %288, i32* null, i32 %289, i64 %290, i32* %291, i32 %292, i32* null, i32 0)
  br label %317

294:                                              ; preds = %240
  %295 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %296 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %297 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %296, i32 0, i32 4
  %298 = load i32, i32* @LE_LINK, align 4
  %299 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %300 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %16, align 4
  %303 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %304 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %307 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.discovery_state*, %struct.discovery_state** %19, align 8
  %310 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32*, i32** %17, align 8
  %313 = load i32, i32* %18, align 4
  %314 = call i32 @mgmt_device_found(%struct.hci_dev* %295, i32* %297, i32 %298, i32 %301, i32* null, i32 %302, i64 %305, i32* %308, i32 %311, i32* %312, i32 %313)
  %315 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %316 = call i32 @clear_pending_adv_report(%struct.hci_dev* %315)
  br label %317

317:                                              ; preds = %294, %282, %273, %213, %204, %172, %162, %154, %108, %99, %93, %30
  ret void
}

declare dso_local i32 @bt_dev_err_ratelimited(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @hci_bdaddr_is_rpa(i32*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @smp_irk_matches(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.smp_irk* @hci_get_irk(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn* @check_pending_le_conn(%struct.hci_dev*, i32*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hci_pend_le_action_lookup(i32*, i32*, i32) #1

declare dso_local i32 @mgmt_device_found(%struct.hci_dev*, i32*, i32, i32, i32*, i32, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @has_pending_adv_report(%struct.hci_dev*) #1

declare dso_local i32 @store_pending_adv_report(%struct.hci_dev*, i32*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @bacmp(i32*, i32*) #1

declare dso_local i32 @clear_pending_adv_report(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
