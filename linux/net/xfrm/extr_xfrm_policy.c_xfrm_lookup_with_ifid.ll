; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_lookup_with_ifid.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_lookup_with_ifid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.dst_entry = type { i32, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.flowi = type { i32 }
%struct.sock = type { i64* }
%struct.xfrm_dst = type { i32, i32, %struct.TYPE_8__, %struct.dst_entry*, i32 }
%struct.TYPE_8__ = type { %struct.dst_entry }
%struct.xfrm_flo = type { i32, %struct.dst_entry* }
%struct.xfrm_policy = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@XFRM_POLICY_TYPE_MAX = common dso_local global i32 0, align 4
@XFRM_POLICY_OUT = common dso_local global i64 0, align 8
@EREMOTE = common dso_local global i32 0, align 4
@DST_NOXFRM = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTNOSTATES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XFRM_LOOKUP_ICMP = common dso_local global i32 0, align 4
@XFRM_POLICY_ICMP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTPOLBLOCK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@DST_XFRM_TUNNEL = common dso_local global i32 0, align 4
@XFRM_LOOKUP_KEEP_DST_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @xfrm_lookup_with_ifid(%struct.net* %0, %struct.dst_entry* %1, %struct.flowi* %2, %struct.sock* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.xfrm_dst*, align 8
  %17 = alloca %struct.dst_entry*, align 8
  %18 = alloca %struct.dst_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.xfrm_flo, align 8
  %27 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %9, align 8
  store %struct.flowi* %2, %struct.flowi** %10, align 8
  store %struct.sock* %3, %struct.sock** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* @XFRM_POLICY_TYPE_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca %struct.xfrm_policy*, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load i64, i64* @XFRM_POLICY_OUT, align 8
  store i64 %37, i64* %20, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %17, align 8
  store %struct.xfrm_dst* null, %struct.xfrm_dst** %16, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %18, align 8
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = call %struct.sock* @sk_const_to_full_sk(%struct.sock* %38)
  store %struct.sock* %39, %struct.sock** %11, align 8
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = icmp ne %struct.sock* %40, null
  br i1 %41, label %42, label %103

42:                                               ; preds = %6
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %42
  store i32 1, i32* %23, align 4
  %51 = load %struct.sock*, %struct.sock** %11, align 8
  %52 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %53 = load %struct.flowi*, %struct.flowi** %10, align 8
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock* %51, i64 %52, %struct.flowi* %53, i32 %54, i32 %55)
  %57 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %31, i64 0
  store %struct.xfrm_policy* %56, %struct.xfrm_policy** %57, align 16
  %58 = load %struct.flowi*, %struct.flowi** %10, align 8
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @xfrm_expand_policies(%struct.flowi* %58, i32 %59, %struct.xfrm_policy** %31, i32* %23, i32* %24)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %287

64:                                               ; preds = %50
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %24, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %23, align 4
  store i32 %71, i32* %25, align 4
  br label %190

72:                                               ; preds = %67
  %73 = load i32, i32* %23, align 4
  %74 = load %struct.flowi*, %struct.flowi** %10, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %77 = call %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy** %31, i32 %73, %struct.flowi* %74, i32 %75, %struct.dst_entry* %76)
  store %struct.xfrm_dst* %77, %struct.xfrm_dst** %16, align 8
  %78 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %79 = call i64 @IS_ERR(%struct.xfrm_dst* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load i32, i32* %23, align 4
  %83 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %31, i32 %82)
  %84 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %85 = call i32 @PTR_ERR(%struct.xfrm_dst* %84)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @EREMOTE, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %274

91:                                               ; preds = %81
  br label %287

92:                                               ; preds = %72
  %93 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %94 = icmp eq %struct.xfrm_dst* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i32 0, i32* %24, align 4
  %96 = load i32, i32* %23, align 4
  store i32 %96, i32* %25, align 4
  br label %190

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %100 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %99, i32 0, i32 3
  %101 = load %struct.dst_entry*, %struct.dst_entry** %100, align 8
  store %struct.dst_entry* %101, %struct.dst_entry** %18, align 8
  br label %102

102:                                              ; preds = %98, %64
  br label %103

103:                                              ; preds = %102, %42, %6
  %104 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %105 = icmp eq %struct.xfrm_dst* %104, null
  br i1 %105, label %106, label %162

106:                                              ; preds = %103
  %107 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %108 = getelementptr inbounds %struct.xfrm_flo, %struct.xfrm_flo* %26, i32 0, i32 1
  store %struct.dst_entry* %107, %struct.dst_entry** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = getelementptr inbounds %struct.xfrm_flo, %struct.xfrm_flo* %26, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %112 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DST_NOXFRM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %106
  %118 = load %struct.net*, %struct.net** %8, align 8
  %119 = getelementptr inbounds %struct.net, %struct.net* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117, %106
  br label %274

127:                                              ; preds = %117
  %128 = load %struct.net*, %struct.net** %8, align 8
  %129 = load %struct.flowi*, %struct.flowi** %10, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i64, i64* %20, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call %struct.xfrm_dst* @xfrm_bundle_lookup(%struct.net* %128, %struct.flowi* %129, i32 %130, i64 %131, %struct.xfrm_flo* %26, i32 %132)
  store %struct.xfrm_dst* %133, %struct.xfrm_dst** %16, align 8
  %134 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %135 = icmp eq %struct.xfrm_dst* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %274

137:                                              ; preds = %127
  %138 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %139 = call i64 @IS_ERR(%struct.xfrm_dst* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %143 = call i32 @PTR_ERR(%struct.xfrm_dst* %142)
  store i32 %143, i32* %22, align 4
  br label %287

144:                                              ; preds = %137
  %145 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %146 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %23, align 4
  %148 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %149 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %24, align 4
  %151 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %152 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memcpy(%struct.xfrm_policy** %31, i32 %153, i32 %157)
  %159 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %160 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %159, i32 0, i32 3
  %161 = load %struct.dst_entry*, %struct.dst_entry** %160, align 8
  store %struct.dst_entry* %161, %struct.dst_entry** %18, align 8
  br label %162

162:                                              ; preds = %144, %103
  %163 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %164 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store %struct.dst_entry* %165, %struct.dst_entry** %17, align 8
  %166 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %167 = icmp eq %struct.dst_entry* %166, null
  br i1 %167, label %168, label %189

168:                                              ; preds = %162
  %169 = load i32, i32* %24, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %168
  %172 = load %struct.net*, %struct.net** %8, align 8
  %173 = getelementptr inbounds %struct.net, %struct.net* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.net*, %struct.net** %8, align 8
  %179 = load i32, i32* @LINUX_MIB_XFRMOUTNOSTATES, align 4
  %180 = call i32 @XFRM_INC_STATS(%struct.net* %178, i32 %179)
  %181 = load i32, i32* @EREMOTE, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %22, align 4
  br label %284

183:                                              ; preds = %171
  %184 = load i32, i32* @EAGAIN, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %22, align 4
  %186 = load %struct.net*, %struct.net** %8, align 8
  %187 = load i32, i32* @LINUX_MIB_XFRMOUTNOSTATES, align 4
  %188 = call i32 @XFRM_INC_STATS(%struct.net* %186, i32 %187)
  br label %284

189:                                              ; preds = %168, %162
  br label %190

190:                                              ; preds = %189, %95, %70
  %191 = load i32, i32* %23, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %274

194:                                              ; preds = %190
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @XFRM_LOOKUP_ICMP, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %31, i64 0
  %201 = load %struct.xfrm_policy*, %struct.xfrm_policy** %200, align 16
  %202 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @XFRM_POLICY_ICMP, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* @ENOENT, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %22, align 4
  br label %284

210:                                              ; preds = %199, %194
  store i32 0, i32* %21, align 4
  br label %211

211:                                              ; preds = %223, %210
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %23, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = call i32 (...) @ktime_get_real_seconds()
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %31, i64 %218
  %220 = load %struct.xfrm_policy*, %struct.xfrm_policy** %219, align 8
  %221 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %216, i32* %222, align 4
  br label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %21, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %21, align 4
  br label %211

226:                                              ; preds = %211
  %227 = load i32, i32* %24, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load %struct.net*, %struct.net** %8, align 8
  %231 = load i32, i32* @LINUX_MIB_XFRMOUTPOLBLOCK, align 4
  %232 = call i32 @XFRM_INC_STATS(%struct.net* %230, i32 %231)
  %233 = load i32, i32* @EPERM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %22, align 4
  br label %284

235:                                              ; preds = %226
  %236 = load i32, i32* %24, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %240 = call i32 @dst_release(%struct.dst_entry* %239)
  br label %245

241:                                              ; preds = %235
  %242 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %243 = call i32 @dst_release(%struct.dst_entry* %242)
  %244 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  store %struct.dst_entry* %244, %struct.dst_entry** %17, align 8
  br label %245

245:                                              ; preds = %241, %238
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %279, %246
  %248 = load i32, i32* %25, align 4
  %249 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %31, i32 %248)
  %250 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %251 = icmp ne %struct.dst_entry* %250, null
  br i1 %251, label %252, label %272

252:                                              ; preds = %247
  %253 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %254 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %253, i32 0, i32 1
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = icmp ne %struct.TYPE_12__* %255, null
  br i1 %256, label %257, label %272

257:                                              ; preds = %252
  %258 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %259 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %258, i32 0, i32 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load i32, i32* @DST_XFRM_TUNNEL, align 4
  %268 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %269 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %266, %257, %252, %247
  %273 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  store %struct.dst_entry* %273, %struct.dst_entry** %7, align 8
  store i32 1, i32* %27, align 4
  br label %300

274:                                              ; preds = %193, %136, %126, %90
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* @XFRM_LOOKUP_ICMP, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %274
  %280 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  store %struct.dst_entry* %280, %struct.dst_entry** %17, align 8
  br label %247

281:                                              ; preds = %274
  %282 = load i32, i32* @ENOENT, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %22, align 4
  br label %284

284:                                              ; preds = %281, %229, %207, %183, %177
  %285 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %286 = call i32 @dst_release(%struct.dst_entry* %285)
  br label %287

287:                                              ; preds = %284, %141, %91, %63
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @XFRM_LOOKUP_KEEP_DST_REF, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %287
  %293 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %294 = call i32 @dst_release(%struct.dst_entry* %293)
  br label %295

295:                                              ; preds = %292, %287
  %296 = load i32, i32* %25, align 4
  %297 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %31, i32 %296)
  %298 = load i32, i32* %22, align 4
  %299 = call %struct.dst_entry* @ERR_PTR(i32 %298)
  store %struct.dst_entry* %299, %struct.dst_entry** %7, align 8
  store i32 1, i32* %27, align 4
  br label %300

300:                                              ; preds = %295, %272
  %301 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %301)
  %302 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  ret %struct.dst_entry* %302
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sock* @sk_const_to_full_sk(%struct.sock*) #2

declare dso_local %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock*, i64, %struct.flowi*, i32, i32) #2

declare dso_local i32 @xfrm_expand_policies(%struct.flowi*, i32, %struct.xfrm_policy**, i32*, i32*) #2

declare dso_local %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy**, i32, %struct.flowi*, i32, %struct.dst_entry*) #2

declare dso_local i64 @IS_ERR(%struct.xfrm_dst*) #2

declare dso_local i32 @xfrm_pols_put(%struct.xfrm_policy**, i32) #2

declare dso_local i32 @PTR_ERR(%struct.xfrm_dst*) #2

declare dso_local %struct.xfrm_dst* @xfrm_bundle_lookup(%struct.net*, %struct.flowi*, i32, i64, %struct.xfrm_flo*, i32) #2

declare dso_local i32 @memcpy(%struct.xfrm_policy**, i32, i32) #2

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #2

declare dso_local i32 @ktime_get_real_seconds(...) #2

declare dso_local i32 @dst_release(%struct.dst_entry*) #2

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
