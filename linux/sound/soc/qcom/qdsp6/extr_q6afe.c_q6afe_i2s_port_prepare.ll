; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_i2s_port_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_i2s_port_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { %struct.TYPE_3__*, %union.afe_port_config }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%union.afe_port_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.q6afe_i2s_cfg = type { i32, i32, i32, i32, i32 }

@AFE_API_VERSION_I2S_CONFIG = common dso_local global i32 0, align 4
@AFE_LINEAR_PCM_DATA = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL = common dso_local global i32 0, align 4
@AFE_PORT_CONFIG_I2S_WS_SRC_EXTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no line is assigned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AFE_PORT_I2S_SD0 = common dso_local global i8* null, align 8
@AFE_PORT_I2S_SD1 = common dso_local global i32 0, align 4
@AFE_PORT_I2S_SD2 = common dso_local global i8* null, align 8
@AFE_PORT_I2S_SD3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid SD lines\0A\00", align 1
@AFE_PORT_I2S_STEREO = common dso_local global i32 0, align 4
@AFE_PORT_I2S_MONO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid Channel mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6afe_i2s_port_prepare(%struct.q6afe_port* %0, %struct.q6afe_i2s_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.q6afe_port*, align 8
  %5 = alloca %struct.q6afe_i2s_cfg*, align 8
  %6 = alloca %union.afe_port_config*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.q6afe_port* %0, %struct.q6afe_port** %4, align 8
  store %struct.q6afe_i2s_cfg* %1, %struct.q6afe_i2s_cfg** %5, align 8
  %9 = load %struct.q6afe_port*, %struct.q6afe_port** %4, align 8
  %10 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %9, i32 0, i32 1
  store %union.afe_port_config* %10, %union.afe_port_config** %6, align 8
  %11 = load %struct.q6afe_port*, %struct.q6afe_port** %4, align 8
  %12 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* @AFE_API_VERSION_I2S_CONFIG, align 4
  %17 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %18 = bitcast %union.afe_port_config* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  store i32 %16, i32* %19, align 4
  %20 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %24 = bitcast %union.afe_port_config* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %30 = bitcast %union.afe_port_config* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @AFE_LINEAR_PCM_DATA, align 4
  %33 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %34 = bitcast %union.afe_port_config* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %2
  %42 = load i32, i32* @AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL, align 4
  %43 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %44 = bitcast %union.afe_port_config* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  br label %52

46:                                               ; preds = %2
  %47 = load i32, i32* @AFE_PORT_CONFIG_I2S_WS_SRC_EXTERNAL, align 4
  %48 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %49 = bitcast %union.afe_port_config* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %46, %41
  %53 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hweight_long(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %141 [
    i32 0, label %58
    i32 1, label %63
    i32 2, label %95
    i32 3, label %113
    i32 4, label %127
  ]

58:                                               ; preds = %52
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %221

63:                                               ; preds = %52
  %64 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %65 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %89 [
    i32 134, label %67
    i32 133, label %73
    i32 131, label %78
    i32 130, label %84
  ]

67:                                               ; preds = %63
  %68 = load i8*, i8** @AFE_PORT_I2S_SD0, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %71 = bitcast %union.afe_port_config* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %94

73:                                               ; preds = %63
  %74 = load i32, i32* @AFE_PORT_I2S_SD1, align 4
  %75 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %76 = bitcast %union.afe_port_config* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %94

78:                                               ; preds = %63
  %79 = load i8*, i8** @AFE_PORT_I2S_SD2, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %82 = bitcast %union.afe_port_config* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %94

84:                                               ; preds = %63
  %85 = load i32, i32* @AFE_PORT_I2S_SD3, align 4
  %86 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %87 = bitcast %union.afe_port_config* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %94

89:                                               ; preds = %63
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %221

94:                                               ; preds = %84, %78, %73, %67
  br label %146

95:                                               ; preds = %52
  %96 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %97 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %107 [
    i32 135, label %99
    i32 132, label %103
  ]

99:                                               ; preds = %95
  %100 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %101 = bitcast %union.afe_port_config* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 139, i32* %102, align 4
  br label %112

103:                                              ; preds = %95
  %104 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %105 = bitcast %union.afe_port_config* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 138, i32* %106, align 4
  br label %112

107:                                              ; preds = %95
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %221

112:                                              ; preds = %103, %99
  br label %146

113:                                              ; preds = %52
  %114 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %115 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %121 [
    i32 136, label %117
  ]

117:                                              ; preds = %113
  %118 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %119 = bitcast %union.afe_port_config* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 141, i32* %120, align 4
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %221

126:                                              ; preds = %117
  br label %146

127:                                              ; preds = %52
  %128 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %129 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %135 [
    i32 137, label %131
  ]

131:                                              ; preds = %127
  %132 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %133 = bitcast %union.afe_port_config* %132 to %struct.TYPE_4__*
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 140, i32* %134, align 4
  br label %140

135:                                              ; preds = %127
  %136 = load %struct.device*, %struct.device** %7, align 8
  %137 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %221

140:                                              ; preds = %131
  br label %146

141:                                              ; preds = %52
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %221

146:                                              ; preds = %140, %126, %112, %94
  %147 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %148 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  switch i32 %149, label %219 [
    i32 1, label %150
    i32 2, label %150
    i32 3, label %183
    i32 4, label %183
    i32 5, label %195
    i32 6, label %195
    i32 7, label %207
    i32 8, label %207
  ]

150:                                              ; preds = %146, %146
  %151 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %152 = bitcast %union.afe_port_config* %151 to %struct.TYPE_4__*
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %167 [
    i32 139, label %155
    i32 141, label %155
    i32 140, label %155
    i32 138, label %161
  ]

155:                                              ; preds = %150, %150, %150
  %156 = load i8*, i8** @AFE_PORT_I2S_SD0, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %159 = bitcast %union.afe_port_config* %158 to %struct.TYPE_4__*
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  br label %167

161:                                              ; preds = %150
  %162 = load i8*, i8** @AFE_PORT_I2S_SD2, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %165 = bitcast %union.afe_port_config* %164 to %struct.TYPE_4__*
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  br label %167

167:                                              ; preds = %150, %161, %155
  %168 = load %struct.q6afe_i2s_cfg*, %struct.q6afe_i2s_cfg** %5, align 8
  %169 = getelementptr inbounds %struct.q6afe_i2s_cfg, %struct.q6afe_i2s_cfg* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* @AFE_PORT_I2S_STEREO, align 4
  %174 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %175 = bitcast %union.afe_port_config* %174 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %182

177:                                              ; preds = %167
  %178 = load i32, i32* @AFE_PORT_I2S_MONO, align 4
  %179 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %180 = bitcast %union.afe_port_config* %179 to %struct.TYPE_4__*
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %172
  br label %220

183:                                              ; preds = %146, %146
  %184 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %185 = bitcast %union.afe_port_config* %184 to %struct.TYPE_4__*
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 139
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load %struct.device*, %struct.device** %7, align 8
  %191 = call i32 @dev_err(%struct.device* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %221

194:                                              ; preds = %183
  br label %220

195:                                              ; preds = %146, %146
  %196 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %197 = bitcast %union.afe_port_config* %196 to %struct.TYPE_4__*
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 141
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.device*, %struct.device** %7, align 8
  %203 = call i32 @dev_err(%struct.device* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %221

206:                                              ; preds = %195
  br label %220

207:                                              ; preds = %146, %146
  %208 = load %union.afe_port_config*, %union.afe_port_config** %6, align 8
  %209 = bitcast %union.afe_port_config* %208 to %struct.TYPE_4__*
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %211, 140
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load %struct.device*, %struct.device** %7, align 8
  %215 = call i32 @dev_err(%struct.device* %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %221

218:                                              ; preds = %207
  br label %220

219:                                              ; preds = %146
  br label %220

220:                                              ; preds = %219, %218, %206, %194, %182
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %213, %201, %189, %141, %135, %121, %107, %89, %58
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
