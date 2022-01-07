; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c___pfkey_xfrm_state2msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c___pfkey_xfrm_state2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_11__, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.xfrm_encap_tmpl*, %struct.xfrm_sec_ctx* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.xfrm_encap_tmpl = type { i32, i32, i64 }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.sadb_msg = type { i32 }
%struct.sadb_sa = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i8*, i8*, i32 }
%struct.sadb_address = type { i32, i64, i8*, i64, i32 }
%struct.sadb_key = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.sadb_x_sa2 = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.sadb_x_nat_t_type = type { i32, i64*, i64, i32 }
%struct.sadb_x_nat_t_port = type { i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_SASTATE_DYING = common dso_local global i32 0, align 4
@SADB_SASTATE_MATURE = common dso_local global i32 0, align 4
@SADB_SASTATE_LARVAL = common dso_local global i32 0, align 4
@SADB_SASTATE_DEAD = common dso_local global i32 0, align 4
@XFRM_STATE_NOECN = common dso_local global i32 0, align 4
@SADB_SAFLAGS_NOECN = common dso_local global i32 0, align 4
@XFRM_STATE_DECAP_DSCP = common dso_local global i32 0, align 4
@SADB_SAFLAGS_DECAP_DSCP = common dso_local global i32 0, align 4
@XFRM_STATE_NOPMTUDISC = common dso_local global i32 0, align 4
@SADB_SAFLAGS_NOPMTUDISC = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_CURRENT = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_PROXY = common dso_local global i32 0, align 4
@SADB_EXT_KEY_AUTH = common dso_local global i32 0, align 4
@SADB_EXT_KEY_ENCRYPT = common dso_local global i32 0, align 4
@SADB_X_EXT_SA2 = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_TYPE = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_SPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_DPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_state*, i32, i32)* @__pfkey_xfrm_state2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__pfkey_xfrm_state2msg(%struct.xfrm_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca %struct.sadb_sa*, align 8
  %11 = alloca %struct.sadb_lifetime*, align 8
  %12 = alloca %struct.sadb_address*, align 8
  %13 = alloca %struct.sadb_key*, align 8
  %14 = alloca %struct.sadb_x_sa2*, align 8
  %15 = alloca %struct.sadb_x_sec_ctx*, align 8
  %16 = alloca %struct.xfrm_sec_ctx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.xfrm_encap_tmpl*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.xfrm_algo_desc*, align 8
  %25 = alloca %struct.xfrm_algo_desc*, align 8
  %26 = alloca %struct.xfrm_algo_desc*, align 8
  %27 = alloca %struct.sadb_x_nat_t_type*, align 8
  %28 = alloca %struct.sadb_x_nat_t_port*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %struct.xfrm_encap_tmpl* null, %struct.xfrm_encap_tmpl** %22, align 8
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pfkey_sockaddr_size(i32 %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.sk_buff* @ERR_PTR(i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  br label %903

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i64 40, i64 0
  %46 = add i64 84, %45
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 40, i64 0
  %52 = add i64 %46, %51
  %53 = add i64 %52, 80
  %54 = load i32, i32* %21, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  %58 = add i64 %57, 48
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 10
  %62 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %61, align 8
  store %struct.xfrm_sec_ctx* %62, %struct.xfrm_sec_ctx** %16, align 8
  %63 = icmp ne %struct.xfrm_sec_ctx* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %40
  %65 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %66 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PFKEY_ALIGN8(i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 48, %70
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %64, %40
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %78 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @xfrm_addr_equal(i32* %79, i32* %82, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 40, %91
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %89, %76
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %97
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = icmp ne %struct.TYPE_19__* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 2
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 2
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 7
  %119 = sdiv i32 %118, 8
  %120 = call i32 @PFKEY_ALIGN8(i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 48, %122
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %112, %105, %100
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %130 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = icmp ne %struct.TYPE_20__* %131, null
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %135 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %133
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %142 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 7
  %147 = sdiv i32 %146, 8
  %148 = call i32 @PFKEY_ALIGN8(i32 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 48, %150
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %140, %133, %128
  br label %157

157:                                              ; preds = %156, %97
  %158 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %159 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %158, i32 0, i32 9
  %160 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %159, align 8
  %161 = icmp ne %struct.xfrm_encap_tmpl* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %164 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %163, i32 0, i32 9
  %165 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %164, align 8
  store %struct.xfrm_encap_tmpl* %165, %struct.xfrm_encap_tmpl** %22, align 8
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %168 = icmp ne %struct.xfrm_encap_tmpl* %167, null
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %171 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 32
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, 24
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, 24
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %174, %169, %166
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 16
  %190 = load i32, i32* @GFP_ATOMIC, align 4
  %191 = call %struct.sk_buff* @alloc_skb(i32 %189, i32 %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %8, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = icmp eq %struct.sk_buff* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @ENOBUFS, align 4
  %196 = sub nsw i32 0, %195
  %197 = call %struct.sk_buff* @ERR_PTR(i32 %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %4, align 8
  br label %903

198:                                              ; preds = %187
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = call i8* @skb_put(%struct.sk_buff* %199, i32 4)
  %201 = bitcast i8* %200 to %struct.sadb_msg*
  store %struct.sadb_msg* %201, %struct.sadb_msg** %9, align 8
  %202 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @memset(%struct.sadb_msg* %202, i32 0, i32 %203)
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = udiv i64 %206, 4
  %208 = trunc i64 %207 to i32
  %209 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %210 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = call i8* @skb_put(%struct.sk_buff* %211, i32 40)
  %213 = bitcast i8* %212 to %struct.sadb_sa*
  store %struct.sadb_sa* %213, %struct.sadb_sa** %10, align 8
  %214 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %215 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %214, i32 0, i32 0
  store i32 10, i32* %215, align 8
  %216 = load i32, i32* @SADB_EXT_SA, align 4
  %217 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %218 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  %219 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %220 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %224 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %226 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %230 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 4
  %231 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %232 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  switch i32 %234, label %253 [
    i32 128, label %235
    i32 129, label %249
  ]

235:                                              ; preds = %198
  %236 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %237 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* @SADB_SASTATE_DYING, align 4
  br label %245

243:                                              ; preds = %235
  %244 = load i32, i32* @SADB_SASTATE_MATURE, align 4
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32 [ %242, %241 ], [ %244, %243 ]
  %247 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %248 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  br label %257

249:                                              ; preds = %198
  %250 = load i32, i32* @SADB_SASTATE_LARVAL, align 4
  %251 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %252 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  br label %257

253:                                              ; preds = %198
  %254 = load i32, i32* @SADB_SASTATE_DEAD, align 4
  %255 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %256 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %253, %249, %245
  %258 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %259 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %261 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %260, i32 0, i32 2
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = icmp ne %struct.TYPE_19__* %262, null
  br i1 %263, label %264, label %288

264:                                              ; preds = %257
  %265 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %266 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %265, i32 0, i32 2
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32 %269, i32 0)
  store %struct.xfrm_algo_desc* %270, %struct.xfrm_algo_desc** %24, align 8
  %271 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %24, align 8
  %272 = icmp ne %struct.xfrm_algo_desc* %271, null
  br i1 %272, label %273, label %283

273:                                              ; preds = %264
  %274 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %24, align 8
  %275 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %24, align 8
  %280 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  br label %284

283:                                              ; preds = %273, %264
  br label %284

284:                                              ; preds = %283, %278
  %285 = phi i64 [ %282, %278 ], [ 0, %283 ]
  %286 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %287 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %286, i32 0, i32 3
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %284, %257
  %289 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %290 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %289, i32 0, i32 2
  store i64 0, i64* %290, align 8
  %291 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %292 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %291, i32 0, i32 1
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %292, align 8
  %294 = icmp ne %struct.TYPE_20__* %293, null
  br i1 %294, label %295, label %300

295:                                              ; preds = %288
  %296 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %297 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %296, i32 0, i32 7
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = icmp ne %struct.TYPE_13__* %298, null
  br label %300

300:                                              ; preds = %295, %288
  %301 = phi i1 [ false, %288 ], [ %299, %295 ]
  %302 = zext i1 %301 to i32
  %303 = call i32 @BUG_ON(i32 %302)
  %304 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %305 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %304, i32 0, i32 1
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %305, align 8
  %307 = icmp ne %struct.TYPE_20__* %306, null
  br i1 %307, label %308, label %332

308:                                              ; preds = %300
  %309 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %310 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %309, i32 0, i32 1
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32 %313, i32 0)
  store %struct.xfrm_algo_desc* %314, %struct.xfrm_algo_desc** %25, align 8
  %315 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %25, align 8
  %316 = icmp ne %struct.xfrm_algo_desc* %315, null
  br i1 %316, label %317, label %327

317:                                              ; preds = %308
  %318 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %25, align 8
  %319 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %25, align 8
  %324 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  br label %328

327:                                              ; preds = %317, %308
  br label %328

328:                                              ; preds = %327, %322
  %329 = phi i64 [ %326, %322 ], [ 0, %327 ]
  %330 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %331 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %330, i32 0, i32 2
  store i64 %329, i64* %331, align 8
  br label %332

332:                                              ; preds = %328, %300
  %333 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %334 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %333, i32 0, i32 7
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %334, align 8
  %336 = icmp ne %struct.TYPE_13__* %335, null
  br i1 %336, label %337, label %361

337:                                              ; preds = %332
  %338 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %339 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %338, i32 0, i32 7
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32 %342, i32 0)
  store %struct.xfrm_algo_desc* %343, %struct.xfrm_algo_desc** %26, align 8
  %344 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %26, align 8
  %345 = icmp ne %struct.xfrm_algo_desc* %344, null
  br i1 %345, label %346, label %356

346:                                              ; preds = %337
  %347 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %26, align 8
  %348 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %26, align 8
  %353 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  br label %357

356:                                              ; preds = %346, %337
  br label %357

357:                                              ; preds = %356, %351
  %358 = phi i64 [ %355, %351 ], [ 0, %356 ]
  %359 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %360 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %359, i32 0, i32 2
  store i64 %358, i64* %360, align 8
  br label %361

361:                                              ; preds = %357, %332
  %362 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %363 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %362, i32 0, i32 1
  store i32 0, i32* %363, align 4
  %364 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %365 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @XFRM_STATE_NOECN, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %361
  %372 = load i32, i32* @SADB_SAFLAGS_NOECN, align 4
  %373 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %374 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  br label %377

377:                                              ; preds = %371, %361
  %378 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %379 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @XFRM_STATE_DECAP_DSCP, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %377
  %386 = load i32, i32* @SADB_SAFLAGS_DECAP_DSCP, align 4
  %387 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %388 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %385, %377
  %392 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %393 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @XFRM_STATE_NOPMTUDISC, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %391
  %400 = load i32, i32* @SADB_SAFLAGS_NOPMTUDISC, align 4
  %401 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %402 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %399, %391
  %406 = load i32, i32* %7, align 4
  %407 = and i32 %406, 2
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %444

409:                                              ; preds = %405
  %410 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %411 = call i8* @skb_put(%struct.sk_buff* %410, i32 40)
  %412 = bitcast i8* %411 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %412, %struct.sadb_lifetime** %11, align 8
  %413 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %414 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %413, i32 0, i32 0
  store i32 10, i32* %414, align 8
  %415 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %416 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %417 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %416, i32 0, i32 5
  store i32 %415, i32* %417, align 8
  %418 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %419 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 7
  %421 = load i32, i32* %420, align 4
  %422 = call i8* @_X2KEY(i32 %421)
  %423 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %424 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %423, i32 0, i32 4
  store i8* %422, i8** %424, align 8
  %425 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %426 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %425, i32 0, i32 6
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 8
  %429 = call i8* @_X2KEY(i32 %428)
  %430 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %431 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %430, i32 0, i32 3
  store i8* %429, i8** %431, align 8
  %432 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %433 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %432, i32 0, i32 6
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %437 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %436, i32 0, i32 2
  store i32 %435, i32* %437, align 8
  %438 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %439 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %438, i32 0, i32 6
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %443 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %442, i32 0, i32 1
  store i32 %441, i32* %443, align 4
  br label %444

444:                                              ; preds = %409, %405
  %445 = load i32, i32* %7, align 4
  %446 = and i32 %445, 1
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %483

448:                                              ; preds = %444
  %449 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %450 = call i8* @skb_put(%struct.sk_buff* %449, i32 40)
  %451 = bitcast i8* %450 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %451, %struct.sadb_lifetime** %11, align 8
  %452 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %453 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %452, i32 0, i32 0
  store i32 10, i32* %453, align 8
  %454 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %455 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %456 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %455, i32 0, i32 5
  store i32 %454, i32* %456, align 8
  %457 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %458 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %457, i32 0, i32 6
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = call i8* @_X2KEY(i32 %460)
  %462 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %463 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %462, i32 0, i32 4
  store i8* %461, i8** %463, align 8
  %464 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %465 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %464, i32 0, i32 6
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = call i8* @_X2KEY(i32 %467)
  %469 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %470 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %469, i32 0, i32 3
  store i8* %468, i8** %470, align 8
  %471 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %472 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %471, i32 0, i32 6
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %476 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %475, i32 0, i32 2
  store i32 %474, i32* %476, align 8
  %477 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %478 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %477, i32 0, i32 6
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %482 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 4
  br label %483

483:                                              ; preds = %448, %444
  %484 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %485 = call i8* @skb_put(%struct.sk_buff* %484, i32 40)
  %486 = bitcast i8* %485 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %486, %struct.sadb_lifetime** %11, align 8
  %487 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %488 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %487, i32 0, i32 0
  store i32 10, i32* %488, align 8
  %489 = load i32, i32* @SADB_EXT_LIFETIME_CURRENT, align 4
  %490 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %491 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %490, i32 0, i32 5
  store i32 %489, i32* %491, align 8
  %492 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %493 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %492, i32 0, i32 5
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 3
  %495 = load i8*, i8** %494, align 8
  %496 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %497 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %496, i32 0, i32 4
  store i8* %495, i8** %497, align 8
  %498 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %499 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 2
  %501 = load i8*, i8** %500, align 8
  %502 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %503 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %502, i32 0, i32 3
  store i8* %501, i8** %503, align 8
  %504 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %505 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %509 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %508, i32 0, i32 2
  store i32 %507, i32* %509, align 8
  %510 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %511 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %515 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %514, i32 0, i32 1
  store i32 %513, i32* %515, align 4
  %516 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %517 = load i32, i32* %21, align 4
  %518 = sext i32 %517 to i64
  %519 = add i64 40, %518
  %520 = trunc i64 %519 to i32
  %521 = call i8* @skb_put(%struct.sk_buff* %516, i32 %520)
  %522 = bitcast i8* %521 to %struct.sadb_address*
  store %struct.sadb_address* %522, %struct.sadb_address** %12, align 8
  %523 = load i32, i32* %21, align 4
  %524 = sext i32 %523 to i64
  %525 = add i64 40, %524
  %526 = udiv i64 %525, 4
  %527 = trunc i64 %526 to i32
  %528 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %529 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %528, i32 0, i32 0
  store i32 %527, i32* %529, align 8
  %530 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %531 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %532 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %531, i32 0, i32 4
  store i32 %530, i32* %532, align 8
  %533 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %534 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %533, i32 0, i32 3
  store i64 0, i64* %534, align 8
  %535 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %536 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %535, i32 0, i32 1
  store i64 0, i64* %536, align 8
  %537 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %538 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %538, i32 0, i32 4
  %540 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %541 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %540, i64 1
  %542 = bitcast %struct.sadb_address* %541 to %struct.sockaddr*
  %543 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %544 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = call i8* @pfkey_sockaddr_fill(i32* %539, i32 0, %struct.sockaddr* %542, i32 %546)
  %548 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %549 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %548, i32 0, i32 2
  store i8* %547, i8** %549, align 8
  %550 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %551 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %550, i32 0, i32 2
  %552 = load i8*, i8** %551, align 8
  %553 = icmp ne i8* %552, null
  %554 = xor i1 %553, true
  %555 = zext i1 %554 to i32
  %556 = call i32 @BUG_ON(i32 %555)
  %557 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %558 = load i32, i32* %21, align 4
  %559 = sext i32 %558 to i64
  %560 = add i64 40, %559
  %561 = trunc i64 %560 to i32
  %562 = call i8* @skb_put(%struct.sk_buff* %557, i32 %561)
  %563 = bitcast i8* %562 to %struct.sadb_address*
  store %struct.sadb_address* %563, %struct.sadb_address** %12, align 8
  %564 = load i32, i32* %21, align 4
  %565 = sext i32 %564 to i64
  %566 = add i64 40, %565
  %567 = udiv i64 %566, 4
  %568 = trunc i64 %567 to i32
  %569 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %570 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %569, i32 0, i32 0
  store i32 %568, i32* %570, align 8
  %571 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %572 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %573 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %572, i32 0, i32 4
  store i32 %571, i32* %573, align 8
  %574 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %575 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %574, i32 0, i32 3
  store i64 0, i64* %575, align 8
  %576 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %577 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %576, i32 0, i32 1
  store i64 0, i64* %577, align 8
  %578 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %579 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %578, i32 0, i32 4
  %580 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %579, i32 0, i32 0
  %581 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %582 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %581, i64 1
  %583 = bitcast %struct.sadb_address* %582 to %struct.sockaddr*
  %584 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %585 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 4
  %588 = call i8* @pfkey_sockaddr_fill(i32* %580, i32 0, %struct.sockaddr* %583, i32 %587)
  %589 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %590 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %589, i32 0, i32 2
  store i8* %588, i8** %590, align 8
  %591 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %592 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %591, i32 0, i32 2
  %593 = load i8*, i8** %592, align 8
  %594 = icmp ne i8* %593, null
  %595 = xor i1 %594, true
  %596 = zext i1 %595 to i32
  %597 = call i32 @BUG_ON(i32 %596)
  %598 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %599 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %598, i32 0, i32 3
  %600 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %599, i32 0, i32 1
  %601 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %602 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 4
  %604 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %605 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %605, i32 0, i32 3
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @xfrm_addr_equal(i32* %600, i32* %603, i32 %607)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %658, label %610

610:                                              ; preds = %483
  %611 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %612 = load i32, i32* %21, align 4
  %613 = sext i32 %612 to i64
  %614 = add i64 40, %613
  %615 = trunc i64 %614 to i32
  %616 = call i8* @skb_put(%struct.sk_buff* %611, i32 %615)
  %617 = bitcast i8* %616 to %struct.sadb_address*
  store %struct.sadb_address* %617, %struct.sadb_address** %12, align 8
  %618 = load i32, i32* %21, align 4
  %619 = sext i32 %618 to i64
  %620 = add i64 40, %619
  %621 = udiv i64 %620, 4
  %622 = trunc i64 %621 to i32
  %623 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %624 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %623, i32 0, i32 0
  store i32 %622, i32* %624, align 8
  %625 = load i32, i32* @SADB_EXT_ADDRESS_PROXY, align 4
  %626 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %627 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %626, i32 0, i32 4
  store i32 %625, i32* %627, align 8
  %628 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %629 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %628, i32 0, i32 3
  %630 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %629, i32 0, i32 3
  %631 = load i32, i32* %630, align 8
  %632 = call i64 @pfkey_proto_from_xfrm(i32 %631)
  %633 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %634 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %633, i32 0, i32 3
  store i64 %632, i64* %634, align 8
  %635 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %636 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 2
  %638 = load i8*, i8** %637, align 8
  %639 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %640 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %639, i32 0, i32 2
  store i8* %638, i8** %640, align 8
  %641 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %642 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %641, i32 0, i32 1
  store i64 0, i64* %642, align 8
  %643 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %644 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %644, i32 0, i32 1
  %646 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %647 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %651 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %650, i64 1
  %652 = bitcast %struct.sadb_address* %651 to %struct.sockaddr*
  %653 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %654 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %654, i32 0, i32 3
  %656 = load i32, i32* %655, align 4
  %657 = call i8* @pfkey_sockaddr_fill(i32* %645, i32 %649, %struct.sockaddr* %652, i32 %656)
  br label %658

658:                                              ; preds = %610, %483
  %659 = load i32, i32* %6, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %707

661:                                              ; preds = %658
  %662 = load i32, i32* %19, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %707

664:                                              ; preds = %661
  %665 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %666 = load i32, i32* %19, align 4
  %667 = sext i32 %666 to i64
  %668 = add i64 48, %667
  %669 = trunc i64 %668 to i32
  %670 = call i8* @skb_put(%struct.sk_buff* %665, i32 %669)
  %671 = bitcast i8* %670 to %struct.sadb_key*
  store %struct.sadb_key* %671, %struct.sadb_key** %13, align 8
  %672 = load i32, i32* %19, align 4
  %673 = sext i32 %672 to i64
  %674 = add i64 48, %673
  %675 = udiv i64 %674, 4
  %676 = trunc i64 %675 to i32
  %677 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %678 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %677, i32 0, i32 0
  store i32 %676, i32* %678, align 8
  %679 = load i32, i32* @SADB_EXT_KEY_AUTH, align 4
  %680 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %681 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %680, i32 0, i32 8
  store i32 %679, i32* %681, align 8
  %682 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %683 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %682, i32 0, i32 2
  %684 = load %struct.TYPE_19__*, %struct.TYPE_19__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %688 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %687, i32 0, i32 1
  store i32 %686, i32* %688, align 4
  %689 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %690 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %689, i32 0, i32 7
  store i64 0, i64* %690, align 8
  %691 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %692 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %691, i64 1
  %693 = bitcast %struct.sadb_key* %692 to %struct.sadb_x_sec_ctx*
  %694 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %695 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %694, i32 0, i32 2
  %696 = load %struct.TYPE_19__*, %struct.TYPE_19__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %700 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %699, i32 0, i32 2
  %701 = load %struct.TYPE_19__*, %struct.TYPE_19__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = add nsw i32 %703, 7
  %705 = sdiv i32 %704, 8
  %706 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %693, i32 %698, i32 %705)
  br label %707

707:                                              ; preds = %664, %661, %658
  %708 = load i32, i32* %6, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %756

710:                                              ; preds = %707
  %711 = load i32, i32* %20, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %756

713:                                              ; preds = %710
  %714 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %715 = load i32, i32* %20, align 4
  %716 = sext i32 %715 to i64
  %717 = add i64 48, %716
  %718 = trunc i64 %717 to i32
  %719 = call i8* @skb_put(%struct.sk_buff* %714, i32 %718)
  %720 = bitcast i8* %719 to %struct.sadb_key*
  store %struct.sadb_key* %720, %struct.sadb_key** %13, align 8
  %721 = load i32, i32* %20, align 4
  %722 = sext i32 %721 to i64
  %723 = add i64 48, %722
  %724 = udiv i64 %723, 4
  %725 = trunc i64 %724 to i32
  %726 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %727 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %726, i32 0, i32 0
  store i32 %725, i32* %727, align 8
  %728 = load i32, i32* @SADB_EXT_KEY_ENCRYPT, align 4
  %729 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %730 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %729, i32 0, i32 8
  store i32 %728, i32* %730, align 8
  %731 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %732 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %731, i32 0, i32 1
  %733 = load %struct.TYPE_20__*, %struct.TYPE_20__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 4
  %736 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %737 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %736, i32 0, i32 1
  store i32 %735, i32* %737, align 4
  %738 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %739 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %738, i32 0, i32 7
  store i64 0, i64* %739, align 8
  %740 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %741 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %740, i64 1
  %742 = bitcast %struct.sadb_key* %741 to %struct.sadb_x_sec_ctx*
  %743 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %744 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %743, i32 0, i32 1
  %745 = load %struct.TYPE_20__*, %struct.TYPE_20__** %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %749 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %748, i32 0, i32 1
  %750 = load %struct.TYPE_20__*, %struct.TYPE_20__** %749, align 8
  %751 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 4
  %753 = add nsw i32 %752, 7
  %754 = sdiv i32 %753, 8
  %755 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %742, i32 %747, i32 %754)
  br label %756

756:                                              ; preds = %713, %710, %707
  %757 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %758 = call i8* @skb_put(%struct.sk_buff* %757, i32 48)
  %759 = bitcast i8* %758 to %struct.sadb_x_sa2*
  store %struct.sadb_x_sa2* %759, %struct.sadb_x_sa2** %14, align 8
  %760 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %761 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %760, i32 0, i32 0
  store i32 12, i32* %761, align 8
  %762 = load i32, i32* @SADB_X_EXT_SA2, align 4
  %763 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %764 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %763, i32 0, i32 6
  store i32 %762, i32* %764, align 8
  %765 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %766 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %765, i32 0, i32 0
  %767 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %766, i32 0, i32 2
  %768 = load i32, i32* %767, align 8
  %769 = call i32 @pfkey_mode_from_xfrm(i32 %768)
  store i32 %769, i32* %23, align 4
  %770 = icmp slt i32 %769, 0
  br i1 %770, label %771, label %777

771:                                              ; preds = %756
  %772 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %773 = call i32 @kfree_skb(%struct.sk_buff* %772)
  %774 = load i32, i32* @EINVAL, align 4
  %775 = sub nsw i32 0, %774
  %776 = call %struct.sk_buff* @ERR_PTR(i32 %775)
  store %struct.sk_buff* %776, %struct.sk_buff** %4, align 8
  br label %903

777:                                              ; preds = %756
  %778 = load i32, i32* %23, align 4
  %779 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %780 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %779, i32 0, i32 1
  store i32 %778, i32* %780, align 4
  %781 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %782 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %781, i32 0, i32 5
  store i64 0, i64* %782, align 8
  %783 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %784 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %783, i32 0, i32 4
  store i64 0, i64* %784, align 8
  %785 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %786 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %785, i32 0, i32 3
  store i64 0, i64* %786, align 8
  %787 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %788 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %787, i32 0, i32 0
  %789 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %788, i32 0, i32 1
  %790 = load i32, i32* %789, align 4
  %791 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %792 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %791, i32 0, i32 2
  store i32 %790, i32* %792, align 8
  %793 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %794 = icmp ne %struct.xfrm_encap_tmpl* %793, null
  br i1 %794, label %795, label %856

795:                                              ; preds = %777
  %796 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %797 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %796, i32 0, i32 2
  %798 = load i64, i64* %797, align 8
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %856

800:                                              ; preds = %795
  %801 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %802 = call i8* @skb_put(%struct.sk_buff* %801, i32 32)
  %803 = bitcast i8* %802 to %struct.sadb_x_nat_t_type*
  store %struct.sadb_x_nat_t_type* %803, %struct.sadb_x_nat_t_type** %27, align 8
  %804 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %805 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %804, i32 0, i32 0
  store i32 8, i32* %805, align 8
  %806 = load i32, i32* @SADB_X_EXT_NAT_T_TYPE, align 4
  %807 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %808 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %807, i32 0, i32 3
  store i32 %806, i32* %808, align 8
  %809 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %810 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %809, i32 0, i32 2
  %811 = load i64, i64* %810, align 8
  %812 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %813 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %812, i32 0, i32 2
  store i64 %811, i64* %813, align 8
  %814 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %815 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %814, i32 0, i32 1
  %816 = load i64*, i64** %815, align 8
  %817 = getelementptr inbounds i64, i64* %816, i64 0
  store i64 0, i64* %817, align 8
  %818 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %819 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %818, i32 0, i32 1
  %820 = load i64*, i64** %819, align 8
  %821 = getelementptr inbounds i64, i64* %820, i64 1
  store i64 0, i64* %821, align 8
  %822 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %823 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %822, i32 0, i32 1
  %824 = load i64*, i64** %823, align 8
  %825 = getelementptr inbounds i64, i64* %824, i64 2
  store i64 0, i64* %825, align 8
  %826 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %827 = call i8* @skb_put(%struct.sk_buff* %826, i32 24)
  %828 = bitcast i8* %827 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %828, %struct.sadb_x_nat_t_port** %28, align 8
  %829 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %830 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %829, i32 0, i32 0
  store i32 6, i32* %830, align 8
  %831 = load i32, i32* @SADB_X_EXT_NAT_T_SPORT, align 4
  %832 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %833 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %832, i32 0, i32 3
  store i32 %831, i32* %833, align 4
  %834 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %835 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %834, i32 0, i32 1
  %836 = load i32, i32* %835, align 4
  %837 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %838 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %837, i32 0, i32 2
  store i32 %836, i32* %838, align 8
  %839 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %840 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %839, i32 0, i32 1
  store i64 0, i64* %840, align 8
  %841 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %842 = call i8* @skb_put(%struct.sk_buff* %841, i32 24)
  %843 = bitcast i8* %842 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %843, %struct.sadb_x_nat_t_port** %28, align 8
  %844 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %845 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %844, i32 0, i32 0
  store i32 6, i32* %845, align 8
  %846 = load i32, i32* @SADB_X_EXT_NAT_T_DPORT, align 4
  %847 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %848 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %847, i32 0, i32 3
  store i32 %846, i32* %848, align 4
  %849 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %850 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 8
  %852 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %853 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %852, i32 0, i32 2
  store i32 %851, i32* %853, align 8
  %854 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %855 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %854, i32 0, i32 1
  store i64 0, i64* %855, align 8
  br label %856

856:                                              ; preds = %800, %795, %777
  %857 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %858 = icmp ne %struct.xfrm_sec_ctx* %857, null
  br i1 %858, label %859, label %901

859:                                              ; preds = %856
  %860 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %861 = load i32, i32* %17, align 4
  %862 = sext i32 %861 to i64
  %863 = add i64 48, %862
  %864 = trunc i64 %863 to i32
  %865 = call i8* @skb_put(%struct.sk_buff* %860, i32 %864)
  %866 = bitcast i8* %865 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %866, %struct.sadb_x_sec_ctx** %15, align 8
  %867 = load i32, i32* %17, align 4
  %868 = sext i32 %867 to i64
  %869 = add i64 48, %868
  %870 = udiv i64 %869, 4
  %871 = trunc i64 %870 to i32
  %872 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %873 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %872, i32 0, i32 2
  store i32 %871, i32* %873, align 8
  %874 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %875 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %876 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %875, i32 0, i32 6
  store i32 %874, i32* %876, align 8
  %877 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %878 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %877, i32 0, i32 3
  %879 = load i32, i32* %878, align 4
  %880 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %881 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %880, i32 0, i32 5
  store i32 %879, i32* %881, align 4
  %882 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %883 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %882, i32 0, i32 2
  %884 = load i32, i32* %883, align 4
  %885 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %886 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %885, i32 0, i32 4
  store i32 %884, i32* %886, align 8
  %887 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %888 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 4
  %890 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %891 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %890, i32 0, i32 3
  store i32 %889, i32* %891, align 4
  %892 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %893 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %892, i64 1
  %894 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %895 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %894, i32 0, i32 1
  %896 = load i32, i32* %895, align 4
  %897 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %898 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %893, i32 %896, i32 %899)
  br label %901

901:                                              ; preds = %859, %856
  %902 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %902, %struct.sk_buff** %4, align 8
  br label %903

903:                                              ; preds = %901, %771, %194, %36
  %904 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %904
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local i32 @xfrm_addr_equal(i32*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_msg*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32, i32) #1

declare dso_local i8* @_X2KEY(i32) #1

declare dso_local i8* @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @pfkey_proto_from_xfrm(i32) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @pfkey_mode_from_xfrm(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
