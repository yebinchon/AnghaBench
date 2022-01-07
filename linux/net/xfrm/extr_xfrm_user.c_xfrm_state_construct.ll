; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_state_construct.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_state_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_6__, i32, i32, i32, i8*, %struct.TYPE_4__, i32, i32*, i8*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.nlattr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XFRMA_SA_EXTRA_FLAGS = common dso_local global i64 0, align 8
@XFRMA_ALG_AEAD = common dso_local global i64 0, align 8
@XFRMA_ALG_AUTH_TRUNC = common dso_local global i64 0, align 8
@XFRMA_ALG_AUTH = common dso_local global i64 0, align 8
@XFRMA_ALG_CRYPT = common dso_local global i64 0, align 8
@xfrm_calg_get_byname = common dso_local global i32 0, align 4
@XFRMA_ALG_COMP = common dso_local global i64 0, align 8
@XFRMA_ENCAP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@XFRMA_TFCPAD = common dso_local global i64 0, align 8
@XFRMA_COADDR = common dso_local global i64 0, align 8
@XFRMA_IF_ID = common dso_local global i64 0, align 8
@XFRMA_OFFLOAD_DEV = common dso_local global i64 0, align 8
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@XFRMA_REPLAY_ESN_VAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@XFRM_AE_ETH_M = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net*, %struct.xfrm_usersa_info*, %struct.nlattr**, i32*)* @xfrm_state_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @xfrm_state_construct(%struct.net* %0, %struct.xfrm_usersa_info* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_usersa_info*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %12)
  store %struct.xfrm_state* %13, %struct.xfrm_state** %10, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %17 = icmp ne %struct.xfrm_state* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %283

19:                                               ; preds = %4
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %21 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %22 = call i32 @copy_from_user_state(%struct.xfrm_state* %20, %struct.xfrm_usersa_info* %21)
  %23 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %24 = load i64, i64* @XFRMA_SA_EXTRA_FLAGS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i64, i64* @XFRMA_SA_EXTRA_FLAGS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i8* @nla_get_u32(%struct.nlattr* %32)
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  br label %37

37:                                               ; preds = %28, %19
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %39 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %40 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @attach_aead(%struct.xfrm_state* %38, %struct.nlattr* %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %276

46:                                               ; preds = %37
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 12
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %53 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @attach_auth_trunc(i32* %48, i32* %51, %struct.nlattr* %55)
  store i32 %56, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %276

59:                                               ; preds = %46
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 12
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %72 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i32 @attach_auth(i32* %67, i32* %70, %struct.nlattr* %74)
  store i32 %75, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %276

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %81 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %82 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i32 @attach_crypt(%struct.xfrm_state* %80, %struct.nlattr* %84)
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %276

88:                                               ; preds = %79
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %90 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %89, i32 0, i32 11
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* @xfrm_calg_get_byname, align 4
  %95 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %96 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i32 @attach_one_algo(i32* %90, i32* %93, i32 %94, %struct.nlattr* %98)
  store i32 %99, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %276

102:                                              ; preds = %88
  %103 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %104 = load i64, i64* @XFRMA_ENCAP, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = icmp ne %struct.nlattr* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %110 = load i64, i64* @XFRMA_ENCAP, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i32 @nla_data(%struct.nlattr* %112)
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kmemdup(i32 %113, i32 4, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 10
  store i32* %116, i32** %118, align 8
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 10
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  br label %276

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %102
  %126 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %127 = load i64, i64* @XFRMA_TFCPAD, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %133 = load i64, i64* @XFRMA_TFCPAD, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %132, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = call i8* @nla_get_u32(%struct.nlattr* %135)
  %137 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %138 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %131, %125
  %140 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %141 = load i64, i64* @XFRMA_COADDR, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = icmp ne %struct.nlattr* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %139
  %146 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %147 = load i64, i64* @XFRMA_COADDR, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %146, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = call i32 @nla_data(%struct.nlattr* %149)
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i8* @kmemdup(i32 %150, i32 4, i32 %151)
  %153 = bitcast i8* %152 to i32*
  %154 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %155 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %154, i32 0, i32 8
  store i32* %153, i32** %155, align 8
  %156 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %157 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %156, i32 0, i32 8
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  br label %276

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %139
  %163 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %164 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %165 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %164, i32 0, i32 7
  %166 = call i32 @xfrm_mark_get(%struct.nlattr** %163, i32* %165)
  %167 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %168 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %169 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = call i32 @xfrm_smark_init(%struct.nlattr** %167, i32* %170)
  %172 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %173 = load i64, i64* @XFRMA_IF_ID, align 8
  %174 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %172, i64 %173
  %175 = load %struct.nlattr*, %struct.nlattr** %174, align 8
  %176 = icmp ne %struct.nlattr* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %162
  %178 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %179 = load i64, i64* @XFRMA_IF_ID, align 8
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %178, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = call i8* @nla_get_u32(%struct.nlattr* %181)
  %183 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %184 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %183, i32 0, i32 5
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %177, %162
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %187 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %188 = load i64, i64* @XFRMA_OFFLOAD_DEV, align 8
  %189 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %187, i64 %188
  %190 = load %struct.nlattr*, %struct.nlattr** %189, align 8
  %191 = call i32 @__xfrm_init_state(%struct.xfrm_state* %186, i32 0, %struct.nlattr* %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %276

195:                                              ; preds = %185
  %196 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %197 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %196, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %203 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %204 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %203, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = call i32 @nla_data(%struct.nlattr* %206)
  %208 = call i32 @security_xfrm_state_alloc(%struct.xfrm_state* %202, i32 %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %276

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %195
  %214 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %215 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %214, i32 0, i32 4
  %216 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %217 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %216, i32 0, i32 3
  %218 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %219 = load i64, i64* @XFRMA_REPLAY_ESN_VAL, align 8
  %220 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %218, i64 %219
  %221 = load %struct.nlattr*, %struct.nlattr** %220, align 8
  %222 = call i32 @xfrm_alloc_replay_state_esn(i32* %215, i32* %217, %struct.nlattr* %221)
  store i32 %222, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %276

225:                                              ; preds = %213
  %226 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %227 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %230 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.net*, %struct.net** %6, align 8
  %233 = getelementptr inbounds %struct.net, %struct.net* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %237 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.net*, %struct.net** %6, align 8
  %239 = getelementptr inbounds %struct.net, %struct.net* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @HZ, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load i32, i32* @XFRM_AE_ETH_M, align 4
  %245 = sdiv i32 %243, %244
  %246 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %247 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %249 = call i32 @xfrm_init_replay(%struct.xfrm_state* %248)
  store i32 %249, i32* %11, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %225
  br label %276

252:                                              ; preds = %225
  %253 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %254 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %255 = call i32 @xfrm_update_ae_params(%struct.xfrm_state* %253, %struct.nlattr** %254, i32 0)
  %256 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %257 = load i64, i64* @XFRMA_OFFLOAD_DEV, align 8
  %258 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %256, i64 %257
  %259 = load %struct.nlattr*, %struct.nlattr** %258, align 8
  %260 = icmp ne %struct.nlattr* %259, null
  br i1 %260, label %261, label %274

261:                                              ; preds = %252
  %262 = load %struct.net*, %struct.net** %6, align 8
  %263 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %264 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %265 = load i64, i64* @XFRMA_OFFLOAD_DEV, align 8
  %266 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %264, i64 %265
  %267 = load %struct.nlattr*, %struct.nlattr** %266, align 8
  %268 = call i32 @nla_data(%struct.nlattr* %267)
  %269 = call i32 @xfrm_dev_state_add(%struct.net* %262, %struct.xfrm_state* %263, i32 %268)
  store i32 %269, i32* %11, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  br label %276

273:                                              ; preds = %261
  br label %274

274:                                              ; preds = %273, %252
  %275 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  store %struct.xfrm_state* %275, %struct.xfrm_state** %5, align 8
  br label %286

276:                                              ; preds = %272, %251, %224, %211, %194, %160, %123, %101, %87, %77, %58, %45
  %277 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %278 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %279 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 4
  %281 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %282 = call i32 @xfrm_state_put(%struct.xfrm_state* %281)
  br label %283

283:                                              ; preds = %276, %18
  %284 = load i32, i32* %11, align 4
  %285 = load i32*, i32** %9, align 8
  store i32 %284, i32* %285, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  br label %286

286:                                              ; preds = %283, %274
  %287 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  ret %struct.xfrm_state* %287
}

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i32 @copy_from_user_state(%struct.xfrm_state*, %struct.xfrm_usersa_info*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @attach_aead(%struct.xfrm_state*, %struct.nlattr*) #1

declare dso_local i32 @attach_auth_trunc(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @attach_auth(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @attach_crypt(%struct.xfrm_state*, %struct.nlattr*) #1

declare dso_local i32 @attach_one_algo(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_smark_init(%struct.nlattr**, i32*) #1

declare dso_local i32 @__xfrm_init_state(%struct.xfrm_state*, i32, %struct.nlattr*) #1

declare dso_local i32 @security_xfrm_state_alloc(%struct.xfrm_state*, i32) #1

declare dso_local i32 @xfrm_alloc_replay_state_esn(i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @xfrm_init_replay(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_update_ae_params(%struct.xfrm_state*, %struct.nlattr**, i32) #1

declare dso_local i32 @xfrm_dev_state_add(%struct.net*, %struct.xfrm_state*, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
