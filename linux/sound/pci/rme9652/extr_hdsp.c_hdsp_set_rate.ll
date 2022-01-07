; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HDSP_ClockModeMaster = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"device is not running as a clock master: cannot set sample rate.\0A\00", align 1
@HDSP_AUTOSYNC_FROM_ADAT1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Detected ADAT in double speed mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Detected ADAT in quad speed mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"No AutoSync source for requested rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HDSP_Frequency32KHz = common dso_local global i32 0, align 4
@HDSP_Frequency44_1KHz = common dso_local global i32 0, align 4
@HDSP_Frequency48KHz = common dso_local global i32 0, align 4
@HDSP_Frequency64KHz = common dso_local global i32 0, align 4
@HDSP_Frequency88_2KHz = common dso_local global i32 0, align 4
@HDSP_Frequency96KHz = common dso_local global i32 0, align 4
@HDSP_Frequency128KHz = common dso_local global i32 0, align 4
@HDSP_Frequency176_4KHz = common dso_local global i32 0, align 4
@HDSP_Frequency192KHz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"cannot change speed mode (capture PID = %d, playback PID = %d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HDSP_FrequencyMask = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@channel_map_H9632_qs = common dso_local global i32 0, align 4
@channel_map_H9632_ds = common dso_local global i32 0, align 4
@channel_map_ds = common dso_local global i32 0, align 4
@channel_map_mf_ss = common dso_local global i32 0, align 4
@channel_map_df_ss = common dso_local global i32 0, align 4
@channel_map_H9632_ss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32, i32)* @hdsp_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_rate(%struct.hdsp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HDSP_ClockModeMaster, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %24 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %23, i32 0, i32 7
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %275

29:                                               ; preds = %19
  %30 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %31 = call i32 @hdsp_external_sample_rate(%struct.hdsp* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %33 = call i32 @hdsp_spdif_sample_rate(%struct.hdsp* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 2
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %40 = call i64 @hdsp_autosync_ref(%struct.hdsp* %39)
  %41 = load i64, i64* @HDSP_AUTOSYNC_FROM_ADAT1, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 7
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %85

50:                                               ; preds = %38, %29
  %51 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 131
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %57, 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %62 = call i64 @hdsp_autosync_ref(%struct.hdsp* %61)
  %63 = load i64, i64* @HDSP_AUTOSYNC_FROM_ADAT1, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 7
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %84

72:                                               ; preds = %60, %55, %50
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %78 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %77, i32 0, i32 7
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %275

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %3
  %88 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %89 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 96000
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %95 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 131
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %275

101:                                              ; preds = %93, %87
  %102 = load i32, i32* %6, align 4
  switch i32 %102, label %166 [
    i32 32000, label %103
    i32 44100, label %109
    i32 48000, label %115
    i32 64000, label %121
    i32 88200, label %130
    i32 96000, label %139
    i32 128000, label %148
    i32 176400, label %154
    i32 192000, label %160
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 48000
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i32, i32* @HDSP_Frequency32KHz, align 4
  store i32 %108, i32* %10, align 4
  br label %169

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 48000
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 1, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* @HDSP_Frequency44_1KHz, align 4
  store i32 %114, i32* %10, align 4
  br label %169

115:                                              ; preds = %101
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 48000
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* @HDSP_Frequency48KHz, align 4
  store i32 %120, i32* %10, align 4
  br label %169

121:                                              ; preds = %101
  %122 = load i32, i32* %9, align 4
  %123 = icmp sle i32 %122, 48000
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp sgt i32 %125, 96000
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %121
  store i32 1, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i32, i32* @HDSP_Frequency64KHz, align 4
  store i32 %129, i32* %10, align 4
  br label %169

130:                                              ; preds = %101
  %131 = load i32, i32* %9, align 4
  %132 = icmp sle i32 %131, 48000
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = icmp sgt i32 %134, 96000
  br i1 %135, label %136, label %137

136:                                              ; preds = %133, %130
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* @HDSP_Frequency88_2KHz, align 4
  store i32 %138, i32* %10, align 4
  br label %169

139:                                              ; preds = %101
  %140 = load i32, i32* %9, align 4
  %141 = icmp sle i32 %140, 48000
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %143, 96000
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %139
  store i32 1, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i32, i32* @HDSP_Frequency96KHz, align 4
  store i32 %147, i32* %10, align 4
  br label %169

148:                                              ; preds = %101
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 128000
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i32, i32* @HDSP_Frequency128KHz, align 4
  store i32 %153, i32* %10, align 4
  br label %169

154:                                              ; preds = %101
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 128000
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i32, i32* @HDSP_Frequency176_4KHz, align 4
  store i32 %159, i32* %10, align 4
  br label %169

160:                                              ; preds = %101
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 128000
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 1, i32* %8, align 4
  br label %164

164:                                              ; preds = %163, %160
  %165 = load i32, i32* @HDSP_Frequency192KHz, align 4
  store i32 %165, i32* %10, align 4
  br label %169

166:                                              ; preds = %101
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %275

169:                                              ; preds = %164, %158, %152, %146, %137, %128, %119, %113, %107
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %169
  %173 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %174 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %179 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %177, %172
  %183 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %184 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %183, i32 0, i32 7
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %189 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %192 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @dev_warn(i32 %187, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %190, i64 %193)
  %195 = load i32, i32* @EBUSY, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %4, align 4
  br label %275

197:                                              ; preds = %177, %169
  %198 = load i32, i32* @HDSP_FrequencyMask, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %201 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %206 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %210 = load i32, i32* @HDSP_controlRegister, align 4
  %211 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %212 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @hdsp_write(%struct.hdsp* %209, i32 %210, i32 %213)
  %215 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %216 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 131
  br i1 %218, label %219, label %228

219:                                              ; preds = %197
  %220 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %221 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = icmp sge i32 %222, 152
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @hdsp_set_dds_value(%struct.hdsp* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %219, %197
  %229 = load i32, i32* %6, align 4
  %230 = icmp sge i32 %229, 128000
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* @channel_map_H9632_qs, align 4
  %233 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %234 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 4
  br label %271

235:                                              ; preds = %228
  %236 = load i32, i32* %6, align 4
  %237 = icmp sgt i32 %236, 48000
  br i1 %237, label %238, label %252

238:                                              ; preds = %235
  %239 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %240 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 131
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load i32, i32* @channel_map_H9632_ds, align 4
  %245 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %246 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 4
  br label %251

247:                                              ; preds = %238
  %248 = load i32, i32* @channel_map_ds, align 4
  %249 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %250 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %249, i32 0, i32 6
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %247, %243
  br label %270

252:                                              ; preds = %235
  %253 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %254 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %268 [
    i32 128, label %256
    i32 129, label %256
    i32 132, label %260
    i32 130, label %260
    i32 131, label %264
  ]

256:                                              ; preds = %252, %252
  %257 = load i32, i32* @channel_map_mf_ss, align 4
  %258 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %259 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %258, i32 0, i32 6
  store i32 %257, i32* %259, align 4
  br label %269

260:                                              ; preds = %252, %252
  %261 = load i32, i32* @channel_map_df_ss, align 4
  %262 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %263 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 4
  br label %269

264:                                              ; preds = %252
  %265 = load i32, i32* @channel_map_H9632_ss, align 4
  %266 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %267 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %266, i32 0, i32 6
  store i32 %265, i32* %267, align 4
  br label %269

268:                                              ; preds = %252
  br label %269

269:                                              ; preds = %268, %264, %260, %256
  br label %270

270:                                              ; preds = %269, %251
  br label %271

271:                                              ; preds = %270, %231
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %274 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %271, %182, %166, %98, %76, %22
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hdsp_external_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_sample_rate(%struct.hdsp*) #1

declare dso_local i64 @hdsp_autosync_ref(%struct.hdsp*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_set_dds_value(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
