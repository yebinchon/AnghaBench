; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_send_verdict.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_send_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32, i64, i64, %struct.sock*, i32* }
%struct.sk_msg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@__SK_NONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_psock*, %struct.sk_msg*, i32*, i32)* @tcp_bpf_send_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_send_verdict(%struct.sock* %0, %struct.sk_psock* %1, %struct.sk_msg* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_psock*, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %8, align 8
  store %struct.sk_msg* %2, %struct.sk_msg** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %20 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %24 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  store i64 0, i64* %16, align 8
  br label %29

29:                                               ; preds = %288, %5
  %30 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %31 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @__SK_NONE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %37 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %16, align 8
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %42 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %43 = call i32 @sk_psock_msg_verdict(%struct.sock* %40, %struct.sk_psock* %41, %struct.sk_msg* %42)
  %44 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %45 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %47 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %35
  %53 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %54 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %16, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %16, align 8
  br label %60

59:                                               ; preds = %35
  store i64 0, i64* %16, align 8
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %63 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %61
  %67 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %68 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %71 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %69, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %66
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %75
  %79 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %80 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %83 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %81, %85
  %87 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %88 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %90 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %108, label %93

93:                                               ; preds = %78
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = load i32, i32* @__GFP_NOWARN, align 4
  %96 = or i32 %94, %95
  %97 = call i32* @kzalloc(i32 4, i32 %96)
  %98 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %99 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %101 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %292

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %78
  %109 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %110 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %113 = call i32 @memcpy(i32* %111, %struct.sk_msg* %112, i32 40)
  store i32 0, i32* %6, align 4
  br label %292

114:                                              ; preds = %75, %66, %61
  %115 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %116 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %15, align 8
  %119 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %120 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %114
  %124 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %125 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %131 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %15, align 8
  br label %133

133:                                              ; preds = %129, %123, %114
  %134 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %135 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %213 [
    i32 129, label %137
    i32 128, label %157
    i32 130, label %212
  ]

137:                                              ; preds = %133
  %138 = load %struct.sock*, %struct.sock** %7, align 8
  %139 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @tcp_bpf_push(%struct.sock* %138, %struct.sk_msg* %139, i64 %140, i32 %141, i32 1)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @unlikely(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load %struct.sock*, %struct.sock** %7, align 8
  %148 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %149 = call i32 @sk_msg_free(%struct.sock* %147, %struct.sk_msg* %148)
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %231

153:                                              ; preds = %137
  %154 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %155 = load i64, i64* %15, align 8
  %156 = call i32 @sk_msg_apply_bytes(%struct.sk_psock* %154, i64 %155)
  br label %231

157:                                              ; preds = %133
  %158 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %159 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %158, i32 0, i32 3
  %160 = load %struct.sock*, %struct.sock** %159, align 8
  store %struct.sock* %160, %struct.sock** %14, align 8
  %161 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %162 = load i64, i64* %15, align 8
  %163 = call i32 @sk_msg_apply_bytes(%struct.sk_psock* %161, i64 %162)
  %164 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %165 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  store i32 1, i32* %12, align 4
  %169 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %170 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %169, i32 0, i32 4
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %168, %157
  %172 = load %struct.sock*, %struct.sock** %7, align 8
  %173 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @sk_msg_return(%struct.sock* %172, %struct.sk_msg* %173, i64 %174)
  %176 = load %struct.sock*, %struct.sock** %7, align 8
  %177 = call i32 @release_sock(%struct.sock* %176)
  %178 = load %struct.sock*, %struct.sock** %14, align 8
  %179 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %180 = load i64, i64* %15, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @tcp_bpf_sendmsg_redir(%struct.sock* %178, %struct.sk_msg* %179, i64 %180, i32 %181)
  store i32 %182, i32* %17, align 4
  %183 = load %struct.sock*, %struct.sock** %7, align 8
  %184 = call i32 @lock_sock(%struct.sock* %183)
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @unlikely(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %171
  %191 = load %struct.sock*, %struct.sock** %7, align 8
  %192 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %193 = call i32 @sk_msg_free_nocharge(%struct.sock* %191, %struct.sk_msg* %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %18, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, %197
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196, %190
  br label %202

202:                                              ; preds = %201, %171
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.sock*, %struct.sock** %7, align 8
  %207 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %208 = call i32 @sk_msg_free(%struct.sock* %206, %struct.sk_msg* %207)
  %209 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %210 = call i32 @kfree(%struct.sk_msg* %209)
  store %struct.sk_msg* null, %struct.sk_msg** %9, align 8
  store i32 0, i32* %17, align 4
  br label %211

211:                                              ; preds = %205, %202
  br label %231

212:                                              ; preds = %133
  br label %213

213:                                              ; preds = %133, %212
  %214 = load %struct.sock*, %struct.sock** %7, align 8
  %215 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %216 = load i64, i64* %15, align 8
  %217 = call i32 @sk_msg_free_partial(%struct.sock* %214, %struct.sk_msg* %215, i64 %216)
  %218 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %219 = load i64, i64* %15, align 8
  %220 = call i32 @sk_msg_apply_bytes(%struct.sk_psock* %218, i64 %219)
  %221 = load i64, i64* %15, align 8
  %222 = load i64, i64* %16, align 8
  %223 = add nsw i64 %221, %222
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = sub nsw i64 %226, %223
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load i32, i32* @EACCES, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %6, align 4
  br label %292

231:                                              ; preds = %211, %153, %146
  %232 = load i32, i32* %17, align 4
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i64 @likely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %290

238:                                              ; preds = %231
  %239 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %240 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %259, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @__SK_NONE, align 4
  %245 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %246 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %248 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %247, i32 0, i32 3
  %249 = load %struct.sock*, %struct.sock** %248, align 8
  %250 = icmp ne %struct.sock* %249, null
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %253 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %252, i32 0, i32 3
  %254 = load %struct.sock*, %struct.sock** %253, align 8
  %255 = call i32 @sock_put(%struct.sock* %254)
  %256 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %257 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %256, i32 0, i32 3
  store %struct.sock* null, %struct.sock** %257, align 8
  br label %258

258:                                              ; preds = %251, %243
  br label %259

259:                                              ; preds = %258, %238
  %260 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %261 = icmp ne %struct.sk_msg* %260, null
  br i1 %261, label %262, label %289

262:                                              ; preds = %259
  %263 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %264 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %265, align 8
  %267 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %268 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %262
  %276 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %277 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %281 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %275
  br label %29

289:                                              ; preds = %275, %262, %259
  br label %290

290:                                              ; preds = %289, %231
  %291 = load i32, i32* %17, align 4
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %290, %213, %108, %104
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @sk_psock_msg_verdict(%struct.sock*, %struct.sk_psock*, %struct.sk_msg*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sk_msg*, i32) #1

declare dso_local i32 @tcp_bpf_push(%struct.sock*, %struct.sk_msg*, i64, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @sk_msg_free(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @sk_msg_apply_bytes(%struct.sk_psock*, i64) #1

declare dso_local i32 @sk_msg_return(%struct.sock*, %struct.sk_msg*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @tcp_bpf_sendmsg_redir(%struct.sock*, %struct.sk_msg*, i64, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_msg_free_nocharge(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @kfree(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_free_partial(%struct.sock*, %struct.sk_msg*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
