; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_state_extra.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_state_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i64, i64, %struct.TYPE_4__, i32, i32*, %struct.TYPE_3__, i32, i64, i32*, i32*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.xfrm_usersa_info = type { i32 }
%struct.sk_buff = type { i32 }

@XFRMA_SA_EXTRA_FLAGS = common dso_local global i32 0, align 4
@XFRMA_COADDR = common dso_local global i32 0, align 4
@XFRMA_LASTUSED = common dso_local global i32 0, align 4
@XFRMA_PAD = common dso_local global i32 0, align 4
@XFRMA_ALG_AEAD = common dso_local global i32 0, align 4
@XFRMA_ALG_AUTH_TRUNC = common dso_local global i32 0, align 4
@XFRMA_ALG_CRYPT = common dso_local global i32 0, align 4
@XFRMA_ALG_COMP = common dso_local global i32 0, align 4
@XFRMA_ENCAP = common dso_local global i32 0, align 4
@XFRMA_TFCPAD = common dso_local global i32 0, align 4
@XFRMA_REPLAY_ESN_VAL = common dso_local global i32 0, align 4
@XFRMA_REPLAY_VAL = common dso_local global i32 0, align 4
@XFRMA_IF_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_usersa_info*, %struct.sk_buff*)* @copy_to_user_state_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_user_state_extra(%struct.xfrm_state* %0, %struct.xfrm_usersa_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_usersa_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %5, align 8
  %10 = call i32 @copy_to_user_state(%struct.xfrm_state* %8, %struct.xfrm_usersa_info* %9)
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* @XFRMA_SA_EXTRA_FLAGS, align 4
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @nla_put_u32(%struct.sk_buff* %17, i32 %18, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %264

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 14
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @XFRMA_COADDR, align 4
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 14
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @nla_put(%struct.sk_buff* %34, i32 %35, i32 4, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %264

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 13
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32, i32* @XFRMA_LASTUSED, align 4
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @XFRMA_PAD, align 4
  %56 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %50, i32 %51, i64 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %264

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 12
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* @XFRMA_ALG_AEAD, align 4
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @aead_len(i32* %71)
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %74 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %73, i32 0, i32 12
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @nla_put(%struct.sk_buff* %67, i32 %68, i32 %72, i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %264

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 11
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %88 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %87, i32 0, i32 11
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i32 @copy_to_user_auth(i32* %89, %struct.sk_buff* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load i32, i32* @XFRMA_ALG_AUTH_TRUNC, align 4
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %97, i32 0, i32 11
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @xfrm_alg_auth_len(i32* %99)
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 11
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @nla_put(%struct.sk_buff* %95, i32 %96, i32 %100, i32* %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %94, %86
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %264

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %81
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load i32, i32* @XFRMA_ALG_CRYPT, align 4
  %118 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %119 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %118, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @xfrm_alg_len(i32* %120)
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %123 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %122, i32 0, i32 10
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @nla_put(%struct.sk_buff* %116, i32 %117, i32 %121, i32* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %264

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %110
  %131 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %132 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %131, i32 0, i32 9
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i32, i32* @XFRMA_ALG_COMP, align 4
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 9
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @nla_put(%struct.sk_buff* %136, i32 %137, i32 4, i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %264

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %130
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %148 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %147, i32 0, i32 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = load i32, i32* @XFRMA_ENCAP, align 4
  %154 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %155 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @nla_put(%struct.sk_buff* %152, i32 %153, i32 4, i32* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %264

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %146
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %164 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = load i32, i32* @XFRMA_TFCPAD, align 4
  %170 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %171 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @nla_put_u32(%struct.sk_buff* %168, i32 %169, i64 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %264

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %181 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %180, i32 0, i32 6
  %182 = call i32 @xfrm_mark_put(%struct.sk_buff* %179, i32* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %264

186:                                              ; preds = %178
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %189 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = call i32 @xfrm_smark_put(%struct.sk_buff* %187, i32* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %264

195:                                              ; preds = %186
  %196 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %197 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = load i32, i32* @XFRMA_REPLAY_ESN_VAL, align 4
  %203 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %204 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @xfrm_replay_state_esn_len(i32* %205)
  %207 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %208 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @nla_put(%struct.sk_buff* %201, i32 %202, i32 %206, i32* %209)
  store i32 %210, i32* %7, align 4
  br label %217

211:                                              ; preds = %195
  %212 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %213 = load i32, i32* @XFRMA_REPLAY_VAL, align 4
  %214 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %215 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %214, i32 0, i32 3
  %216 = call i32 @nla_put(%struct.sk_buff* %212, i32 %213, i32 4, i32* %215)
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %211, %200
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %264

221:                                              ; preds = %217
  %222 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %223 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %229 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %228, i32 0, i32 2
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = call i32 @copy_user_offload(%struct.TYPE_4__* %229, %struct.sk_buff* %230)
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %227, %221
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %264

236:                                              ; preds = %232
  %237 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %238 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %236
  %242 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %243 = load i32, i32* @XFRMA_IF_ID, align 4
  %244 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %245 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @nla_put_u32(%struct.sk_buff* %242, i32 %243, i64 %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %264

251:                                              ; preds = %241
  br label %252

252:                                              ; preds = %251, %236
  %253 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %254 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %259 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %262 = call i32 @copy_sec_ctx(i64 %260, %struct.sk_buff* %261)
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %257, %252
  br label %264

264:                                              ; preds = %263, %250, %235, %220, %194, %185, %176, %160, %144, %128, %108, %79, %59, %42, %26
  %265 = load i32, i32* %7, align 4
  ret i32 %265
}

declare dso_local i32 @copy_to_user_state(%struct.xfrm_state*, %struct.xfrm_usersa_info*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @aead_len(i32*) #1

declare dso_local i32 @copy_to_user_auth(i32*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_alg_auth_len(i32*) #1

declare dso_local i32 @xfrm_alg_len(i32*) #1

declare dso_local i32 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_smark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_replay_state_esn_len(i32*) #1

declare dso_local i32 @copy_user_offload(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @copy_sec_ctx(i64, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
