; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_config_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_config_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conf_req = type { i32, i32, i32 }
%struct.l2cap_chan = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dcid 0x%4.4x flags 0x%2.2x\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@L2CAP_CONF_RSP = common dso_local global i32 0, align 4
@L2CAP_CONF_REJECT = common dso_local global i32 0, align 4
@L2CAP_CONF_FLAG_CONTINUATION = common dso_local global i32 0, align 4
@L2CAP_CONF_SUCCESS = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@CONF_OUTPUT_DONE = common dso_local global i32 0, align 4
@CONF_INPUT_DONE = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_MODE_STREAMING = common dso_local global i64 0, align 8
@CONF_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global i32 0, align 4
@CONF_REM_CONF_PEND = common dso_local global i32 0, align 4
@CONF_LOC_CONF_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_config_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_config_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_conf_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca %struct.l2cap_chan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [64 x i32], align 16
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.l2cap_conf_req*
  store %struct.l2cap_conf_req* %19, %struct.l2cap_conf_req** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 12
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %263

26:                                               ; preds = %4
  %27 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__le16_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %10, align 8
  %32 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__le16_to_cpu(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn* %38, i32 %39)
  store %struct.l2cap_chan* %40, %struct.l2cap_chan** %14, align 8
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %42 = icmp ne %struct.l2cap_chan* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %26
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %45 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @cmd_reject_invalid_cid(%struct.l2cap_conn* %44, i32 %47, i32 %48, i32 0)
  store i32 0, i32* %5, align 4
  br label %263

50:                                               ; preds = %26
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BT_CONFIG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BT_CONNECT2, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %64 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %71 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @cmd_reject_invalid_cid(%struct.l2cap_conn* %63, i32 %66, i32 %69, i32 %72)
  br label %259

74:                                               ; preds = %56, %50
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 12
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %80 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = icmp ugt i64 %84, 8
  br i1 %85, label %86, label %99

86:                                               ; preds = %74
  %87 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %88 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %89 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @L2CAP_CONF_RSP, align 4
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %94 = load i32, i32* @L2CAP_CONF_REJECT, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @l2cap_build_conf_rsp(%struct.l2cap_chan* %92, i32* %93, i32 %94, i32 %95)
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %98 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %87, i32 %90, i32 %91, i32 %96, i32* %97)
  br label %259

99:                                               ; preds = %74
  %100 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %101 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %104 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %10, align 8
  %109 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @memcpy(i64 %107, i32 %110, i32 %111)
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @L2CAP_CONF_FLAG_CONTINUATION, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %99
  %123 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %124 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %125 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @L2CAP_CONF_RSP, align 4
  %128 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %130 = load i32, i32* @L2CAP_CONF_SUCCESS, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @l2cap_build_conf_rsp(%struct.l2cap_chan* %128, i32* %129, i32 %130, i32 %131)
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %134 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %123, i32 %126, i32 %127, i32 %132, i32* %133)
  br label %259

135:                                              ; preds = %99
  %136 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %138 = call i32 @l2cap_parse_conf_req(%struct.l2cap_chan* %136, i32* %137, i32 256)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %143 = load i32, i32* @ECONNRESET, align 4
  %144 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %142, i32 %143)
  br label %259

145:                                              ; preds = %135
  %146 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %147 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %150 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %152 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %153 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @L2CAP_CONF_RSP, align 4
  %156 = load i32, i32* %15, align 4
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %158 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %151, i32 %154, i32 %155, i32 %156, i32* %157)
  %159 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %160 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %164 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %163, i32 0, i32 2
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* @CONF_OUTPUT_DONE, align 4
  %166 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %167 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %166, i32 0, i32 6
  %168 = call i64 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %145
  br label %259

171:                                              ; preds = %145
  %172 = load i32, i32* @CONF_INPUT_DONE, align 4
  %173 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %174 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %173, i32 0, i32 6
  %175 = call i64 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %206

177:                                              ; preds = %171
  %178 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %179 = call i32 @set_default_fcs(%struct.l2cap_chan* %178)
  %180 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %181 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %177
  %186 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %187 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185, %177
  %192 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %193 = call i32 @l2cap_ertm_init(%struct.l2cap_chan* %192)
  store i32 %193, i32* %16, align 4
  br label %194

194:                                              ; preds = %191, %185
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sub nsw i32 0, %199
  %201 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %198, i32 %200)
  br label %205

202:                                              ; preds = %194
  %203 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %204 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %203)
  br label %205

205:                                              ; preds = %202, %197
  br label %259

206:                                              ; preds = %171
  %207 = load i32, i32* @CONF_REQ_SENT, align 4
  %208 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %209 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %208, i32 0, i32 6
  %210 = call i32 @test_and_set_bit(i32 %207, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %226, label %212

212:                                              ; preds = %206
  %213 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %214 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %215 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %214)
  %216 = load i32, i32* @L2CAP_CONF_REQ, align 4
  %217 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %218 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %219 = call i32 @l2cap_build_conf_req(%struct.l2cap_chan* %217, i32* %218, i32 256)
  %220 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %221 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %213, i32 %215, i32 %216, i32 %219, i32* %220)
  %222 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %223 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %212, %206
  %227 = load i32, i32* @CONF_REM_CONF_PEND, align 4
  %228 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %229 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %228, i32 0, i32 6
  %230 = call i64 @test_bit(i32 %227, i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %226
  %233 = load i32, i32* @CONF_LOC_CONF_PEND, align 4
  %234 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %235 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %234, i32 0, i32 6
  %236 = call i64 @test_bit(i32 %233, i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %232
  %239 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %240 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %238
  %244 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %245 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %246 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %247 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan* %244, i32* %245, i32 %248, i32 %249)
  br label %257

251:                                              ; preds = %238
  %252 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %253 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %256 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %251, %243
  br label %258

258:                                              ; preds = %257, %232, %226
  br label %259

259:                                              ; preds = %258, %205, %170, %141, %122, %86, %62
  %260 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %261 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %260)
  %262 = load i32, i32* %16, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %259, %43, %23
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @cmd_reject_invalid_cid(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2cap_build_conf_rsp(%struct.l2cap_chan*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @l2cap_parse_conf_req(%struct.l2cap_chan*, i32*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_default_fcs(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_ertm_init(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_build_conf_req(%struct.l2cap_chan*, i32*, i32) #1

declare dso_local i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan*, i32*, i32, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
