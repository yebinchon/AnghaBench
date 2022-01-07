; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i64, i64 }
%struct.hist_entry = type { i64, i32, %struct.TYPE_24__*, %struct.TYPE_23__, %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i8*, i8*, i32, %struct.TYPE_17__, i32, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*, i32, i64)* @hist_entry__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__init(%struct.hist_entry* %0, %struct.hist_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca %struct.hist_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %12 = bitcast %struct.hist_entry* %10 to i8*
  %13 = bitcast %struct.hist_entry* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 112, i1 false)
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @symbol_conf, i32 0, i32 3), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %4
  %20 = call i8* @malloc(i32 8)
  %21 = bitcast i8* %20 to %struct.TYPE_24__*
  %22 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 2
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %23, align 8
  %24 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = icmp eq %struct.TYPE_24__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %256

31:                                               ; preds = %19
  %32 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %33 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %32, i32 0, i32 2
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %36 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %35, i32 0, i32 15
  %37 = call i32 @memcpy(%struct.TYPE_24__* %34, %struct.TYPE_24__* %36, i32 8)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %42 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %41, i32 0, i32 15
  %43 = call i32 @memset(%struct.TYPE_24__* %42, i32 0, i32 8)
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %47 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @map__get(i32 %49)
  %51 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %52 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %51, i32 0, i32 5
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = icmp ne %struct.TYPE_24__* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %45
  %56 = call i8* @malloc(i32 8)
  %57 = bitcast i8* %56 to %struct.TYPE_24__*
  %58 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %59 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %58, i32 0, i32 5
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %59, align 8
  %60 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %61 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %60, i32 0, i32 5
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = icmp eq %struct.TYPE_24__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %245

65:                                               ; preds = %55
  %66 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %67 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %66, i32 0, i32 5
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %70 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %69, i32 0, i32 5
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  %72 = call i32 @memcpy(%struct.TYPE_24__* %68, %struct.TYPE_24__* %71, i32 8)
  %73 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %74 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %73, i32 0, i32 5
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @map__get(i32 %78)
  %80 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %81 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %80, i32 0, i32 5
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @map__get(i32 %85)
  br label %87

87:                                               ; preds = %65, %45
  %88 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %89 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %88, i32 0, i32 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = icmp ne %struct.TYPE_22__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %94 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %93, i32 0, i32 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @map__get(i32 %98)
  %100 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %101 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %100, i32 0, i32 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @map__get(i32 %105)
  br label %107

107:                                              ; preds = %92, %87
  %108 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %109 = call i64 @hist_entry__has_callchains(%struct.hist_entry* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @symbol_conf, i32 0, i32 2), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %116 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @callchain_init(i32 %117)
  br label %119

119:                                              ; preds = %114, %111, %107
  %120 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %121 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %120, i32 0, i32 6
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = icmp ne %struct.TYPE_24__* %122, null
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %126 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %125, i32 0, i32 6
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %129 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.TYPE_24__* @memdup(%struct.TYPE_24__* %127, i32 %130)
  %132 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %133 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %132, i32 0, i32 6
  store %struct.TYPE_24__* %131, %struct.TYPE_24__** %133, align 8
  %134 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %135 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %134, i32 0, i32 6
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %135, align 8
  %137 = icmp eq %struct.TYPE_24__* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %201

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %119
  %141 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %142 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %141, i32 0, i32 7
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = icmp ne %struct.TYPE_24__* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %147 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %146, i32 0, i32 7
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  %149 = call %struct.TYPE_24__* @strdup(%struct.TYPE_24__* %148)
  %150 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %151 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %150, i32 0, i32 7
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %151, align 8
  %152 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %153 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %152, i32 0, i32 7
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %153, align 8
  %155 = icmp eq %struct.TYPE_24__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %197

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157, %140
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @symbol_conf, i32 0, i32 1), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @symbol_conf, i32 0, i32 1), align 8
  %163 = call i32 @calloc(i32 4, i64 %162)
  %164 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %165 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %164, i32 0, i32 12
  store i32 %163, i32* %165, align 8
  %166 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %167 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %193

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %158
  %173 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %174 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %173, i32 0, i32 11
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = call i32 @INIT_LIST_HEAD(i32* %175)
  %177 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %178 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @thread__get(i32 %179)
  %181 = load i8*, i8** @RB_ROOT_CACHED, align 8
  %182 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %183 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %182, i32 0, i32 9
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @RB_ROOT_CACHED, align 8
  %185 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %186 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %185, i32 0, i32 8
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @symbol_conf, i32 0, i32 0), align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %172
  %190 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %191 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %190, i32 0, i32 1
  store i32 1, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %172
  store i32 0, i32* %5, align 4
  br label %256

193:                                              ; preds = %170
  %194 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %195 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %194, i32 0, i32 7
  %196 = call i32 @zfree(%struct.TYPE_24__** %195)
  br label %197

197:                                              ; preds = %193, %156
  %198 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %199 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %198, i32 0, i32 6
  %200 = call i32 @zfree(%struct.TYPE_24__** %199)
  br label %201

201:                                              ; preds = %197, %138
  %202 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %203 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %202, i32 0, i32 5
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %203, align 8
  %205 = icmp ne %struct.TYPE_24__* %204, null
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %208 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %207, i32 0, i32 5
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @map__put(i32 %212)
  %214 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %215 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %214, i32 0, i32 5
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @map__put(i32 %219)
  %221 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %222 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %221, i32 0, i32 5
  %223 = call i32 @zfree(%struct.TYPE_24__** %222)
  br label %224

224:                                              ; preds = %206, %201
  %225 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %226 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %225, i32 0, i32 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = icmp ne %struct.TYPE_22__* %227, null
  br i1 %228, label %229, label %244

229:                                              ; preds = %224
  %230 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %231 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %230, i32 0, i32 4
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @map__put(i32 %235)
  %237 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %238 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %237, i32 0, i32 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @map__put(i32 %242)
  br label %244

244:                                              ; preds = %229, %224
  br label %245

245:                                              ; preds = %244, %64
  %246 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %247 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @map__zput(i32 %249)
  %251 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %252 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %251, i32 0, i32 2
  %253 = call i32 @zfree(%struct.TYPE_24__** %252)
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %245, %192, %28
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @map__get(i32) #2

declare dso_local i64 @hist_entry__has_callchains(%struct.hist_entry*) #2

declare dso_local i32 @callchain_init(i32) #2

declare dso_local %struct.TYPE_24__* @memdup(%struct.TYPE_24__*, i32) #2

declare dso_local %struct.TYPE_24__* @strdup(%struct.TYPE_24__*) #2

declare dso_local i32 @calloc(i32, i64) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @thread__get(i32) #2

declare dso_local i32 @zfree(%struct.TYPE_24__**) #2

declare dso_local i32 @map__put(i32) #2

declare dso_local i32 @map__zput(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
