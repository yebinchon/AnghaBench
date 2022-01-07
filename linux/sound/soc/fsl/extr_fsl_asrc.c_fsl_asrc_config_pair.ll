; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_config_pair.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_config_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc_pair = type { i32, %struct.fsl_asrc*, %struct.asrc_config* }
%struct.fsl_asrc = type { i32, i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.asrc_config = type { i32, i64, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid pair config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"does not support %d channels\0A\00", align 1
@ASRC_WIDTH_8_BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"does not support 8bit width output\0A\00", align 1
@INCLK_NONE = common dso_local global i64 0, align 8
@supported_asrc_rate = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"unsupported input sample rate: %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"unsupported output sample rate: %dHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"exceed supported ratio range [1/24, 8] for \09\09\09\09inrate/outrate: %d/%d\0A\00", align 1
@clk_map = common dso_local global i32** null, align 8
@IN = common dso_local global i64 0, align 8
@OUT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"failed to support input sample rate %dHz by asrck_%x\0A\00", align 1
@IDEAL_RATIO_RATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"failed to support output sample rate %dHz by asrck_%x\0A\00", align 1
@REG_ASRCNCR = common dso_local global i32 0, align 4
@REG_ASRCTR = common dso_local global i32 0, align 4
@REG_ASRCSR = common dso_local global i32 0, align 4
@ASRMCR1i_OW16_MASK = common dso_local global i32 0, align 4
@ASRMCR1i_IWD_MASK = common dso_local global i32 0, align 4
@ASRMCRi_BUFSTALLi_MASK = common dso_local global i32 0, align 4
@ASRMCRi_BUFSTALLi = common dso_local global i32 0, align 4
@ASRC_INPUTFIFO_THRESHOLD = common dso_local global i32 0, align 4
@REG_ASRCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_asrc_pair*)* @fsl_asrc_config_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_config_pair(%struct.fsl_asrc_pair* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_asrc_pair*, align 8
  %4 = alloca %struct.asrc_config*, align 8
  %5 = alloca %struct.fsl_asrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.clk*, align 8
  %19 = alloca i32, align 4
  store %struct.fsl_asrc_pair* %0, %struct.fsl_asrc_pair** %3, align 8
  %20 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %20, i32 0, i32 2
  %22 = load %struct.asrc_config*, %struct.asrc_config** %21, align 8
  store %struct.asrc_config* %22, %struct.asrc_config** %4, align 8
  %23 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %23, i32 0, i32 1
  %25 = load %struct.fsl_asrc*, %struct.fsl_asrc** %24, align 8
  store %struct.fsl_asrc* %25, %struct.fsl_asrc** %5, align 8
  %26 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %30 = icmp ne %struct.asrc_config* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %436

35:                                               ; preds = %1
  %36 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %37 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %42 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 10
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %35
  %46 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %47 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %436

52:                                               ; preds = %40
  %53 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %54 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ASRC_WIDTH_8_BIT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %436

62:                                               ; preds = %52
  %63 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %64 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %67 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %70 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @INCLK_NONE, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %90, %62
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** @supported_asrc_rate, align 8
  %78 = call i32 @ARRAY_SIZE(i32* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** @supported_asrc_rate, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %93

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %75

93:                                               ; preds = %88, %75
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** @supported_asrc_rate, align 8
  %96 = call i32 @ARRAY_SIZE(i32* %95)
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %436

103:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %119, %103
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** @supported_asrc_rate, align 8
  %107 = call i32 @ARRAY_SIZE(i32* %106)
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** @supported_asrc_rate, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %122

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %104

122:                                              ; preds = %117, %104
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** @supported_asrc_rate, align 8
  %125 = call i32 @ARRAY_SIZE(i32* %124)
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %436

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %133, 5512
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %136, 30000
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 24, %140
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = mul nsw i32 8, %145
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %436

154:                                              ; preds = %143, %135, %132
  %155 = load i32**, i32*** @clk_map, align 8
  %156 = load i64, i64* @IN, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %160 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @IN, align 8
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %164
  store i32 %163, i32* %165, align 4
  %166 = load i32**, i32*** @clk_map, align 8
  %167 = load i64, i64* @OUT, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %171 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* @OUT, align 8
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %175
  store i32 %174, i32* %176, align 4
  %177 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %178 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %177, i32 0, i32 2
  %179 = load %struct.clk**, %struct.clk*** %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %154
  %183 = load i64, i64* @OUT, align 8
  br label %186

184:                                              ; preds = %154
  %185 = load i64, i64* @IN, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ]
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.clk*, %struct.clk** %179, i64 %190
  %192 = load %struct.clk*, %struct.clk** %191, align 8
  store %struct.clk* %192, %struct.clk** %18, align 8
  %193 = load %struct.clk*, %struct.clk** %18, align 8
  %194 = call i32 @clk_get_rate(%struct.clk* %193)
  %195 = load i32, i32* %7, align 4
  %196 = sdiv i32 %194, %195
  %197 = load i64, i64* @IN, align 8
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %197
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* @IN, align 8
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %186
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i64, i64* @OUT, align 8
  br label %211

209:                                              ; preds = %203
  %210 = load i64, i64* @IN, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %208, %207 ], [ %210, %209 ]
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %204, i32 %214)
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %436

218:                                              ; preds = %186
  %219 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %220 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %219, i32 0, i32 2
  %221 = load %struct.clk**, %struct.clk*** %220, align 8
  %222 = load i64, i64* @OUT, align 8
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.clk*, %struct.clk** %221, i64 %225
  %227 = load %struct.clk*, %struct.clk** %226, align 8
  store %struct.clk* %227, %struct.clk** %18, align 8
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %218
  %231 = load %struct.clk*, %struct.clk** %18, align 8
  %232 = call i32 @clk_get_rate(%struct.clk* %231)
  %233 = load i32, i32* @IDEAL_RATIO_RATE, align 4
  %234 = sdiv i32 %232, %233
  %235 = load i64, i64* @OUT, align 8
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %235
  store i32 %234, i32* %236, align 4
  br label %244

237:                                              ; preds = %218
  %238 = load %struct.clk*, %struct.clk** %18, align 8
  %239 = call i32 @clk_get_rate(%struct.clk* %238)
  %240 = load i32, i32* %8, align 4
  %241 = sdiv i32 %239, %240
  %242 = load i64, i64* @OUT, align 8
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %242
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %237, %230
  %245 = load i64, i64* @OUT, align 8
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load i32, i32* %8, align 4
  %251 = load i64, i64* @OUT, align 8
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (i8*, ...) @pair_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %250, i32 %253)
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %2, align 4
  br label %436

257:                                              ; preds = %244
  %258 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %259 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %15, align 4
  %261 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %262 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %263, 4
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i32, i32* %15, align 4
  %267 = sdiv i32 %266, 2
  store i32 %267, i32* %15, align 4
  br label %268

268:                                              ; preds = %265, %257
  %269 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %270 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @REG_ASRCNCR, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %275 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @ASRCNCR_ANCi_MASK(i32 %273, i32 %276)
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %15, align 4
  %280 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %281 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @ASRCNCR_ANCi(i32 %278, i32 %279, i32 %282)
  %284 = call i32 @regmap_update_bits(i32 %271, i32 %272, i32 %277, i32 %283)
  %285 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %286 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @REG_ASRCTR, align 4
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @ASRCTR_ATSi_MASK(i32 %289)
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @ASRCTR_ATS(i32 %291)
  %293 = call i32 @regmap_update_bits(i32 %287, i32 %288, i32 %290, i32 %292)
  %294 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %295 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @REG_ASRCTR, align 4
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @ASRCTR_USRi_MASK(i32 %298)
  %300 = call i32 @regmap_update_bits(i32 %296, i32 %297, i32 %299, i32 0)
  %301 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %302 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @REG_ASRCSR, align 4
  %305 = load i32, i32* %6, align 4
  %306 = call i32 @ASRCSR_AICSi_MASK(i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @ASRCSR_AOCSi_MASK(i32 %307)
  %309 = or i32 %306, %308
  %310 = load i32, i32* %6, align 4
  %311 = load i64, i64* @IN, align 8
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @ASRCSR_AICS(i32 %310, i32 %313)
  %315 = load i32, i32* %6, align 4
  %316 = load i64, i64* @OUT, align 8
  %317 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @ASRCSR_AOCS(i32 %315, i32 %318)
  %320 = or i32 %314, %319
  %321 = call i32 @regmap_update_bits(i32 %303, i32 %304, i32 %309, i32 %320)
  %322 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %323 = load i64, i64* @IN, align 8
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @fsl_asrc_cal_asrck_divisor(%struct.fsl_asrc_pair* %322, i32 %325)
  store i32 %326, i32* %9, align 4
  %327 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %328 = load i64, i64* @OUT, align 8
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @fsl_asrc_cal_asrck_divisor(%struct.fsl_asrc_pair* %327, i32 %330)
  store i32 %331, i32* %10, align 4
  %332 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %333 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %6, align 4
  %336 = call i32 @REG_ASRCDR(i32 %335)
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @ASRCDRi_AOCPi_MASK(i32 %337)
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @ASRCDRi_AICPi_MASK(i32 %339)
  %341 = or i32 %338, %340
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @ASRCDRi_AOCDi_MASK(i32 %342)
  %344 = or i32 %341, %343
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @ASRCDRi_AICDi_MASK(i32 %345)
  %347 = or i32 %344, %346
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* %10, align 4
  %350 = call i32 @ASRCDRi_AOCP(i32 %348, i32 %349)
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @ASRCDRi_AICP(i32 %351, i32 %352)
  %354 = or i32 %350, %353
  %355 = call i32 @regmap_update_bits(i32 %334, i32 %336, i32 %347, i32 %354)
  %356 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %357 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %6, align 4
  %360 = call i32 @REG_ASRMCR1(i32 %359)
  %361 = load i32, i32* @ASRMCR1i_OW16_MASK, align 4
  %362 = load i32, i32* @ASRMCR1i_IWD_MASK, align 4
  %363 = or i32 %361, %362
  %364 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %365 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @ASRMCR1i_OW16(i64 %366)
  %368 = load %struct.asrc_config*, %struct.asrc_config** %4, align 8
  %369 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @ASRMCR1i_IWD(i32 %370)
  %372 = or i32 %367, %371
  %373 = call i32 @regmap_update_bits(i32 %358, i32 %360, i32 %363, i32 %372)
  %374 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %375 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %6, align 4
  %378 = call i32 @REG_ASRMCR(i32 %377)
  %379 = load i32, i32* @ASRMCRi_BUFSTALLi_MASK, align 4
  %380 = load i32, i32* @ASRMCRi_BUFSTALLi, align 4
  %381 = call i32 @regmap_update_bits(i32 %376, i32 %378, i32 %379, i32 %380)
  %382 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %383 = load i32, i32* @ASRC_INPUTFIFO_THRESHOLD, align 4
  %384 = load i32, i32* @ASRC_INPUTFIFO_THRESHOLD, align 4
  %385 = call i32 @fsl_asrc_set_watermarks(%struct.fsl_asrc_pair* %382, i32 %383, i32 %384)
  %386 = load i32, i32* %19, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %436

389:                                              ; preds = %268
  %390 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %391 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @REG_ASRCTR, align 4
  %394 = load i32, i32* %6, align 4
  %395 = call i32 @ASRCTR_ATSi_MASK(i32 %394)
  %396 = call i32 @regmap_update_bits(i32 %392, i32 %393, i32 %395, i32 0)
  %397 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %398 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @REG_ASRCTR, align 4
  %401 = load i32, i32* %6, align 4
  %402 = call i32 @ASRCTR_IDRi_MASK(i32 %401)
  %403 = load i32, i32* %6, align 4
  %404 = call i32 @ASRCTR_USRi_MASK(i32 %403)
  %405 = or i32 %402, %404
  %406 = load i32, i32* %6, align 4
  %407 = call i32 @ASRCTR_IDR(i32 %406)
  %408 = load i32, i32* %6, align 4
  %409 = call i32 @ASRCTR_USR(i32 %408)
  %410 = or i32 %407, %409
  %411 = call i32 @regmap_update_bits(i32 %399, i32 %400, i32 %405, i32 %410)
  %412 = load i32, i32* %7, align 4
  %413 = load i32, i32* %8, align 4
  %414 = call i32 @fsl_asrc_sel_proc(i32 %412, i32 %413, i32* %16, i32* %17)
  %415 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %416 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @REG_ASRCFG, align 4
  %419 = load i32, i32* %6, align 4
  %420 = call i32 @ASRCFG_PREMODi_MASK(i32 %419)
  %421 = load i32, i32* %6, align 4
  %422 = call i32 @ASRCFG_POSTMODi_MASK(i32 %421)
  %423 = or i32 %420, %422
  %424 = load i32, i32* %6, align 4
  %425 = load i32, i32* %16, align 4
  %426 = call i32 @ASRCFG_PREMOD(i32 %424, i32 %425)
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %17, align 4
  %429 = call i32 @ASRCFG_POSTMOD(i32 %427, i32 %428)
  %430 = or i32 %426, %429
  %431 = call i32 @regmap_update_bits(i32 %417, i32 %418, i32 %423, i32 %430)
  %432 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %3, align 8
  %433 = load i32, i32* %7, align 4
  %434 = load i32, i32* %8, align 4
  %435 = call i32 @fsl_asrc_set_ideal_ratio(%struct.fsl_asrc_pair* %432, i32 %433, i32 %434)
  store i32 %435, i32* %2, align 4
  br label %436

436:                                              ; preds = %389, %388, %249, %211, %148, %127, %98, %58, %45, %31
  %437 = load i32, i32* %2, align 4
  ret i32 %437
}

declare dso_local i32 @pair_err(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ASRCNCR_ANCi_MASK(i32, i32) #1

declare dso_local i32 @ASRCNCR_ANCi(i32, i32, i32) #1

declare dso_local i32 @ASRCTR_ATSi_MASK(i32) #1

declare dso_local i32 @ASRCTR_ATS(i32) #1

declare dso_local i32 @ASRCTR_USRi_MASK(i32) #1

declare dso_local i32 @ASRCSR_AICSi_MASK(i32) #1

declare dso_local i32 @ASRCSR_AOCSi_MASK(i32) #1

declare dso_local i32 @ASRCSR_AICS(i32, i32) #1

declare dso_local i32 @ASRCSR_AOCS(i32, i32) #1

declare dso_local i32 @fsl_asrc_cal_asrck_divisor(%struct.fsl_asrc_pair*, i32) #1

declare dso_local i32 @REG_ASRCDR(i32) #1

declare dso_local i32 @ASRCDRi_AOCPi_MASK(i32) #1

declare dso_local i32 @ASRCDRi_AICPi_MASK(i32) #1

declare dso_local i32 @ASRCDRi_AOCDi_MASK(i32) #1

declare dso_local i32 @ASRCDRi_AICDi_MASK(i32) #1

declare dso_local i32 @ASRCDRi_AOCP(i32, i32) #1

declare dso_local i32 @ASRCDRi_AICP(i32, i32) #1

declare dso_local i32 @REG_ASRMCR1(i32) #1

declare dso_local i32 @ASRMCR1i_OW16(i64) #1

declare dso_local i32 @ASRMCR1i_IWD(i32) #1

declare dso_local i32 @REG_ASRMCR(i32) #1

declare dso_local i32 @fsl_asrc_set_watermarks(%struct.fsl_asrc_pair*, i32, i32) #1

declare dso_local i32 @ASRCTR_IDRi_MASK(i32) #1

declare dso_local i32 @ASRCTR_IDR(i32) #1

declare dso_local i32 @ASRCTR_USR(i32) #1

declare dso_local i32 @fsl_asrc_sel_proc(i32, i32, i32*, i32*) #1

declare dso_local i32 @ASRCFG_PREMODi_MASK(i32) #1

declare dso_local i32 @ASRCFG_POSTMODi_MASK(i32) #1

declare dso_local i32 @ASRCFG_PREMOD(i32, i32) #1

declare dso_local i32 @ASRCFG_POSTMOD(i32, i32) #1

declare dso_local i32 @fsl_asrc_set_ideal_ratio(%struct.fsl_asrc_pair*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
