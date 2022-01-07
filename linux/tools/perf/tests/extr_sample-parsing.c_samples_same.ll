; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_sample-parsing.c_samples_same.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_sample-parsing.c_samples_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_25__, %struct.TYPE_24__, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.perf_sample = type { i64, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__*, i32, %struct.TYPE_26__*, %struct.TYPE_23__ }
%struct.TYPE_30__ = type { i32, i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }

@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@ip = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@stream_id = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@period = common dso_local global i32 0, align 4
@PERF_SAMPLE_READ = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@read = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@callchain = common dso_local global %struct.TYPE_20__* null, align 8
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@raw_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Samples differ at 'raw_data'\0A\00", align 1
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@branch_stack = common dso_local global %struct.TYPE_21__* null, align 8
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@user_regs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Samples differ at 'user_regs'\0A\00", align 1
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@user_stack = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Samples differ at 'user_stack'\0A\00", align 1
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@weight = common dso_local global i32 0, align 4
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@data_src = common dso_local global i32 0, align 4
@PERF_SAMPLE_TRANSACTION = common dso_local global i32 0, align 4
@transaction = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@intr_regs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Samples differ at 'intr_regs'\0A\00", align 1
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4
@phys_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.perf_sample*, i32, i32)* @samples_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samples_same(%struct.perf_sample* %0, %struct.perf_sample* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %6, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @id, align 4
  %19 = call i32 @COMP(i32 %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ip, align 4
  %27 = call i32 @COMP(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @pid, align 4
  %35 = call i32 @COMP(i32 %34)
  %36 = load i32, i32* @tid, align 4
  %37 = call i32 @COMP(i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @time, align 4
  %45 = call i32 @COMP(i32 %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @addr, align 4
  %53 = call i32 @COMP(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @id, align 4
  %61 = call i32 @COMP(i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @stream_id, align 4
  %69 = call i32 @COMP(i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @cpu, align 4
  %77 = call i32 @COMP(i32 %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @period, align 4
  %85 = call i32 @COMP(i32 %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PERF_SAMPLE_READ, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 1, i32 1), align 8
  %98 = call i32 @COMP(i32 %97)
  br label %102

99:                                               ; preds = %91
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 0, i32 1), align 4
  %101 = call i32 @COMP(i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 3), align 4
  %109 = call i32 @COMP(i32 %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 2), align 8
  %117 = call i32 @COMP(i32 %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  store i64 0, i64* %10, align 8
  br label %124

124:                                              ; preds = %138, %123
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %127 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %125, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 1, i32 0), align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MCOMP(i32 %136)
  br label %138

138:                                              ; preds = %132
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %124

141:                                              ; preds = %124
  br label %145

142:                                              ; preds = %118
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @read, i32 0, i32 0, i32 0), align 8
  %144 = call i32 @COMP(i32 %143)
  br label %145

145:                                              ; preds = %142, %141
  br label %146

146:                                              ; preds = %145, %86
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %146
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** @callchain, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @COMP(i32 %154)
  store i64 0, i64* %10, align 8
  br label %156

156:                                              ; preds = %172, %151
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %159 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %158, i32 0, i32 6
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %157, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** @callchain, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @COMP(i32 %170)
  br label %172

172:                                              ; preds = %164
  %173 = load i64, i64* %10, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %10, align 8
  br label %156

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %146
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %176
  %182 = load i32, i32* @raw_size, align 4
  %183 = call i32 @COMP(i32 %182)
  %184 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %185 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %188 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %191 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @memcmp(i32 %186, i32 %189, i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %181
  %196 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %384

197:                                              ; preds = %181
  br label %198

198:                                              ; preds = %197, %176
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %198
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** @branch_stack, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @COMP(i32 %206)
  store i64 0, i64* %10, align 8
  br label %208

208:                                              ; preds = %224, %203
  %209 = load i64, i64* %10, align 8
  %210 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %211 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %210, i32 0, i32 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %209, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %208
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** @branch_stack, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @MCOMP(i32 %222)
  br label %224

224:                                              ; preds = %216
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %10, align 8
  br label %208

227:                                              ; preds = %208
  br label %228

228:                                              ; preds = %227, %198
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %277

233:                                              ; preds = %228
  %234 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %235 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @hweight_long(i32 %237)
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 4
  store i64 %240, i64* %11, align 8
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @user_regs, i32 0, i32 1), align 4
  %242 = call i32 @COMP(i32 %241)
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @user_regs, i32 0, i32 0), align 4
  %244 = call i32 @COMP(i32 %243)
  %245 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %246 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %233
  %251 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %252 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %250
  %257 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %258 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %256
  %263 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %264 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %268 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i64, i64* %11, align 8
  %272 = call i64 @memcmp(i32 %266, i32 %270, i64 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %262, %256, %250
  %275 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %384

276:                                              ; preds = %262, %233
  br label %277

277:                                              ; preds = %276, %228
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %302

282:                                              ; preds = %277
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @user_stack, i32 0, i32 0), align 4
  %284 = call i32 @COMP(i32 %283)
  %285 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %286 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %290 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %294 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @memcmp(i32 %288, i32 %292, i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %282
  %300 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %384

301:                                              ; preds = %282
  br label %302

302:                                              ; preds = %301, %277
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i32, i32* @weight, align 4
  %309 = call i32 @COMP(i32 %308)
  br label %310

310:                                              ; preds = %307, %302
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32, i32* @data_src, align 4
  %317 = call i32 @COMP(i32 %316)
  br label %318

318:                                              ; preds = %315, %310
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @PERF_SAMPLE_TRANSACTION, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = load i32, i32* @transaction, align 4
  %325 = call i32 @COMP(i32 %324)
  br label %326

326:                                              ; preds = %323, %318
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %375

331:                                              ; preds = %326
  %332 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %333 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @hweight_long(i32 %335)
  %337 = sext i32 %336 to i64
  %338 = mul i64 %337, 4
  store i64 %338, i64* %12, align 8
  %339 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @intr_regs, i32 0, i32 1), align 4
  %340 = call i32 @COMP(i32 %339)
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @intr_regs, i32 0, i32 0), align 4
  %342 = call i32 @COMP(i32 %341)
  %343 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %344 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %374

348:                                              ; preds = %331
  %349 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %350 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %372

354:                                              ; preds = %348
  %355 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %356 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %354
  %361 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %362 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %366 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i64, i64* %12, align 8
  %370 = call i64 @memcmp(i32 %364, i32 %368, i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %360, %354, %348
  %373 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %384

374:                                              ; preds = %360, %331
  br label %375

375:                                              ; preds = %374, %326
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i32, i32* @phys_addr, align 4
  %382 = call i32 @COMP(i32 %381)
  br label %383

383:                                              ; preds = %380, %375
  store i32 1, i32* %5, align 4
  br label %384

384:                                              ; preds = %383, %372, %299, %274, %195
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local i32 @COMP(i32) #1

declare dso_local i32 @MCOMP(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @hweight_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
