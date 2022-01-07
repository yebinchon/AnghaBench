; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spddelete.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spddelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.net = type { i32 }
%struct.sadb_address = type { i32, i32 }
%struct.sadb_x_policy = type { i64 }
%struct.xfrm_policy = type { i32 }
%struct.xfrm_selector = type { i8*, i64, i8*, i32, i32, i8*, i64, i32, i32, i32 }
%struct.km_event = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sadb_x_sec_ctx = type { i32 }
%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.sockaddr_in = type { i64 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_DIR_MAX = common dso_local global i64 0, align 8
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DUMMY_MARK = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFRM_MSG_DELPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spddelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spddelete(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sadb_address*, align 8
  %13 = alloca %struct.sadb_x_policy*, align 8
  %14 = alloca %struct.xfrm_policy*, align 8
  %15 = alloca %struct.xfrm_selector, align 8
  %16 = alloca %struct.km_event, align 8
  %17 = alloca %struct.sadb_x_sec_ctx*, align 8
  %18 = alloca %struct.xfrm_sec_ctx*, align 8
  %19 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call %struct.net* @sock_net(%struct.sock* %20)
  store %struct.net* %21, %struct.net** %10, align 8
  store %struct.xfrm_sec_ctx* null, %struct.xfrm_sec_ctx** %18, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %22, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @present_and_same_family(i8* %27, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load i8**, i8*** %9, align 8
  %38 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36, %4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %214

47:                                               ; preds = %36
  %48 = load i8**, i8*** %9, align 8
  %49 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %54, %struct.sadb_x_policy** %13, align 8
  %55 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %56 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %61 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPSEC_DIR_MAX, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %214

68:                                               ; preds = %59
  %69 = call i32 @memset(%struct.xfrm_selector* %15, i32 0, i32 64)
  %70 = load i8**, i8*** %9, align 8
  %71 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.sadb_address*
  store %struct.sadb_address* %76, %struct.sadb_address** %12, align 8
  %77 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %78 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 8
  %79 = call i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %77, i32* %78)
  %80 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 9
  store i32 %79, i32* %80, align 8
  %81 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %82 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 7
  store i32 %83, i32* %84, align 8
  %85 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %86 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @pfkey_proto_to_xfrm(i32 %87)
  %89 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %91 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %90, i64 1
  %92 = bitcast %struct.sadb_address* %91 to %struct.sockaddr_in*
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 6
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %68
  %100 = call i8* @htons(i32 65535)
  %101 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 5
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %99, %68
  %103 = load i8**, i8*** %9, align 8
  %104 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to %struct.sadb_address*
  store %struct.sadb_address* %109, %struct.sadb_address** %12, align 8
  %110 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %111 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 4
  %112 = call i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %110, i32* %111)
  %113 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %114 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 3
  store i32 %115, i32* %116, align 8
  %117 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %118 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @pfkey_proto_to_xfrm(i32 %119)
  %121 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 2
  store i8* %120, i8** %121, align 8
  %122 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %123 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %122, i64 1
  %124 = bitcast %struct.sadb_address* %123 to %struct.sockaddr_in*
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 1
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %102
  %132 = call i8* @htons(i32 65535)
  %133 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 0
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %131, %102
  %135 = load i8**, i8*** %9, align 8
  %136 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = bitcast i8* %140 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %141, %struct.sadb_x_sec_ctx** %17, align 8
  %142 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %143 = icmp ne %struct.sadb_x_sec_ctx* %142, null
  br i1 %143, label %144, label %164

144:                                              ; preds = %134
  %145 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %17, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %145, i32 %146)
  store %struct.xfrm_user_sec_ctx* %147, %struct.xfrm_user_sec_ctx** %19, align 8
  %148 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %19, align 8
  %149 = icmp ne %struct.xfrm_user_sec_ctx* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %214

153:                                              ; preds = %144
  %154 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %19, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx** %18, %struct.xfrm_user_sec_ctx* %154, i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %19, align 8
  %158 = call i32 @kfree(%struct.xfrm_user_sec_ctx* %157)
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %5, align 4
  br label %214

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %134
  %165 = load %struct.net*, %struct.net** %10, align 8
  %166 = load i32, i32* @DUMMY_MARK, align 4
  %167 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %168 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %169 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %170, 1
  %172 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %18, align 8
  %173 = call %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net* %165, i32 %166, i32 0, i32 %167, i64 %171, %struct.xfrm_selector* %15, %struct.xfrm_sec_ctx* %172, i32 1, i32* %11)
  store %struct.xfrm_policy* %173, %struct.xfrm_policy** %14, align 8
  %174 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %18, align 8
  %175 = call i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx* %174)
  %176 = load %struct.xfrm_policy*, %struct.xfrm_policy** %14, align 8
  %177 = icmp eq %struct.xfrm_policy* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %164
  %179 = load i32, i32* @ENOENT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %214

181:                                              ; preds = %164
  %182 = load %struct.xfrm_policy*, %struct.xfrm_policy** %14, align 8
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 0, i32 1
  %187 = call i32 @xfrm_audit_policy_delete(%struct.xfrm_policy* %182, i32 %186, i32 1)
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %210

191:                                              ; preds = %181
  %192 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %193 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 3
  store i32 %194, i32* %195, align 4
  %196 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %197 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %203 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 0
  store i32 %202, i32* %203, align 8
  %204 = load %struct.xfrm_policy*, %struct.xfrm_policy** %14, align 8
  %205 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %206 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, 1
  %209 = call i32 @km_policy_notify(%struct.xfrm_policy* %204, i64 %208, %struct.km_event* %16)
  br label %210

210:                                              ; preds = %191, %190
  %211 = load %struct.xfrm_policy*, %struct.xfrm_policy** %14, align 8
  %212 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %211)
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %210, %178, %161, %150, %65, %44
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local i32 @memset(%struct.xfrm_selector*, i32, i32) #1

declare dso_local i32 @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address*, i32*) #1

declare dso_local i8* @pfkey_proto_to_xfrm(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx*, i32) #1

declare dso_local i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local i32 @kfree(%struct.xfrm_user_sec_ctx*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net*, i32, i32, i32, i64, %struct.xfrm_selector*, %struct.xfrm_sec_ctx*, i32, i32*) #1

declare dso_local i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx*) #1

declare dso_local i32 @xfrm_audit_policy_delete(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i64, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
