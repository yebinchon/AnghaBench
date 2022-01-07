; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.xfrm_state_afinfo = type { i32 (%struct.sk_buff.0*, i32)* }
%struct.sk_buff.0 = type opaque
%struct.net = type { i32 }
%struct.xfrm_mode = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_28__*, i32, %struct.xfrm_mode, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_42__, %struct.TYPE_41__*, %struct.TYPE_29__, %struct.TYPE_40__*, %struct.TYPE_39__*, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { i32, i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32 (%struct.xfrm_state*, i8*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_40__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.xfrm_offload = type { i32, i32 }
%struct.sec_path = type { i64, i64, %struct.xfrm_state** }
%struct.TYPE_33__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.TYPE_31__ = type { i32, i64, i8* }
%struct.TYPE_30__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__*, %struct.TYPE_35__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMACQUIREERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEINVALID = common dso_local global i32 0, align 4
@CRYPTO_DONE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_TRANSPORT_AH_AUTH_FAILED = common dso_local global i32 0, align 4
@CRYPTO_TRANSPORT_ESP_AUTH_FAILED = common dso_local global i32 0, align 4
@CRYPTO_TUNNEL_AH_AUTH_FAILED = common dso_local global i32 0, align 4
@CRYPTO_TUNNEL_ESP_AUTH_FAILED = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEPROTOERROR = common dso_local global i32 0, align 4
@CRYPTO_INVALID_PROTOCOL = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINBUFFERERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINHDRERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINERROR = common dso_local global i32 0, align 4
@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINNOSTATES = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEMISMATCH = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATESEQERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEEXPIRED = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEMODEERROR = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4
@gro_cells = common dso_local global i32 0, align 4
@XFRM_GRO = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_input(%struct.sk_buff* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_state_afinfo*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.xfrm_mode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.xfrm_state*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.xfrm_offload*, align 8
  %25 = alloca %struct.sec_path*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.net* @dev_net(i32 %28)
  store %struct.net* %29, %struct.net** %11, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %16, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %33, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %34)
  store %struct.xfrm_offload* %35, %struct.xfrm_offload** %24, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %161

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %39)
  store %struct.xfrm_state* %40, %struct.xfrm_state** %16, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XFRM_STATE_VALID, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %38
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.net*, %struct.net** %11, align 8
  %59 = load i32, i32* @LINUX_MIB_XFRMACQUIREERROR, align 4
  %60 = call i32 @XFRM_INC_STATS(%struct.net* %58, i32 %59)
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.net*, %struct.net** %11, align 8
  %63 = load i32, i32* @LINUX_MIB_XFRMINSTATEINVALID, align 4
  %64 = call i32 @XFRM_INC_STATS(%struct.net* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %667

66:                                               ; preds = %38
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %68 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  store i32 1, i32* %21, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call %struct.TYPE_33__* @XFRM_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %14, align 8
  br label %430

80:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call %struct.TYPE_31__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %14, align 8
  %85 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %86 = icmp ne %struct.xfrm_offload* %85, null
  br i1 %86, label %87, label %160

87:                                               ; preds = %80
  %88 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %89 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CRYPTO_DONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %160

94:                                               ; preds = %87
  store i32 1, i32* %23, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call %struct.TYPE_31__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %19, align 4
  %99 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %100 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %150, label %105

105:                                              ; preds = %94
  %106 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %107 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRYPTO_TRANSPORT_AH_AUTH_FAILED, align 4
  %110 = load i32, i32* @CRYPTO_TRANSPORT_ESP_AUTH_FAILED, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @CRYPTO_TUNNEL_AH_AUTH_FAILED, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @CRYPTO_TUNNEL_ESP_AUTH_FAILED, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %108, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %105
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 0
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @xfrm_audit_state_icvfail(%struct.xfrm_state* %119, %struct.sk_buff* %120, i32 %125)
  %127 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %128 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.net*, %struct.net** %11, align 8
  %133 = load i32, i32* @LINUX_MIB_XFRMINSTATEPROTOERROR, align 4
  %134 = call i32 @XFRM_INC_STATS(%struct.net* %132, i32 %133)
  br label %667

135:                                              ; preds = %105
  %136 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %137 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CRYPTO_INVALID_PROTOCOL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load %struct.net*, %struct.net** %11, align 8
  %144 = load i32, i32* @LINUX_MIB_XFRMINSTATEPROTOERROR, align 4
  %145 = call i32 @XFRM_INC_STATS(%struct.net* %143, i32 %144)
  br label %667

146:                                              ; preds = %135
  %147 = load %struct.net*, %struct.net** %11, align 8
  %148 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %149 = call i32 @XFRM_INC_STATS(%struct.net* %147, i32 %148)
  br label %667

150:                                              ; preds = %94
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @xfrm_parse_spi(%struct.sk_buff* %151, i32 %152, i8** %8, i8** %14)
  store i32 %153, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.net*, %struct.net** %11, align 8
  %157 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %158 = call i32 @XFRM_INC_STATS(%struct.net* %156, i32 %157)
  br label %667

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %87, %80
  br label %297

161:                                              ; preds = %4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = call %struct.TYPE_31__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %162)
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* %19, align 4
  switch i32 %166, label %203 [
    i32 129, label %167
    i32 128, label %185
  ]

167:                                              ; preds = %161
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = call %struct.TYPE_30__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %171, align 8
  %173 = icmp ne %struct.TYPE_35__* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = call %struct.TYPE_30__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @be32_to_cpu(i32 %182)
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %174, %167
  br label %203

185:                                              ; preds = %161
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = call %struct.TYPE_30__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff* %186)
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %189, align 8
  %191 = icmp ne %struct.TYPE_37__* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %185
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call %struct.TYPE_30__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff* %193)
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @be32_to_cpu(i32 %200)
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %192, %185
  br label %203

203:                                              ; preds = %161, %202, %184
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = call %struct.sec_path* @secpath_set(%struct.sk_buff* %204)
  store %struct.sec_path* %205, %struct.sec_path** %25, align 8
  %206 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %207 = icmp ne %struct.sec_path* %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = load %struct.net*, %struct.net** %11, align 8
  %210 = load i32, i32* @LINUX_MIB_XFRMINERROR, align 4
  %211 = call i32 @XFRM_INC_STATS(%struct.net* %209, i32 %210)
  br label %667

212:                                              ; preds = %203
  store i8* null, i8** %14, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @xfrm_parse_spi(%struct.sk_buff* %216, i32 %217, i8** %8, i8** %14)
  store i32 %218, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %222 = call i32 @secpath_reset(%struct.sk_buff* %221)
  %223 = load %struct.net*, %struct.net** %11, align 8
  %224 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %225 = call i32 @XFRM_INC_STATS(%struct.net* %223, i32 %224)
  br label %667

226:                                              ; preds = %215, %212
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = call i64 @skb_network_header(%struct.sk_buff* %227)
  %229 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %230 = call %struct.TYPE_31__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %229)
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %228, %232
  %234 = inttoptr i64 %233 to i32*
  store i32* %234, i32** %17, align 8
  br label %235

235:                                              ; preds = %571, %226
  %236 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %237 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %236)
  store %struct.sec_path* %237, %struct.sec_path** %25, align 8
  %238 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %239 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %235
  %244 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %245 = call i32 @secpath_reset(%struct.sk_buff* %244)
  %246 = load %struct.net*, %struct.net** %11, align 8
  %247 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %248 = call i32 @XFRM_INC_STATS(%struct.net* %246, i32 %247)
  br label %667

249:                                              ; preds = %235
  %250 = load %struct.net*, %struct.net** %11, align 8
  %251 = load i32, i32* %18, align 4
  %252 = load i32*, i32** %17, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %19, align 4
  %256 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %250, i32 %251, i32* %252, i8* %253, i32 %254, i32 %255)
  store %struct.xfrm_state* %256, %struct.xfrm_state** %16, align 8
  %257 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %258 = icmp eq %struct.xfrm_state* %257, null
  br i1 %258, label %259, label %270

259:                                              ; preds = %249
  %260 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %261 = call i32 @secpath_reset(%struct.sk_buff* %260)
  %262 = load %struct.net*, %struct.net** %11, align 8
  %263 = load i32, i32* @LINUX_MIB_XFRMINNOSTATES, align 4
  %264 = call i32 @XFRM_INC_STATS(%struct.net* %262, i32 %263)
  %265 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %266 = load i32, i32* %19, align 4
  %267 = load i8*, i8** %8, align 8
  %268 = load i8*, i8** %14, align 8
  %269 = call i32 @xfrm_audit_state_notfound(%struct.sk_buff* %265, i32 %266, i8* %267, i8* %268)
  br label %667

270:                                              ; preds = %249
  %271 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %272 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %275 = call i32 @xfrm_smark_get(i32 %273, %struct.xfrm_state* %274)
  %276 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 4
  %278 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %279 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %280 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %279, i32 0, i32 2
  %281 = load %struct.xfrm_state**, %struct.xfrm_state*** %280, align 8
  %282 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %283 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %281, i64 %284
  store %struct.xfrm_state* %278, %struct.xfrm_state** %286, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %288 = call i32 @skb_dst_force(%struct.sk_buff* %287)
  %289 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %290 = call i32 @skb_dst(%struct.sk_buff* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %270
  %293 = load %struct.net*, %struct.net** %11, align 8
  %294 = load i32, i32* @LINUX_MIB_XFRMINERROR, align 4
  %295 = call i32 @XFRM_INC_STATS(%struct.net* %293, i32 %294)
  br label %667

296:                                              ; preds = %270
  br label %297

297:                                              ; preds = %296, %160
  %298 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %299 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %298, i32 0, i32 1
  %300 = call i32 @spin_lock(i32* %299)
  %301 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %302 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %301, i32 0, i32 11
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @XFRM_STATE_VALID, align 8
  %306 = icmp ne i64 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i64 @unlikely(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %297
  %311 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %312 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %311, i32 0, i32 11
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load %struct.net*, %struct.net** %11, align 8
  %319 = load i32, i32* @LINUX_MIB_XFRMACQUIREERROR, align 4
  %320 = call i32 @XFRM_INC_STATS(%struct.net* %318, i32 %319)
  br label %325

321:                                              ; preds = %310
  %322 = load %struct.net*, %struct.net** %11, align 8
  %323 = load i32, i32* @LINUX_MIB_XFRMINSTATEINVALID, align 4
  %324 = call i32 @XFRM_INC_STATS(%struct.net* %322, i32 %323)
  br label %325

325:                                              ; preds = %321, %317
  br label %663

326:                                              ; preds = %297
  %327 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %328 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %327, i32 0, i32 10
  %329 = load %struct.TYPE_39__*, %struct.TYPE_39__** %328, align 8
  %330 = icmp ne %struct.TYPE_39__* %329, null
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %333 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %332, i32 0, i32 10
  %334 = load %struct.TYPE_39__*, %struct.TYPE_39__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  br label %338

337:                                              ; preds = %326
  br label %338

338:                                              ; preds = %337, %331
  %339 = phi i32 [ %336, %331 ], [ 0, %337 ]
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load %struct.net*, %struct.net** %11, align 8
  %344 = load i32, i32* @LINUX_MIB_XFRMINSTATEMISMATCH, align 4
  %345 = call i32 @XFRM_INC_STATS(%struct.net* %343, i32 %344)
  br label %663

346:                                              ; preds = %338
  %347 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %348 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %347, i32 0, i32 7
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 2
  %351 = load i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)** %350, align 8
  %352 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %353 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %354 = load i8*, i8** %14, align 8
  %355 = call i64 %351(%struct.xfrm_state* %352, %struct.sk_buff* %353, i8* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %346
  %358 = load %struct.net*, %struct.net** %11, align 8
  %359 = load i32, i32* @LINUX_MIB_XFRMINSTATESEQERROR, align 4
  %360 = call i32 @XFRM_INC_STATS(%struct.net* %358, i32 %359)
  br label %663

361:                                              ; preds = %346
  %362 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %363 = call i64 @xfrm_state_check_expire(%struct.xfrm_state* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load %struct.net*, %struct.net** %11, align 8
  %367 = load i32, i32* @LINUX_MIB_XFRMINSTATEEXPIRED, align 4
  %368 = call i32 @XFRM_INC_STATS(%struct.net* %366, i32 %367)
  br label %663

369:                                              ; preds = %361
  %370 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %371 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %370, i32 0, i32 1
  %372 = call i32 @spin_unlock(i32* %371)
  %373 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %374 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %375 = load i32, i32* %19, align 4
  %376 = call i64 @xfrm_tunnel_check(%struct.sk_buff* %373, %struct.xfrm_state* %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %369
  %379 = load %struct.net*, %struct.net** %11, align 8
  %380 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %381 = call i32 @XFRM_INC_STATS(%struct.net* %379, i32 %380)
  br label %667

382:                                              ; preds = %369
  %383 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %384 = load i8*, i8** %14, align 8
  %385 = call i32 @xfrm_replay_seqhi(%struct.xfrm_state* %383, i8* %384)
  %386 = call i8* @htonl(i32 %385)
  store i8* %386, i8** %15, align 8
  %387 = load i8*, i8** %14, align 8
  %388 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %389 = call %struct.TYPE_33__* @XFRM_SKB_CB(%struct.sk_buff* %388)
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 1
  store i8* %387, i8** %392, align 8
  %393 = load i8*, i8** %15, align 8
  %394 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %395 = call %struct.TYPE_33__* @XFRM_SKB_CB(%struct.sk_buff* %394)
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 0
  store i8* %393, i8** %398, align 8
  %399 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %400 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @dev_hold(i32 %401)
  %403 = load i32, i32* %23, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %382
  %406 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %407 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %406, i32 0, i32 9
  %408 = load %struct.TYPE_40__*, %struct.TYPE_40__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %408, i32 0, i32 0
  %410 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %409, align 8
  %411 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %412 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %413 = call i32 %410(%struct.xfrm_state* %411, %struct.sk_buff* %412)
  store i32 %413, i32* %7, align 4
  br label %423

414:                                              ; preds = %382
  %415 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %416 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %415, i32 0, i32 0
  %417 = load %struct.TYPE_28__*, %struct.TYPE_28__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %417, i32 0, i32 1
  %419 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %418, align 8
  %420 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %421 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %422 = call i32 %419(%struct.xfrm_state* %420, %struct.sk_buff* %421)
  store i32 %422, i32* %7, align 4
  br label %423

423:                                              ; preds = %414, %405
  %424 = load i32, i32* %7, align 4
  %425 = load i32, i32* @EINPROGRESS, align 4
  %426 = sub nsw i32 0, %425
  %427 = icmp eq i32 %424, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %423
  store i32 0, i32* %5, align 4
  br label %690

429:                                              ; preds = %423
  br label %430

430:                                              ; preds = %429, %73
  %431 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %432 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @dev_put(i32 %433)
  %435 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %436 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %435, i32 0, i32 1
  %437 = call i32 @spin_lock(i32* %436)
  %438 = load i32, i32* %7, align 4
  %439 = icmp sle i32 %438, 0
  br i1 %439, label %440, label %463

440:                                              ; preds = %430
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @EBADMSG, align 4
  %443 = sub nsw i32 0, %442
  %444 = icmp eq i32 %441, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %440
  %446 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %447 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %448 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %449 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %448, i32 0, i32 0
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @xfrm_audit_state_icvfail(%struct.xfrm_state* %446, %struct.sk_buff* %447, i32 %452)
  %454 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %455 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 8
  br label %459

459:                                              ; preds = %445, %440
  %460 = load %struct.net*, %struct.net** %11, align 8
  %461 = load i32, i32* @LINUX_MIB_XFRMINSTATEPROTOERROR, align 4
  %462 = call i32 @XFRM_INC_STATS(%struct.net* %460, i32 %461)
  br label %663

463:                                              ; preds = %430
  store i32 0, i32* %9, align 4
  %464 = load i32, i32* %21, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %481

466:                                              ; preds = %463
  %467 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %468 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %467, i32 0, i32 7
  %469 = load %struct.TYPE_41__*, %struct.TYPE_41__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %469, i32 0, i32 1
  %471 = load i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*, i8*)** %470, align 8
  %472 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %473 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %474 = load i8*, i8** %14, align 8
  %475 = call i64 %471(%struct.xfrm_state* %472, %struct.sk_buff* %473, i8* %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %466
  %478 = load %struct.net*, %struct.net** %11, align 8
  %479 = load i32, i32* @LINUX_MIB_XFRMINSTATESEQERROR, align 4
  %480 = call i32 @XFRM_INC_STATS(%struct.net* %478, i32 %479)
  br label %663

481:                                              ; preds = %466, %463
  %482 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %483 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %482, i32 0, i32 7
  %484 = load %struct.TYPE_41__*, %struct.TYPE_41__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %484, i32 0, i32 0
  %486 = load i32 (%struct.xfrm_state*, i8*)*, i32 (%struct.xfrm_state*, i8*)** %485, align 8
  %487 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %488 = load i8*, i8** %14, align 8
  %489 = call i32 %486(%struct.xfrm_state* %487, i8* %488)
  %490 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %491 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %494 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %493, i32 0, i32 6
  %495 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %497, %492
  %499 = trunc i64 %498 to i32
  store i32 %499, i32* %495, align 4
  %500 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %501 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %500, i32 0, i32 6
  %502 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 8
  %505 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %506 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %505, i32 0, i32 1
  %507 = call i32 @spin_unlock(i32* %506)
  %508 = load i32, i32* %7, align 4
  %509 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %510 = call %struct.TYPE_34__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %509)
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 0
  store i32 %508, i32* %511, align 4
  %512 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %513 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %512, i32 0, i32 2
  store %struct.xfrm_mode* %513, %struct.xfrm_mode** %12, align 8
  %514 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %515 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %514, i32 0, i32 5
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @AF_UNSPEC, align 4
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %534

520:                                              ; preds = %481
  %521 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %522 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %523 = call %struct.TYPE_34__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %522)
  %524 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %521, i32 %525)
  store %struct.xfrm_mode* %526, %struct.xfrm_mode** %12, align 8
  %527 = load %struct.xfrm_mode*, %struct.xfrm_mode** %12, align 8
  %528 = icmp eq %struct.xfrm_mode* %527, null
  br i1 %528, label %529, label %533

529:                                              ; preds = %520
  %530 = load %struct.net*, %struct.net** %11, align 8
  %531 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %532 = call i32 @XFRM_INC_STATS(%struct.net* %530, i32 %531)
  br label %667

533:                                              ; preds = %520
  br label %534

534:                                              ; preds = %533, %481
  %535 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %536 = load %struct.xfrm_mode*, %struct.xfrm_mode** %12, align 8
  %537 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %538 = call i64 @xfrm_inner_mode_input(%struct.xfrm_state* %535, %struct.xfrm_mode* %536, %struct.sk_buff* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %544

540:                                              ; preds = %534
  %541 = load %struct.net*, %struct.net** %11, align 8
  %542 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %543 = call i32 @XFRM_INC_STATS(%struct.net* %541, i32 %542)
  br label %667

544:                                              ; preds = %534
  %545 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %546 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %544
  store i32 1, i32* %20, align 4
  br label %575

553:                                              ; preds = %544
  %554 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %555 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %554, i32 0, i32 4
  %556 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %555, i32 0, i32 0
  store i32* %556, i32** %17, align 8
  %557 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %558 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %557, i32 0, i32 3
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  store i32 %560, i32* %19, align 4
  %561 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %562 = load i32, i32* %7, align 4
  %563 = call i32 @xfrm_parse_spi(%struct.sk_buff* %561, i32 %562, i8** %8, i8** %14)
  store i32 %563, i32* %13, align 4
  %564 = load i32, i32* %13, align 4
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %553
  %567 = load %struct.net*, %struct.net** %11, align 8
  %568 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %569 = call i32 @XFRM_INC_STATS(%struct.net* %567, i32 %568)
  br label %667

570:                                              ; preds = %553
  store i32 0, i32* %23, align 4
  br label %571

571:                                              ; preds = %570
  %572 = load i32, i32* %13, align 4
  %573 = icmp ne i32 %572, 0
  %574 = xor i1 %573, true
  br i1 %574, label %235, label %575

575:                                              ; preds = %571, %552
  %576 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %577 = load i32, i32* %19, align 4
  %578 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %579 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %578, i32 0, i32 0
  %580 = load %struct.TYPE_28__*, %struct.TYPE_28__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @xfrm_rcv_cb(%struct.sk_buff* %576, i32 %577, i32 %582, i32 0)
  store i32 %583, i32* %13, align 4
  %584 = load i32, i32* %13, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %575
  br label %667

587:                                              ; preds = %575
  %588 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %589 = call i32 @nf_reset_ct(%struct.sk_buff* %588)
  %590 = load i32, i32* %20, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %605

592:                                              ; preds = %587
  %593 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %594 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %593)
  store %struct.sec_path* %594, %struct.sec_path** %25, align 8
  %595 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %596 = icmp ne %struct.sec_path* %595, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %592
  %598 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %599 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %598, i32 0, i32 1
  store i64 0, i64* %599, align 8
  br label %600

600:                                              ; preds = %597, %592
  %601 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %602 = call i32 @skb_dst_drop(%struct.sk_buff* %601)
  %603 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %604 = call i32 @gro_cells_receive(i32* @gro_cells, %struct.sk_buff* %603)
  store i32 0, i32* %5, align 4
  br label %690

605:                                              ; preds = %587
  %606 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %607 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %606)
  store %struct.xfrm_offload* %607, %struct.xfrm_offload** %24, align 8
  %608 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %609 = icmp ne %struct.xfrm_offload* %608, null
  br i1 %609, label %610, label %616

610:                                              ; preds = %605
  %611 = load %struct.xfrm_offload*, %struct.xfrm_offload** %24, align 8
  %612 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* @XFRM_GRO, align 4
  %615 = and i32 %613, %614
  store i32 %615, i32* %22, align 4
  br label %616

616:                                              ; preds = %610, %605
  %617 = load i32, i32* @EAFNOSUPPORT, align 4
  %618 = sub nsw i32 0, %617
  store i32 %618, i32* %13, align 4
  %619 = call i32 (...) @rcu_read_lock()
  %620 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %621 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %620, i32 0, i32 2
  %622 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = call %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32 %623)
  store %struct.xfrm_state_afinfo* %624, %struct.xfrm_state_afinfo** %10, align 8
  %625 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %10, align 8
  %626 = call i64 @likely(%struct.xfrm_state_afinfo* %625)
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %643

628:                                              ; preds = %616
  %629 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %10, align 8
  %630 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %629, i32 0, i32 0
  %631 = load i32 (%struct.sk_buff.0*, i32)*, i32 (%struct.sk_buff.0*, i32)** %630, align 8
  %632 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %633 = bitcast %struct.sk_buff* %632 to %struct.sk_buff.0*
  %634 = load i32, i32* %22, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %639, label %636

636:                                              ; preds = %628
  %637 = load i32, i32* %21, align 4
  %638 = icmp ne i32 %637, 0
  br label %639

639:                                              ; preds = %636, %628
  %640 = phi i1 [ true, %628 ], [ %638, %636 ]
  %641 = zext i1 %640 to i32
  %642 = call i32 %631(%struct.sk_buff.0* %633, i32 %641)
  store i32 %642, i32* %13, align 4
  br label %643

643:                                              ; preds = %639, %616
  %644 = call i32 (...) @rcu_read_unlock()
  %645 = load i32, i32* %22, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %661

647:                                              ; preds = %643
  %648 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %649 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %648)
  store %struct.sec_path* %649, %struct.sec_path** %25, align 8
  %650 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %651 = icmp ne %struct.sec_path* %650, null
  br i1 %651, label %652, label %655

652:                                              ; preds = %647
  %653 = load %struct.sec_path*, %struct.sec_path** %25, align 8
  %654 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %653, i32 0, i32 1
  store i64 0, i64* %654, align 8
  br label %655

655:                                              ; preds = %652, %647
  %656 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %657 = call i32 @skb_dst_drop(%struct.sk_buff* %656)
  %658 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %659 = call i32 @gro_cells_receive(i32* @gro_cells, %struct.sk_buff* %658)
  %660 = load i32, i32* %13, align 4
  store i32 %660, i32* %5, align 4
  br label %690

661:                                              ; preds = %643
  %662 = load i32, i32* %13, align 4
  store i32 %662, i32* %5, align 4
  br label %690

663:                                              ; preds = %477, %459, %365, %357, %342, %325
  %664 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %665 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %664, i32 0, i32 1
  %666 = call i32 @spin_unlock(i32* %665)
  br label %667

667:                                              ; preds = %663, %586, %566, %540, %529, %378, %292, %259, %243, %220, %208, %155, %146, %142, %118, %65
  %668 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %669 = load i32, i32* %19, align 4
  %670 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %671 = icmp ne %struct.xfrm_state* %670, null
  br i1 %671, label %672, label %683

672:                                              ; preds = %667
  %673 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %674 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %673, i32 0, i32 0
  %675 = load %struct.TYPE_28__*, %struct.TYPE_28__** %674, align 8
  %676 = icmp ne %struct.TYPE_28__* %675, null
  br i1 %676, label %677, label %683

677:                                              ; preds = %672
  %678 = load %struct.xfrm_state*, %struct.xfrm_state** %16, align 8
  %679 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %678, i32 0, i32 0
  %680 = load %struct.TYPE_28__*, %struct.TYPE_28__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 8
  br label %685

683:                                              ; preds = %672, %667
  %684 = load i32, i32* %7, align 4
  br label %685

685:                                              ; preds = %683, %677
  %686 = phi i32 [ %682, %677 ], [ %684, %683 ]
  %687 = call i32 @xfrm_rcv_cb(%struct.sk_buff* %668, i32 %669, i32 %686, i32 -1)
  %688 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %689 = call i32 @kfree_skb(%struct.sk_buff* %688)
  store i32 0, i32* %5, align 4
  br label %690

690:                                              ; preds = %685, %661, %655, %600, %428
  %691 = load i32, i32* %5, align 4
  ret i32 %691
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.TYPE_33__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_31__* @XFRM_SPI_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_audit_state_icvfail(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm_parse_spi(%struct.sk_buff*, i32, i8**, i8**) #1

declare dso_local %struct.TYPE_30__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.sec_path* @secpath_set(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @xfrm_audit_state_notfound(%struct.sk_buff*, i32, i8*, i8*) #1

declare dso_local i32 @xfrm_smark_get(i32, %struct.xfrm_state*) #1

declare dso_local i32 @skb_dst_force(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @xfrm_tunnel_check(%struct.sk_buff*, %struct.xfrm_state*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xfrm_replay_seqhi(%struct.xfrm_state*, i8*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local %struct.TYPE_34__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local i64 @xfrm_inner_mode_input(%struct.xfrm_state*, %struct.xfrm_mode*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_rcv_cb(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @gro_cells_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32) #1

declare dso_local i64 @likely(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
