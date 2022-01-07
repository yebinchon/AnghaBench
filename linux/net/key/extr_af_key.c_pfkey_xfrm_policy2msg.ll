; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i64, i32, i32, %struct.xfrm_sec_ctx*, %struct.xfrm_tmpl*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_8__ }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i64, i32, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sadb_msg = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sadb_address = type { i32, i64, i32, i8*, i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i8*, i8*, i32 }
%struct.sadb_x_policy = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sadb_x_ipsecrequest = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_CURRENT = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@IPSEC_POLICY_DISCARD = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i64 0, align 8
@IPSEC_POLICY_IPSEC = common dso_local global i32 0, align 4
@IPSEC_POLICY_NONE = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_LEVEL_REQUIRE = common dso_local global i32 0, align 4
@IPSEC_LEVEL_UNIQUE = common dso_local global i32 0, align 4
@IPSEC_LEVEL_USE = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_policy*, i32)* @pfkey_xfrm_policy2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_xfrm_policy2msg(%struct.sk_buff* %0, %struct.xfrm_policy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca %struct.sadb_address*, align 8
  %10 = alloca %struct.sadb_lifetime*, align 8
  %11 = alloca %struct.sadb_x_policy*, align 8
  %12 = alloca %struct.sadb_x_sec_ctx*, align 8
  %13 = alloca %struct.xfrm_sec_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xfrm_tmpl*, align 8
  %19 = alloca %struct.sadb_x_ipsecrequest*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pfkey_sockaddr_size(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pfkey_sockaddr_len(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %33 = call i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i8* @skb_put(%struct.sk_buff* %34, i32 32)
  %36 = bitcast i8* %35 to %struct.sadb_msg*
  store %struct.sadb_msg* %36, %struct.sadb_msg** %8, align 8
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %38 = bitcast %struct.sadb_msg* %37 to %struct.sadb_x_ipsecrequest*
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @memset(%struct.sadb_x_ipsecrequest* %38, i32 0, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 40, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @skb_put(%struct.sk_buff* %41, i32 %45)
  %47 = bitcast i8* %46 to %struct.sadb_address*
  store %struct.sadb_address* %47, %struct.sadb_address** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 40, %49
  %51 = udiv i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %54 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %56 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %57 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @pfkey_proto_from_xfrm(i32 %61)
  %63 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %64 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %70 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %72 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %81 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %80, i64 1
  %82 = bitcast %struct.sadb_address* %81 to %struct.sockaddr*
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %84 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pfkey_sockaddr_fill(i32* %75, i32 %79, %struct.sockaddr* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %3
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %3
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 40, %93
  %95 = trunc i64 %94 to i32
  %96 = call i8* @skb_put(%struct.sk_buff* %91, i32 %95)
  %97 = bitcast i8* %96 to %struct.sadb_address*
  store %struct.sadb_address* %97, %struct.sadb_address** %9, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 40, %99
  %101 = udiv i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %104 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %106 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %107 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %109 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @pfkey_proto_from_xfrm(i32 %111)
  %113 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %114 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %116 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %120 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %122 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %124 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %127 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %131 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %130, i64 1
  %132 = bitcast %struct.sadb_address* %131 to %struct.sockaddr*
  %133 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %134 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pfkey_sockaddr_fill(i32* %125, i32 %129, %struct.sockaddr* %132, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = call i8* @skb_put(%struct.sk_buff* %137, i32 40)
  %139 = bitcast i8* %138 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %139, %struct.sadb_lifetime** %10, align 8
  %140 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %141 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %140, i32 0, i32 0
  store i32 10, i32* %141, align 8
  %142 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %143 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %144 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @_X2KEY(i32 %148)
  %150 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %151 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %153 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @_X2KEY(i32 %155)
  %157 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %158 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %160 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %164 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %166 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %170 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = call i8* @skb_put(%struct.sk_buff* %171, i32 40)
  %173 = bitcast i8* %172 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %173, %struct.sadb_lifetime** %10, align 8
  %174 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %175 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %174, i32 0, i32 0
  store i32 10, i32* %175, align 8
  %176 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %177 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %178 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  %179 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %180 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @_X2KEY(i32 %182)
  %184 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %185 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %187 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @_X2KEY(i32 %189)
  %191 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %192 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %194 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %198 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %200 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %204 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = call i8* @skb_put(%struct.sk_buff* %205, i32 40)
  %207 = bitcast i8* %206 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %207, %struct.sadb_lifetime** %10, align 8
  %208 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %209 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %208, i32 0, i32 0
  store i32 10, i32* %209, align 8
  %210 = load i32, i32* @SADB_EXT_LIFETIME_CURRENT, align 4
  %211 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %212 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  %213 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %214 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %213, i32 0, i32 7
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %218 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %217, i32 0, i32 4
  store i8* %216, i8** %218, align 8
  %219 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %220 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %224 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %226 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %230 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %232 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %10, align 8
  %236 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %238 = call i8* @skb_put(%struct.sk_buff* %237, i32 32)
  %239 = bitcast i8* %238 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %239, %struct.sadb_x_policy** %11, align 8
  %240 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %241 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %240, i32 0, i32 0
  store i32 8, i32* %241, align 8
  %242 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %243 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %244 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @IPSEC_POLICY_DISCARD, align 4
  %246 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %247 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 8
  %248 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %249 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @XFRM_POLICY_ALLOW, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %90
  %254 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %255 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32, i32* @IPSEC_POLICY_IPSEC, align 4
  %260 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %261 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 8
  br label %266

262:                                              ; preds = %253
  %263 = load i32, i32* @IPSEC_POLICY_NONE, align 4
  %264 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %265 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %262, %258
  br label %267

267:                                              ; preds = %266, %90
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  %270 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %271 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %273 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %272, i32 0, i32 4
  store i64 0, i64* %273, align 8
  %274 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %275 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %278 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %280 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %283 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %407, %267
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %287 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %410

290:                                              ; preds = %284
  %291 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %292 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %291, i32 0, i32 4
  %293 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %293, i64 %295
  store %struct.xfrm_tmpl* %296, %struct.xfrm_tmpl** %18, align 8
  store i32 32, i32* %20, align 4
  %297 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %298 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %311

302:                                              ; preds = %290
  %303 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %304 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @pfkey_sockaddr_len(i32 %305)
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %17, align 4
  %308 = mul nsw i32 %307, 2
  %309 = load i32, i32* %20, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %20, align 4
  br label %316

311:                                              ; preds = %290
  %312 = load i32, i32* %17, align 4
  %313 = mul nsw i32 2, %312
  %314 = load i32, i32* %15, align 4
  %315 = sub nsw i32 %314, %313
  store i32 %315, i32* %15, align 4
  br label %316

316:                                              ; preds = %311, %302
  %317 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %318 = load i32, i32* %20, align 4
  %319 = call i8* @skb_put(%struct.sk_buff* %317, i32 %318)
  %320 = bitcast i8* %319 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %320, %struct.sadb_x_ipsecrequest** %19, align 8
  %321 = load i32, i32* %20, align 4
  %322 = sdiv i32 %321, 8
  %323 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %11, align 8
  %324 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 8
  %327 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %328 = call i32 @memset(%struct.sadb_x_ipsecrequest* %327, i32 0, i32 32)
  %329 = load i32, i32* %20, align 4
  %330 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %331 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %333 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %337 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %336, i32 0, i32 6
  store i32 %335, i32* %337, align 4
  %338 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %339 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @pfkey_mode_from_xfrm(i64 %340)
  store i32 %341, i32* %21, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %316
  %344 = load i32, i32* @EINVAL, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %4, align 4
  br label %467

346:                                              ; preds = %316
  %347 = load i32, i32* %21, align 4
  %348 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %349 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* @IPSEC_LEVEL_REQUIRE, align 4
  %351 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %352 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %351, i32 0, i32 5
  store i32 %350, i32* %352, align 8
  %353 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %354 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %346
  %358 = load i32, i32* @IPSEC_LEVEL_UNIQUE, align 4
  %359 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %360 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %359, i32 0, i32 5
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %357, %346
  %362 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %363 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %362, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = load i32, i32* @IPSEC_LEVEL_USE, align 4
  %368 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %369 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %368, i32 0, i32 5
  store i32 %367, i32* %369, align 8
  br label %370

370:                                              ; preds = %366, %361
  %371 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %372 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %375 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %374, i32 0, i32 4
  store i64 %373, i64* %375, align 8
  %376 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %377 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %406

381:                                              ; preds = %370
  %382 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %19, align 8
  %383 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %382, i64 1
  %384 = bitcast %struct.sadb_x_ipsecrequest* %383 to i8*
  %385 = bitcast i8* %384 to i32*
  store i32* %385, i32** %22, align 8
  %386 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %387 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %386, i32 0, i32 3
  %388 = load i32*, i32** %22, align 8
  %389 = bitcast i32* %388 to %struct.sockaddr*
  %390 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %391 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @pfkey_sockaddr_fill(i32* %387, i32 0, %struct.sockaddr* %389, i32 %392)
  %394 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %395 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 0
  %397 = load i32*, i32** %22, align 8
  %398 = load i32, i32* %17, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = bitcast i32* %400 to %struct.sockaddr*
  %402 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %403 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @pfkey_sockaddr_fill(i32* %396, i32 0, %struct.sockaddr* %401, i32 %404)
  br label %406

406:                                              ; preds = %381, %370
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %14, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %14, align 4
  br label %284

410:                                              ; preds = %284
  %411 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %412 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %411, i32 0, i32 3
  %413 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %412, align 8
  store %struct.xfrm_sec_ctx* %413, %struct.xfrm_sec_ctx** %13, align 8
  %414 = icmp ne %struct.xfrm_sec_ctx* %413, null
  br i1 %414, label %415, label %455

415:                                              ; preds = %410
  %416 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %417 = call i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy* %416)
  store i32 %417, i32* %23, align 4
  %418 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %419 = load i32, i32* %23, align 4
  %420 = call i8* @skb_put(%struct.sk_buff* %418, i32 %419)
  %421 = bitcast i8* %420 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %421, %struct.sadb_x_sec_ctx** %12, align 8
  %422 = load i32, i32* %23, align 4
  %423 = sext i32 %422 to i64
  %424 = udiv i64 %423, 4
  %425 = trunc i64 %424 to i32
  %426 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %427 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %426, i32 0, i32 0
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %429 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %430 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %429, i32 0, i32 4
  store i32 %428, i32* %430, align 4
  %431 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %432 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %435 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %434, i32 0, i32 3
  store i32 %433, i32* %435, align 4
  %436 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %437 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %440 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %439, i32 0, i32 2
  store i32 %438, i32* %440, align 4
  %441 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %442 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %445 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 4
  %446 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %447 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %446, i64 1
  %448 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %449 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %13, align 8
  %452 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %447, i32 %450, i32 %453)
  br label %455

455:                                              ; preds = %415, %410
  %456 = load i32, i32* %15, align 4
  %457 = sext i32 %456 to i64
  %458 = udiv i64 %457, 4
  %459 = trunc i64 %458 to i32
  %460 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %461 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %460, i32 0, i32 2
  store i32 %459, i32* %461, align 8
  %462 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %463 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %462, i32 0, i32 2
  %464 = call i32 @refcount_read(i32* %463)
  %465 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %466 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %465, i32 0, i32 3
  store i32 %464, i32* %466, align 4
  store i32 0, i32* %4, align 4
  br label %467

467:                                              ; preds = %455, %343
  %468 = load i32, i32* %4, align 4
  ret i32 %468
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local i32 @pfkey_sockaddr_len(i32) #1

declare dso_local i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_x_ipsecrequest*, i32, i32) #1

declare dso_local i8* @pfkey_proto_from_xfrm(i32) #1

declare dso_local i32 @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @_X2KEY(i32) #1

declare dso_local i32 @pfkey_mode_from_xfrm(i64) #1

declare dso_local i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy*) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
