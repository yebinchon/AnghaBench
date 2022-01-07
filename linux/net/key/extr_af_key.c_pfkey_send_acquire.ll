; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_send_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_send_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.xfrm_sec_ctx* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_policy = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i32, i64, i64, i32, i32, i32 }
%struct.sadb_address = type { i32, i8*, i64, i64, i32 }
%struct.sadb_x_policy = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_ACQUIRE = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i32 0, align 4
@XFRM_POLICY_OUT = common dso_local global i64 0, align 8
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@BROADCAST_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*)* @pfkey_send_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_send_acquire(%struct.xfrm_state* %0, %struct.xfrm_tmpl* %1, %struct.xfrm_policy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_tmpl*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca %struct.sadb_address*, align 8
  %11 = alloca %struct.sadb_x_policy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sadb_x_sec_ctx*, align 8
  %15 = alloca %struct.xfrm_sec_ctx*, align 8
  %16 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %6, align 8
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pfkey_sockaddr_size(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %307

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = add i64 136, %30
  %32 = add i64 %31, 40
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPPROTO_AH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %42 = call i64 @count_ah_combs(%struct.xfrm_tmpl* %41)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %62

47:                                               ; preds = %27
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPPROTO_ESP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %56 = call i64 @count_esp_combs(%struct.xfrm_tmpl* %55)
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 3
  %65 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %64, align 8
  store %struct.xfrm_sec_ctx* %65, %struct.xfrm_sec_ctx** %15, align 8
  %66 = icmp ne %struct.xfrm_sec_ctx* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %69 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PFKEY_ALIGN8(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 20, %73
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 16
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call %struct.sk_buff* @alloc_skb(i32 %81, i32 %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = icmp eq %struct.sk_buff* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %307

89:                                               ; preds = %79
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i8* @skb_put(%struct.sk_buff* %90, i32 56)
  %92 = bitcast i8* %91 to %struct.sadb_msg*
  store %struct.sadb_msg* %92, %struct.sadb_msg** %9, align 8
  %93 = load i32, i32* @PF_KEY_V2, align 4
  %94 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %95 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @SADB_ACQUIRE, align 4
  %97 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %98 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %100 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pfkey_proto2satype(i64 %102)
  %104 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %105 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = udiv i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %111 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %113 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %115 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = call i32 (...) @get_acqseq()
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %121 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %120, i32 0, i32 2
  store i32 %116, i32* %121, align 8
  %122 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %123 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 40, %126
  %128 = trunc i64 %127 to i32
  %129 = call i8* @skb_put(%struct.sk_buff* %124, i32 %128)
  %130 = bitcast i8* %129 to %struct.sadb_address*
  store %struct.sadb_address* %130, %struct.sadb_address** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 40, %132
  %134 = udiv i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %137 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %139 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %140 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %142 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %144 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %146 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %149 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %148, i64 1
  %150 = bitcast %struct.sadb_address* %149 to %struct.sockaddr*
  %151 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %152 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @pfkey_sockaddr_fill(i32* %147, i32 0, %struct.sockaddr* %150, i32 %154)
  %156 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %157 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %159 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %89
  %163 = call i32 (...) @BUG()
  br label %164

164:                                              ; preds = %162, %89
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 40, %167
  %169 = trunc i64 %168 to i32
  %170 = call i8* @skb_put(%struct.sk_buff* %165, i32 %169)
  %171 = bitcast i8* %170 to %struct.sadb_address*
  store %struct.sadb_address* %171, %struct.sadb_address** %10, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 40, %173
  %175 = udiv i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %178 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %180 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %181 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %183 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %185 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %187 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %190 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %189, i64 1
  %191 = bitcast %struct.sadb_address* %190 to %struct.sockaddr*
  %192 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %193 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @pfkey_sockaddr_fill(i32* %188, i32 0, %struct.sockaddr* %191, i32 %195)
  %197 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %198 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %200 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %164
  %204 = call i32 (...) @BUG()
  br label %205

205:                                              ; preds = %203, %164
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = call i8* @skb_put(%struct.sk_buff* %206, i32 40)
  %208 = bitcast i8* %207 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %208, %struct.sadb_x_policy** %11, align 8
  %209 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %210 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %209, i32 0, i32 0
  store i32 10, i32* %210, align 8
  %211 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %212 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %213 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @IPSEC_POLICY_IPSEC, align 4
  %215 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %216 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %218 = add nsw i64 %217, 1
  %219 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %220 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %219, i32 0, i32 4
  store i64 %218, i64* %220, align 8
  %221 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %222 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %221, i32 0, i32 3
  store i64 0, i64* %222, align 8
  %223 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %224 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %227 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %229 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %232 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %234 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @IPPROTO_AH, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %205
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %242 = call i32 @dump_ah_combs(%struct.sk_buff* %240, %struct.xfrm_tmpl* %241)
  br label %255

243:                                              ; preds = %205
  %244 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %245 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @IPPROTO_ESP, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %252 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %253 = call i32 @dump_esp_combs(%struct.sk_buff* %251, %struct.xfrm_tmpl* %252)
  br label %254

254:                                              ; preds = %250, %243
  br label %255

255:                                              ; preds = %254, %239
  %256 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %257 = icmp ne %struct.xfrm_sec_ctx* %256, null
  br i1 %257, label %258, label %300

258:                                              ; preds = %255
  %259 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = add i64 20, %261
  %263 = trunc i64 %262 to i32
  %264 = call i8* @skb_put(%struct.sk_buff* %259, i32 %263)
  %265 = bitcast i8* %264 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %265, %struct.sadb_x_sec_ctx** %14, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = add i64 20, %267
  %269 = udiv i64 %268, 4
  %270 = trunc i64 %269 to i32
  %271 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %272 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %274 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %275 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 4
  %276 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %277 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %280 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  %281 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %282 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %285 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 4
  %286 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %287 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %290 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %14, align 8
  %292 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %291, i64 1
  %293 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %294 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %15, align 8
  %297 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %292, i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %258, %255
  %301 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %302 = load i32, i32* @GFP_ATOMIC, align 4
  %303 = load i32, i32* @BROADCAST_REGISTERED, align 4
  %304 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %305 = call i32 @xs_net(%struct.xfrm_state* %304)
  %306 = call i32 @pfkey_broadcast(%struct.sk_buff* %301, i32 %302, i32 %303, i32* null, i32 %305)
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %300, %86, %24
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local i64 @count_ah_combs(%struct.xfrm_tmpl*) #1

declare dso_local i64 @count_esp_combs(%struct.xfrm_tmpl*) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_proto2satype(i64) #1

declare dso_local i32 @get_acqseq(...) #1

declare dso_local i8* @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dump_ah_combs(%struct.sk_buff*, %struct.xfrm_tmpl*) #1

declare dso_local i32 @dump_esp_combs(%struct.sk_buff*, %struct.xfrm_tmpl*) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
