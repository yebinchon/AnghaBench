; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_matrix_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_matrix_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.route_payload = type { i32, i32, i32*, i32* }
%struct.q6adm = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.q6adm_cmd_matrix_map_routings_v5 = type { i32, i32 }
%struct.q6adm_session_map_node_v5 = type { i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }
%struct.q6copp = type { i32, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@ADM_CMD_MATRIX_MAP_ROUTINGS_V5 = common dso_local global i64 0, align 8
@ADM_MATRIX_ID_AUDIO_RX = common dso_local global i32 0, align 4
@ADM_MATRIX_ID_AUDIO_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Wrong path set[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid port_id 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@q6adm_free_copp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"routing for stream %d failed ret %d\0A\00", align 1
@TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"routing for stream %d failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"DSP returned error[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6adm_matrix_map(%struct.device* %0, i32 %1, %struct.route_payload* byval(%struct.route_payload) align 8 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.q6adm*, align 8
  %10 = alloca %struct.q6adm_cmd_matrix_map_routings_v5*, align 8
  %11 = alloca %struct.q6adm_session_map_node_v5*, align 8
  %12 = alloca %struct.apr_pkt*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.q6copp*, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.q6adm* @dev_get_drvdata(i32 %23)
  store %struct.q6adm* %24, %struct.q6adm** %9, align 8
  store i8* null, i8** %18, align 8
  %25 = load i32, i32* @APR_HDR_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 8
  %28 = add i64 %27, 8
  %29 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 %28, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 %35, i32 %36)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %240

43:                                               ; preds = %4
  %44 = load i8*, i8** %18, align 8
  %45 = bitcast i8* %44 to %struct.apr_pkt*
  store %struct.apr_pkt* %45, %struct.apr_pkt** %12, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = load i32, i32* @APR_HDR_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to %struct.q6adm_cmd_matrix_map_routings_v5*
  store %struct.q6adm_cmd_matrix_map_routings_v5* %50, %struct.q6adm_cmd_matrix_map_routings_v5** %10, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = load i32, i32* @APR_HDR_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = getelementptr i8, i8* %54, i64 8
  %56 = bitcast i8* %55 to %struct.q6adm_session_map_node_v5*
  store %struct.q6adm_session_map_node_v5* %56, %struct.q6adm_session_map_node_v5** %11, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load i32, i32* @APR_HDR_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = getelementptr i8, i8* %60, i64 8
  %62 = getelementptr i8, i8* %61, i64 8
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %65 = load i32, i32* @APR_HDR_SIZE, align 4
  %66 = call i32 @APR_HDR_LEN(i32 %65)
  %67 = load i32, i32* @APR_PKT_VER, align 4
  %68 = call i32 @APR_HDR_FIELD(i32 %64, i32 %66, i32 %67)
  %69 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %70 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %74 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %77 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* @ADM_CMD_MATRIX_MAP_ROUTINGS_V5, align 8
  %80 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %81 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load %struct.q6adm_cmd_matrix_map_routings_v5*, %struct.q6adm_cmd_matrix_map_routings_v5** %10, align 8
  %84 = getelementptr inbounds %struct.q6adm_cmd_matrix_map_routings_v5, %struct.q6adm_cmd_matrix_map_routings_v5* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %94 [
    i32 128, label %86
    i32 129, label %90
  ]

86:                                               ; preds = %43
  %87 = load i32, i32* @ADM_MATRIX_ID_AUDIO_RX, align 4
  %88 = load %struct.q6adm_cmd_matrix_map_routings_v5*, %struct.q6adm_cmd_matrix_map_routings_v5** %10, align 8
  %89 = getelementptr inbounds %struct.q6adm_cmd_matrix_map_routings_v5, %struct.q6adm_cmd_matrix_map_routings_v5* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %98

90:                                               ; preds = %43
  %91 = load i32, i32* @ADM_MATRIX_ID_AUDIO_TX, align 4
  %92 = load %struct.q6adm_cmd_matrix_map_routings_v5*, %struct.q6adm_cmd_matrix_map_routings_v5** %10, align 8
  %93 = getelementptr inbounds %struct.q6adm_cmd_matrix_map_routings_v5, %struct.q6adm_cmd_matrix_map_routings_v5* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %98

94:                                               ; preds = %43
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %90, %86
  %99 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.q6adm_session_map_node_v5*, %struct.q6adm_session_map_node_v5** %11, align 8
  %102 = getelementptr inbounds %struct.q6adm_session_map_node_v5, %struct.q6adm_session_map_node_v5* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.q6adm_session_map_node_v5*, %struct.q6adm_session_map_node_v5** %11, align 8
  %106 = getelementptr inbounds %struct.q6adm_session_map_node_v5, %struct.q6adm_session_map_node_v5* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %164, %98
  %108 = load i32, i32* %16, align 4
  %109 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %167

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %131 = call i32 @kfree(%struct.apr_pkt* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %240

134:                                              ; preds = %112
  %135 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %17, align 4
  %141 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call %struct.q6copp* @q6adm_find_copp(%struct.q6adm* %141, i32 %142, i32 %143)
  store %struct.q6copp* %144, %struct.q6copp** %19, align 8
  %145 = load %struct.q6copp*, %struct.q6copp** %19, align 8
  %146 = icmp ne %struct.q6copp* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %134
  %148 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %149 = call i32 @kfree(%struct.apr_pkt* %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %240

152:                                              ; preds = %134
  %153 = load %struct.q6copp*, %struct.q6copp** %19, align 8
  %154 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  %160 = load %struct.q6copp*, %struct.q6copp** %19, align 8
  %161 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %160, i32 0, i32 0
  %162 = load i32, i32* @q6adm_free_copp, align 4
  %163 = call i32 @kref_put(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %152
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %107

167:                                              ; preds = %107
  %168 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %169 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %168, i32 0, i32 0
  %170 = call i32 @mutex_lock(i32* %169)
  %171 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %172 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %175 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %178 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %181 = call i32 @apr_send_pkt(i32 %179, %struct.apr_pkt* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %167
  %185 = load %struct.device*, %struct.device** %6, align 8
  %186 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  br label %233

190:                                              ; preds = %167
  %191 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %192 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %195 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %199 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %197, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* @TIMEOUT_MS, align 4
  %205 = call i32 @msecs_to_jiffies(i32 %204)
  %206 = call i32 @wait_event_timeout(i32 %193, i32 %203, i32 %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %190
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = getelementptr inbounds %struct.route_payload, %struct.route_payload* %2, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @ETIMEDOUT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %15, align 4
  br label %233

216:                                              ; preds = %190
  %217 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %218 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %216
  %223 = load %struct.device*, %struct.device** %6, align 8
  %224 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %225 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %15, align 4
  br label %233

231:                                              ; preds = %216
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232, %222, %209, %184
  %234 = load %struct.q6adm*, %struct.q6adm** %9, align 8
  %235 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %234, i32 0, i32 0
  %236 = call i32 @mutex_unlock(i32* %235)
  %237 = load %struct.apr_pkt*, %struct.apr_pkt** %12, align 8
  %238 = call i32 @kfree(%struct.apr_pkt* %237)
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %233, %147, %121, %40
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local %struct.q6adm* @dev_get_drvdata(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

declare dso_local %struct.q6copp* @q6adm_find_copp(%struct.q6adm*, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
