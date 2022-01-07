; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spdadd.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spdadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i32 }
%struct.sadb_address = type { i32, i32 }
%struct.sadb_x_policy = type { i64, i64, i32 }
%struct.xfrm_policy = type { %struct.TYPE_4__, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i64, i8*, i32, i32, i8*, i64, i32, i32, i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.sockaddr_in = type { i64 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i64 0, align 8
@IPSEC_DIR_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IPSEC_POLICY_DISCARD = common dso_local global i64 0, align 8
@XFRM_POLICY_BLOCK = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@XFRM_INF = common dso_local global i8* null, align 8
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_X_SPDUPDATE = common dso_local global i64 0, align 8
@XFRM_MSG_UPDPOLICY = common dso_local global i32 0, align 4
@XFRM_MSG_NEWPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spdadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spdadd(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sadb_lifetime*, align 8
  %13 = alloca %struct.sadb_address*, align 8
  %14 = alloca %struct.sadb_x_policy*, align 8
  %15 = alloca %struct.xfrm_policy*, align 8
  %16 = alloca %struct.km_event, align 4
  %17 = alloca %struct.sadb_x_sec_ctx*, align 8
  %18 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.net* @sock_net(%struct.sock* %19)
  store %struct.net* %20, %struct.net** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @present_and_same_family(i8* %26, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i8**, i8*** %9, align 8
  %37 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35, %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %390

46:                                               ; preds = %35
  %47 = load i8**, i8*** %9, align 8
  %48 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %53, %struct.sadb_x_policy** %14, align 8
  %54 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %55 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %390

62:                                               ; preds = %46
  %63 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %64 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %69 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IPSEC_DIR_MAX, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %62
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %390

76:                                               ; preds = %67
  %77 = load %struct.net*, %struct.net** %10, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %77, i32 %78)
  store %struct.xfrm_policy* %79, %struct.xfrm_policy** %15, align 8
  %80 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %81 = icmp eq %struct.xfrm_policy* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOBUFS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %390

85:                                               ; preds = %76
  %86 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %87 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IPSEC_POLICY_DISCARD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @XFRM_POLICY_BLOCK, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @XFRM_POLICY_ALLOW, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %98 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %100 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %103 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i8**, i8*** %9, align 8
  %105 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to %struct.sadb_address*
  store %struct.sadb_address* %110, %struct.sadb_address** %13, align 8
  %111 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %112 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %113 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 9
  %115 = call i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %111, i32* %114)
  %116 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %117 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %119 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %122 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 8
  store i32 %120, i32* %123, align 4
  %124 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %125 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %128 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 7
  store i32 %126, i32* %129, align 8
  %130 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %131 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @pfkey_proto_to_xfrm(i32 %132)
  %134 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %135 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i8* %133, i8** %136, align 8
  %137 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %138 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %137, i64 1
  %139 = bitcast %struct.sadb_address* %138 to %struct.sockaddr_in*
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %143 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 6
  store i64 %141, i64* %144, align 8
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %95
  %151 = call i8* @htons(i32 65535)
  %152 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %153 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  store i8* %151, i8** %154, align 8
  br label %155

155:                                              ; preds = %150, %95
  %156 = load i8**, i8*** %9, align 8
  %157 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = bitcast i8* %161 to %struct.sadb_address*
  store %struct.sadb_address* %162, %struct.sadb_address** %13, align 8
  %163 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %164 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %165 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 4
  %167 = call i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %163, i32* %166)
  %168 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %169 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %172 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i32 %170, i32* %173, align 8
  %174 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %175 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @pfkey_proto_to_xfrm(i32 %176)
  %178 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %179 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i8* %177, i8** %180, align 8
  %181 = load %struct.sadb_address*, %struct.sadb_address** %13, align 8
  %182 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %181, i64 1
  %183 = bitcast %struct.sadb_address* %182 to %struct.sockaddr_in*
  %184 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %187 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i64 %185, i64* %188, align 8
  %189 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %190 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %155
  %195 = call i8* @htons(i32 65535)
  %196 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %197 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i8* %195, i8** %198, align 8
  br label %199

199:                                              ; preds = %194, %155
  %200 = load i8**, i8*** %9, align 8
  %201 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %200, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %206, %struct.sadb_x_sec_ctx** %17, align 8
  %207 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %208 = icmp ne %struct.sadb_x_sec_ctx* %207, null
  br i1 %208, label %209, label %230

209:                                              ; preds = %199
  %210 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %210, i32 %211)
  store %struct.xfrm_user_sec_ctx* %212, %struct.xfrm_user_sec_ctx** %18, align 8
  %213 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %214 = icmp ne %struct.xfrm_user_sec_ctx* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* @ENOBUFS, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %11, align 4
  br label %383

218:                                              ; preds = %209
  %219 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %220 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %219, i32 0, i32 3
  %221 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %222 = load i32, i32* @GFP_KERNEL, align 4
  %223 = call i32 @security_xfrm_policy_alloc(i32* %220, %struct.xfrm_user_sec_ctx* %221, i32 %222)
  store i32 %223, i32* %11, align 4
  %224 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %225 = call i32 @kfree(%struct.xfrm_user_sec_ctx* %224)
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %383

229:                                              ; preds = %218
  br label %230

230:                                              ; preds = %229, %199
  %231 = load i8*, i8** @XFRM_INF, align 8
  %232 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %233 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  store i8* %231, i8** %234, align 8
  %235 = load i8*, i8** @XFRM_INF, align 8
  %236 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %237 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 6
  store i8* %235, i8** %238, align 8
  %239 = load i8*, i8** @XFRM_INF, align 8
  %240 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %241 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 3
  store i8* %239, i8** %242, align 8
  %243 = load i8*, i8** @XFRM_INF, align 8
  %244 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %245 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 7
  store i8* %243, i8** %246, align 8
  %247 = load i8**, i8*** %9, align 8
  %248 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %247, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = bitcast i8* %252 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %253, %struct.sadb_lifetime** %12, align 8
  %254 = icmp ne %struct.sadb_lifetime* %253, null
  br i1 %254, label %255, label %282

255:                                              ; preds = %230
  %256 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %257 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @_KEY2X(i32 %258)
  %260 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %261 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 7
  store i8* %259, i8** %262, align 8
  %263 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %264 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i8* @_KEY2X(i32 %265)
  %267 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %268 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 6
  store i8* %266, i8** %269, align 8
  %270 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %271 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %274 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 5
  store i32 %272, i32* %275, align 4
  %276 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %277 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %280 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 4
  store i32 %278, i32* %281, align 8
  br label %282

282:                                              ; preds = %255, %230
  %283 = load i8**, i8*** %9, align 8
  %284 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %283, i64 %286
  %288 = load i8*, i8** %287, align 8
  %289 = bitcast i8* %288 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %289, %struct.sadb_lifetime** %12, align 8
  %290 = icmp ne %struct.sadb_lifetime* %289, null
  br i1 %290, label %291, label %318

291:                                              ; preds = %282
  %292 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %293 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @_KEY2X(i32 %294)
  %296 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %297 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 3
  store i8* %295, i8** %298, align 8
  %299 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %300 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = call i8* @_KEY2X(i32 %301)
  %303 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %304 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 2
  store i8* %302, i8** %305, align 8
  %306 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %307 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %310 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  %312 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %12, align 8
  %313 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %316 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  store i32 %314, i32* %317, align 8
  br label %318

318:                                              ; preds = %291, %282
  %319 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %320 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %319, i32 0, i32 1
  store i64 0, i64* %320, align 8
  %321 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %322 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %332

326:                                              ; preds = %318
  %327 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %328 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %329 = call i32 @parse_ipsecrequests(%struct.xfrm_policy* %327, %struct.sadb_x_policy* %328)
  store i32 %329, i32* %11, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  br label %383

332:                                              ; preds = %326, %318
  %333 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %334 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %335, 1
  %337 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %338 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %339 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @SADB_X_SPDUPDATE, align 8
  %342 = icmp ne i64 %340, %341
  %343 = zext i1 %342 to i32
  %344 = call i32 @xfrm_policy_insert(i64 %336, %struct.xfrm_policy* %337, i32 %343)
  store i32 %344, i32* %11, align 4
  %345 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %346 = load i32, i32* %11, align 4
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 0, i32 1
  %350 = call i32 @xfrm_audit_policy_add(%struct.xfrm_policy* %345, i32 %349, i32 1)
  %351 = load i32, i32* %11, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %332
  br label %383

354:                                              ; preds = %332
  %355 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %356 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @SADB_X_SPDUPDATE, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = load i32, i32* @XFRM_MSG_UPDPOLICY, align 4
  %362 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %361, i32* %362, align 4
  br label %366

363:                                              ; preds = %354
  %364 = load i32, i32* @XFRM_MSG_NEWPOLICY, align 4
  %365 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %364, i32* %365, align 4
  br label %366

366:                                              ; preds = %363, %360
  %367 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %368 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 1
  store i32 %369, i32* %370, align 4
  %371 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %372 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 0
  store i32 %373, i32* %374, align 4
  %375 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %376 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %377 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = sub nsw i64 %378, 1
  %380 = call i32 @km_policy_notify(%struct.xfrm_policy* %375, i64 %379, %struct.km_event* %16)
  %381 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %382 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %381)
  store i32 0, i32* %5, align 4
  br label %390

383:                                              ; preds = %353, %331, %228, %215
  %384 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %385 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  store i32 1, i32* %386, align 8
  %387 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %388 = call i32 @xfrm_policy_destroy(%struct.xfrm_policy* %387)
  %389 = load i32, i32* %11, align 4
  store i32 %389, i32* %5, align 4
  br label %390

390:                                              ; preds = %383, %366, %82, %73, %59, %43
  %391 = load i32, i32* %5, align 4
  ret i32 %391
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address*, i32*) #1

declare dso_local i8* @pfkey_proto_to_xfrm(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx*, i32) #1

declare dso_local i32 @security_xfrm_policy_alloc(i32*, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local i32 @kfree(%struct.xfrm_user_sec_ctx*) #1

declare dso_local i8* @_KEY2X(i32) #1

declare dso_local i32 @parse_ipsecrequests(%struct.xfrm_policy*, %struct.sadb_x_policy*) #1

declare dso_local i32 @xfrm_policy_insert(i64, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_add(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i64, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_destroy(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
