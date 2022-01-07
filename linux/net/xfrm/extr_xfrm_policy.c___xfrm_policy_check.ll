; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_policy_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_policy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { i32 }
%struct.sock = type { i64* }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy = type { i64, i64, i32, %struct.xfrm_tmpl*, %struct.TYPE_4__ }
%struct.xfrm_tmpl = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.flowi = type { i32 }
%struct.xfrm_if_cb = type { %struct.xfrm_if* (%struct.sk_buff.0*, i16)* }
%struct.xfrm_if = type { %struct.net*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff.0 = type opaque

@XFRM_POLICY_TYPE_MAX = common dso_local global i32 0, align 4
@XFRM_POLICY_MASK = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINHDRERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEMISMATCH = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINPOLERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINNOPOLS = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i64 0, align 8
@__xfrm_policy_check.dummy = internal global %struct.sec_path zeroinitializer, align 8
@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINPOLBLOCK = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINBUFFERERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINTMPLMISMATCH = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfrm_policy_check(%struct.sock* %0, i32 %1, %struct.sk_buff* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_policy*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.flowi, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xfrm_if_cb*, align 8
  %21 = alloca %struct.sec_path*, align 8
  %22 = alloca %struct.xfrm_if*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.xfrm_state*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.xfrm_tmpl**, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i16 %3, i16* %9, align 2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.net* @dev_net(i32 %36)
  store %struct.net* %37, %struct.net** %10, align 8
  %38 = load i32, i32* @XFRM_POLICY_TYPE_MAX, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca %struct.xfrm_policy*, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %42 = call i32 (...) @rcu_read_lock()
  %43 = call %struct.xfrm_if_cb* (...) @xfrm_if_get_cb()
  store %struct.xfrm_if_cb* %43, %struct.xfrm_if_cb** %20, align 8
  %44 = load %struct.xfrm_if_cb*, %struct.xfrm_if_cb** %20, align 8
  %45 = icmp ne %struct.xfrm_if_cb* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %4
  %47 = load %struct.xfrm_if_cb*, %struct.xfrm_if_cb** %20, align 8
  %48 = getelementptr inbounds %struct.xfrm_if_cb, %struct.xfrm_if_cb* %47, i32 0, i32 0
  %49 = load %struct.xfrm_if* (%struct.sk_buff.0*, i16)*, %struct.xfrm_if* (%struct.sk_buff.0*, i16)** %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = bitcast %struct.sk_buff* %50 to %struct.sk_buff.0*
  %52 = load i16, i16* %9, align 2
  %53 = call %struct.xfrm_if* %49(%struct.sk_buff.0* %51, i16 zeroext %52)
  store %struct.xfrm_if* %53, %struct.xfrm_if** %22, align 8
  %54 = load %struct.xfrm_if*, %struct.xfrm_if** %22, align 8
  %55 = icmp ne %struct.xfrm_if* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.xfrm_if*, %struct.xfrm_if** %22, align 8
  %58 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %23, align 4
  %61 = load %struct.xfrm_if*, %struct.xfrm_if** %22, align 8
  %62 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %61, i32 0, i32 0
  %63 = load %struct.net*, %struct.net** %62, align 8
  store %struct.net* %63, %struct.net** %10, align 8
  br label %64

64:                                               ; preds = %56, %46
  br label %65

65:                                               ; preds = %64, %4
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @XFRM_POLICY_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* @XFRM_POLICY_MASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load i16, i16* %9, align 2
  %76 = load i32, i32* %17, align 4
  %77 = call i64 @__xfrm_decode_session(%struct.sk_buff* %74, %struct.flowi* %18, i16 zeroext %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.net*, %struct.net** %10, align 8
  %81 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %82 = call i32 @XFRM_INC_STATS(%struct.net* %80, i32 %81)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

83:                                               ; preds = %65
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load i16, i16* %9, align 2
  %86 = call i32 @nf_nat_decode_session(%struct.sk_buff* %84, %struct.flowi* %18, i16 zeroext %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %87)
  store %struct.sec_path* %88, %struct.sec_path** %21, align 8
  %89 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %90 = icmp ne %struct.sec_path* %89, null
  br i1 %90, label %91, label %121

91:                                               ; preds = %83
  %92 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %93 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %117, %91
  %97 = load i32, i32* %25, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %101 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %100, i32 0, i32 1
  %102 = load %struct.xfrm_state**, %struct.xfrm_state*** %101, align 8
  %103 = load i32, i32* %25, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %102, i64 %104
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %105, align 8
  store %struct.xfrm_state* %106, %struct.xfrm_state** %26, align 8
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %26, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 0
  %109 = load i16, i16* %9, align 2
  %110 = call i32 @xfrm_selector_match(i32* %108, %struct.flowi* %18, i16 zeroext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %99
  %113 = load %struct.net*, %struct.net** %10, align 8
  %114 = load i32, i32* @LINUX_MIB_XFRMINSTATEMISMATCH, align 4
  %115 = call i32 @XFRM_INC_STATS(%struct.net* %113, i32 %114)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %25, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %25, align 4
  br label %96

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %83
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %11, align 8
  %122 = load %struct.sock*, %struct.sock** %6, align 8
  %123 = call %struct.sock* @sk_to_full_sk(%struct.sock* %122)
  store %struct.sock* %123, %struct.sock** %6, align 8
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = icmp ne %struct.sock* %124, null
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = load %struct.sock*, %struct.sock** %6, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %126
  %136 = load %struct.sock*, %struct.sock** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i16, i16* %9, align 2
  %139 = load i32, i32* %23, align 4
  %140 = call %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock* %136, i32 %137, %struct.flowi* %18, i16 zeroext %138, i32 %139)
  store %struct.xfrm_policy* %140, %struct.xfrm_policy** %11, align 8
  %141 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %142 = call i64 @IS_ERR(%struct.xfrm_policy* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.net*, %struct.net** %10, align 8
  %146 = load i32, i32* @LINUX_MIB_XFRMINPOLERROR, align 4
  %147 = call i32 @XFRM_INC_STATS(%struct.net* %145, i32 %146)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %126, %121
  %150 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %151 = icmp ne %struct.xfrm_policy* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load %struct.net*, %struct.net** %10, align 8
  %154 = load i16, i16* %9, align 2
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %23, align 4
  %157 = call %struct.xfrm_policy* @xfrm_policy_lookup(%struct.net* %153, %struct.flowi* %18, i16 zeroext %154, i32 %155, i32 %156)
  store %struct.xfrm_policy* %157, %struct.xfrm_policy** %11, align 8
  br label %158

158:                                              ; preds = %152, %149
  %159 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %160 = call i64 @IS_ERR(%struct.xfrm_policy* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.net*, %struct.net** %10, align 8
  %164 = load i32, i32* @LINUX_MIB_XFRMINPOLERROR, align 4
  %165 = call i32 @XFRM_INC_STATS(%struct.net* %163, i32 %164)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

166:                                              ; preds = %158
  %167 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %168 = icmp ne %struct.xfrm_policy* %167, null
  br i1 %168, label %184, label %169

169:                                              ; preds = %166
  %170 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %171 = icmp ne %struct.sec_path* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %174 = call i64 @secpath_has_nontransport(%struct.sec_path* %173, i32 0, i32* %19)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load i32, i32* %19, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = call i32 @xfrm_secpath_reject(i32 %177, %struct.sk_buff* %178, %struct.flowi* %18)
  %180 = load %struct.net*, %struct.net** %10, align 8
  %181 = load i32, i32* @LINUX_MIB_XFRMINNOPOLS, align 4
  %182 = call i32 @XFRM_INC_STATS(%struct.net* %180, i32 %181)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

183:                                              ; preds = %172, %169
  store i32 1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

184:                                              ; preds = %166
  %185 = call i8* (...) @ktime_get_real_seconds()
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %187 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  %189 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %190 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 0
  store %struct.xfrm_policy* %189, %struct.xfrm_policy** %190, align 16
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  %193 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %194 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @XFRM_POLICY_ALLOW, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %340

198:                                              ; preds = %184
  %199 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %200 = zext i32 %199 to i64
  %201 = call i8* @llvm.stacksave()
  store i8* %201, i8** %27, align 8
  %202 = alloca %struct.xfrm_tmpl*, i64 %200, align 16
  store i64 %200, i64* %28, align 8
  %203 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %204 = zext i32 %203 to i64
  %205 = alloca %struct.xfrm_tmpl*, i64 %204, align 16
  store i64 %204, i64* %29, align 8
  store %struct.xfrm_tmpl** %202, %struct.xfrm_tmpl*** %30, align 8
  store i32 0, i32* %31, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %206)
  store %struct.sec_path* %207, %struct.sec_path** %21, align 8
  %208 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %209 = icmp ne %struct.sec_path* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %198
  store %struct.sec_path* @__xfrm_policy_check.dummy, %struct.sec_path** %21, align 8
  br label %211

211:                                              ; preds = %210, %198
  store i32 0, i32* %16, align 4
  br label %212

212:                                              ; preds = %280, %211
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %283

216:                                              ; preds = %212
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 %218
  %220 = load %struct.xfrm_policy*, %struct.xfrm_policy** %219, align 8
  %221 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %222 = icmp ne %struct.xfrm_policy* %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %216
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 %225
  %227 = load %struct.xfrm_policy*, %struct.xfrm_policy** %226, align 8
  %228 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @XFRM_POLICY_ALLOW, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = load %struct.net*, %struct.net** %10, align 8
  %234 = load i32, i32* @LINUX_MIB_XFRMINPOLBLOCK, align 4
  %235 = call i32 @XFRM_INC_STATS(%struct.net* %233, i32 %234)
  store i32 8, i32* %24, align 4
  br label %337

236:                                              ; preds = %223, %216
  %237 = load i32, i32* %31, align 4
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 %239
  %241 = load %struct.xfrm_policy*, %struct.xfrm_policy** %240, align 8
  %242 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %237, %243
  %245 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %236
  %248 = load %struct.net*, %struct.net** %10, align 8
  %249 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %250 = call i32 @XFRM_INC_STATS(%struct.net* %248, i32 %249)
  store i32 9, i32* %24, align 4
  br label %337

251:                                              ; preds = %236
  store i32 0, i32* %32, align 4
  br label %252

252:                                              ; preds = %276, %251
  %253 = load i32, i32* %32, align 4
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 %255
  %257 = load %struct.xfrm_policy*, %struct.xfrm_policy** %256, align 8
  %258 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %253, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %252
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %41, i64 %263
  %265 = load %struct.xfrm_policy*, %struct.xfrm_policy** %264, align 8
  %266 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %265, i32 0, i32 3
  %267 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %266, align 8
  %268 = load i32, i32* %32, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %267, i64 %269
  %271 = load %struct.xfrm_tmpl**, %struct.xfrm_tmpl*** %30, align 8
  %272 = load i32, i32* %31, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %31, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %271, i64 %274
  store %struct.xfrm_tmpl* %270, %struct.xfrm_tmpl** %275, align 8
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %32, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %32, align 4
  br label %252

279:                                              ; preds = %252
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %16, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %16, align 4
  br label %212

283:                                              ; preds = %212
  %284 = load i32, i32* %31, align 4
  store i32 %284, i32* %15, align 4
  %285 = load i32, i32* %14, align 4
  %286 = icmp sgt i32 %285, 1
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load %struct.xfrm_tmpl**, %struct.xfrm_tmpl*** %30, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load i16, i16* %9, align 2
  %291 = call i32 @xfrm_tmpl_sort(%struct.xfrm_tmpl** %205, %struct.xfrm_tmpl** %288, i32 %289, i16 zeroext %290)
  store %struct.xfrm_tmpl** %205, %struct.xfrm_tmpl*** %30, align 8
  br label %292

292:                                              ; preds = %287, %283
  %293 = load i32, i32* %15, align 4
  %294 = sub nsw i32 %293, 1
  store i32 %294, i32* %32, align 4
  store i32 0, i32* %33, align 4
  br label %295

295:                                              ; preds = %322, %292
  %296 = load i32, i32* %32, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %325

298:                                              ; preds = %295
  %299 = load %struct.xfrm_tmpl**, %struct.xfrm_tmpl*** %30, align 8
  %300 = load i32, i32* %32, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %299, i64 %301
  %303 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %302, align 8
  %304 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %305 = load i32, i32* %33, align 4
  %306 = load i16, i16* %9, align 2
  %307 = call i32 @xfrm_policy_ok(%struct.xfrm_tmpl* %303, %struct.sec_path* %304, i32 %305, i16 zeroext %306)
  store i32 %307, i32* %33, align 4
  %308 = load i32, i32* %33, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %298
  %311 = load i32, i32* %33, align 4
  %312 = icmp slt i32 %311, -1
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load i32, i32* %33, align 4
  %315 = add nsw i32 2, %314
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %19, align 4
  br label %317

317:                                              ; preds = %313, %310
  %318 = load %struct.net*, %struct.net** %10, align 8
  %319 = load i32, i32* @LINUX_MIB_XFRMINTMPLMISMATCH, align 4
  %320 = call i32 @XFRM_INC_STATS(%struct.net* %318, i32 %319)
  store i32 8, i32* %24, align 4
  br label %337

321:                                              ; preds = %298
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %32, align 4
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %32, align 4
  br label %295

325:                                              ; preds = %295
  %326 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %327 = load i32, i32* %33, align 4
  %328 = call i64 @secpath_has_nontransport(%struct.sec_path* %326, i32 %327, i32* %19)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = load %struct.net*, %struct.net** %10, align 8
  %332 = load i32, i32* @LINUX_MIB_XFRMINTMPLMISMATCH, align 4
  %333 = call i32 @XFRM_INC_STATS(%struct.net* %331, i32 %332)
  store i32 8, i32* %24, align 4
  br label %337

334:                                              ; preds = %325
  %335 = load i32, i32* %14, align 4
  %336 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %41, i32 %335)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %337

337:                                              ; preds = %330, %317, %247, %232, %334
  %338 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load i32, i32* %24, align 4
  switch i32 %339, label %351 [
    i32 8, label %344
    i32 9, label %348
  ]

340:                                              ; preds = %184
  %341 = load %struct.net*, %struct.net** %10, align 8
  %342 = load i32, i32* @LINUX_MIB_XFRMINPOLBLOCK, align 4
  %343 = call i32 @XFRM_INC_STATS(%struct.net* %341, i32 %342)
  br label %344

344:                                              ; preds = %340, %337
  %345 = load i32, i32* %19, align 4
  %346 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %347 = call i32 @xfrm_secpath_reject(i32 %345, %struct.sk_buff* %346, %struct.flowi* %18)
  br label %348

348:                                              ; preds = %344, %337
  %349 = load i32, i32* %14, align 4
  %350 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %41, i32 %349)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %351

351:                                              ; preds = %348, %337, %183, %176, %162, %144, %112, %79
  %352 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %352)
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local %struct.net* @dev_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_if_cb* @xfrm_if_get_cb(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @__xfrm_decode_session(%struct.sk_buff*, %struct.flowi*, i16 zeroext, i32) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @nf_nat_decode_session(%struct.sk_buff*, %struct.flowi*, i16 zeroext) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_selector_match(i32*, %struct.flowi*, i16 zeroext) #1

declare dso_local %struct.sock* @sk_to_full_sk(%struct.sock*) #1

declare dso_local %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock*, i32, %struct.flowi*, i16 zeroext, i32) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_policy*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_lookup(%struct.net*, %struct.flowi*, i16 zeroext, i32, i32) #1

declare dso_local i64 @secpath_has_nontransport(%struct.sec_path*, i32, i32*) #1

declare dso_local i32 @xfrm_secpath_reject(i32, %struct.sk_buff*, %struct.flowi*) #1

declare dso_local i8* @ktime_get_real_seconds(...) #1

declare dso_local i32 @xfrm_tmpl_sort(%struct.xfrm_tmpl**, %struct.xfrm_tmpl**, i32, i16 zeroext) #1

declare dso_local i32 @xfrm_policy_ok(%struct.xfrm_tmpl*, %struct.sec_path*, i32, i16 zeroext) #1

declare dso_local i32 @xfrm_pols_put(%struct.xfrm_policy**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
