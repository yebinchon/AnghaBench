; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i8*, i64, i64, i32, i32, i64, i64, i32, i64 }
%struct.map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.machine = type { i8* }
%struct.symsrc = type { i32 }
%struct.nscookie = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/tmp/perf-\00", align 1
@DSO_TYPE_KERNEL = common dso_local global i64 0, align 8
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@DSO_BINARY_TYPE__JAVA_JIT = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE_COMP = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_KMODULE = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_KMODULE_COMP = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__SYMTAB_CNT = common dso_local global i64 0, align 8
@binary_type_symtab = common dso_local global i32* null, align 8
@DSO_BINARY_TYPE__BUILD_ID_CACHE = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__BUILD_ID_CACHE_DEBUGINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load(%struct.dso* %0, %struct.map* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.symsrc], align 4
  %12 = alloca %struct.symsrc*, align 8
  %13 = alloca %struct.symsrc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.nscookie, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.symsrc*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.map* %1, %struct.map** %4, align 8
  store i32 -1, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.symsrc* null, %struct.symsrc** %12, align 8
  store %struct.symsrc* null, %struct.symsrc** %13, align 8
  %28 = load i32, i32* @BUILD_ID_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %19, align 8
  %35 = load %struct.dso*, %struct.dso** %3, align 8
  %36 = getelementptr inbounds %struct.dso, %struct.dso* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %20, align 8
  %38 = load %struct.dso*, %struct.dso** %3, align 8
  %39 = getelementptr inbounds %struct.dso, %struct.dso* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strncmp(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %2
  %47 = load %struct.dso*, %struct.dso** %3, align 8
  %48 = getelementptr inbounds %struct.dso, %struct.dso* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = trunc i64 %33 to i32
  %53 = load %struct.dso*, %struct.dso** %3, align 8
  %54 = getelementptr inbounds %struct.dso, %struct.dso* %53, i32 0, i32 6
  %55 = call i64 @dso__find_perf_map(i8* %34, i32 %52, i64* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i8* %34, i8** %20, align 8
  br label %58

58:                                               ; preds = %57, %51, %46
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.dso*, %struct.dso** %3, align 8
  %61 = getelementptr inbounds %struct.dso, %struct.dso* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @nsinfo__mountns_enter(i64 %62, %struct.nscookie* %18)
  %64 = load %struct.dso*, %struct.dso** %3, align 8
  %65 = getelementptr inbounds %struct.dso, %struct.dso* %64, i32 0, i32 3
  %66 = call i32 @pthread_mutex_lock(i32* %65)
  %67 = load %struct.dso*, %struct.dso** %3, align 8
  %68 = call i64 @dso__loaded(%struct.dso* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %401

71:                                               ; preds = %59
  %72 = load %struct.map*, %struct.map** %4, align 8
  %73 = getelementptr inbounds %struct.map, %struct.map* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = icmp ne %struct.TYPE_2__* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.map*, %struct.map** %4, align 8
  %78 = getelementptr inbounds %struct.map, %struct.map* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.machine*, %struct.machine** %80, align 8
  %82 = icmp ne %struct.machine* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.map*, %struct.map** %4, align 8
  %85 = getelementptr inbounds %struct.map, %struct.map* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load %struct.machine*, %struct.machine** %87, align 8
  store %struct.machine* %88, %struct.machine** %8, align 8
  br label %90

89:                                               ; preds = %76, %71
  store %struct.machine* null, %struct.machine** %8, align 8
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.dso*, %struct.dso** %3, align 8
  %92 = getelementptr inbounds %struct.dso, %struct.dso* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %90
  %96 = load %struct.dso*, %struct.dso** %3, align 8
  %97 = getelementptr inbounds %struct.dso, %struct.dso* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DSO_TYPE_KERNEL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.dso*, %struct.dso** %3, align 8
  %103 = load %struct.map*, %struct.map** %4, align 8
  %104 = call i32 @dso__load_kernel_sym(%struct.dso* %102, %struct.map* %103)
  store i32 %104, i32* %6, align 4
  br label %116

105:                                              ; preds = %95
  %106 = load %struct.dso*, %struct.dso** %3, align 8
  %107 = getelementptr inbounds %struct.dso, %struct.dso* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.dso*, %struct.dso** %3, align 8
  %113 = load %struct.map*, %struct.map** %4, align 8
  %114 = call i32 @dso__load_guest_kernel_sym(%struct.dso* %112, %struct.map* %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %101
  %117 = load %struct.machine*, %struct.machine** %8, align 8
  %118 = call i64 @machine__is(%struct.machine* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.machine*, %struct.machine** %8, align 8
  %122 = load %struct.dso*, %struct.dso** %3, align 8
  %123 = call i32 @machine__map_x86_64_entry_trampolines(%struct.machine* %121, %struct.dso* %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %401

125:                                              ; preds = %90
  %126 = load %struct.dso*, %struct.dso** %3, align 8
  %127 = getelementptr inbounds %struct.dso, %struct.dso* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load i8*, i8** %20, align 8
  %132 = load %struct.dso*, %struct.dso** %3, align 8
  %133 = call i32 @dso__load_perf_map(i8* %131, %struct.dso* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i64, i64* @DSO_BINARY_TYPE__JAVA_JIT, align 8
  br label %140

138:                                              ; preds = %130
  %139 = load i64, i64* @DSO_BINARY_TYPE__NOT_FOUND, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = load %struct.dso*, %struct.dso** %3, align 8
  %143 = getelementptr inbounds %struct.dso, %struct.dso* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %401

144:                                              ; preds = %125
  %145 = load %struct.machine*, %struct.machine** %8, align 8
  %146 = icmp ne %struct.machine* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.machine*, %struct.machine** %8, align 8
  %149 = getelementptr inbounds %struct.machine, %struct.machine* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %9, align 8
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* @PATH_MAX, align 4
  %153 = call i8* @malloc(i32 %152)
  store i8* %153, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  br label %401

157:                                              ; preds = %151
  %158 = load %struct.dso*, %struct.dso** %3, align 8
  %159 = getelementptr inbounds %struct.dso, %struct.dso* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %181, label %163

163:                                              ; preds = %157
  %164 = load %struct.dso*, %struct.dso** %3, align 8
  %165 = getelementptr inbounds %struct.dso, %struct.dso* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE_COMP, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %181, label %169

169:                                              ; preds = %163
  %170 = load %struct.dso*, %struct.dso** %3, align 8
  %171 = getelementptr inbounds %struct.dso, %struct.dso* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DSO_BINARY_TYPE__GUEST_KMODULE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.dso*, %struct.dso** %3, align 8
  %177 = getelementptr inbounds %struct.dso, %struct.dso* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DSO_BINARY_TYPE__GUEST_KMODULE_COMP, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %175, %169, %163, %157
  %182 = phi i1 [ true, %169 ], [ true, %163 ], [ true, %157 ], [ %180, %175 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %14, align 4
  %184 = load %struct.dso*, %struct.dso** %3, align 8
  %185 = getelementptr inbounds %struct.dso, %struct.dso* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %209, label %188

188:                                              ; preds = %181
  %189 = load %struct.dso*, %struct.dso** %3, align 8
  %190 = getelementptr inbounds %struct.dso, %struct.dso* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @is_regular_file(i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %188
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* @PATH_MAX, align 4
  %197 = load %struct.dso*, %struct.dso** %3, align 8
  %198 = getelementptr inbounds %struct.dso, %struct.dso* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @__symbol__join_symfs(i8* %195, i32 %196, i8* %199)
  %201 = load i8*, i8** %5, align 8
  %202 = load i32, i32* @BUILD_ID_SIZE, align 4
  %203 = call i64 @filename__read_build_id(i8* %201, i8* %31, i32 %202)
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %194
  %206 = load %struct.dso*, %struct.dso** %3, align 8
  %207 = call i32 @dso__set_build_id(%struct.dso* %206, i8* %31)
  br label %208

208:                                              ; preds = %205, %194
  br label %209

209:                                              ; preds = %208, %188, %181
  store i64 0, i64* %7, align 8
  br label %210

210:                                              ; preds = %323, %209
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* @DSO_BINARY_TYPE__SYMTAB_CNT, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %326

214:                                              ; preds = %210
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x %struct.symsrc], [2 x %struct.symsrc]* %11, i64 0, i64 %216
  store %struct.symsrc* %217, %struct.symsrc** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 -1, i32* %25, align 4
  %218 = load i32*, i32** @binary_type_symtab, align 8
  %219 = load i64, i64* %7, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %26, align 4
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* @DSO_BINARY_TYPE__BUILD_ID_CACHE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %214
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* @DSO_BINARY_TYPE__BUILD_ID_CACHE_DEBUGINFO, align 4
  %228 = icmp eq i32 %226, %227
  br label %229

229:                                              ; preds = %225, %214
  %230 = phi i1 [ true, %214 ], [ %228, %225 ]
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %24, align 4
  %232 = load %struct.dso*, %struct.dso** %3, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %26, align 4
  %235 = call i32 @dso__is_compatible_symtab_type(%struct.dso* %232, i32 %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %229
  br label %323

238:                                              ; preds = %229
  %239 = load %struct.dso*, %struct.dso** %3, align 8
  %240 = load i32, i32* %26, align 4
  %241 = load i8*, i8** %9, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = load i32, i32* @PATH_MAX, align 4
  %244 = call i64 @dso__read_binary_type_filename(%struct.dso* %239, i32 %240, i8* %241, i8* %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %323

247:                                              ; preds = %238
  %248 = load i32, i32* %24, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %18)
  br label %252

252:                                              ; preds = %250, %247
  %253 = load i8*, i8** %5, align 8
  %254 = call i32 @is_regular_file(i8* %253)
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* %23, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  %259 = load %struct.dso*, %struct.dso** %3, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = load i32, i32* %26, align 4
  %262 = call i32 @symsrc__init(%struct.symsrc* %258, %struct.dso* %259, i8* %260, i32 %261)
  store i32 %262, i32* %25, align 4
  br label %263

263:                                              ; preds = %257, %252
  %264 = load i32, i32* %24, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load %struct.dso*, %struct.dso** %3, align 8
  %268 = getelementptr inbounds %struct.dso, %struct.dso* %267, i32 0, i32 6
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @nsinfo__mountns_enter(i64 %269, %struct.nscookie* %18)
  br label %271

271:                                              ; preds = %266, %263
  %272 = load i32, i32* %23, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %25, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274, %271
  br label %323

278:                                              ; preds = %274
  %279 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %280 = icmp ne %struct.symsrc* %279, null
  br i1 %280, label %297, label %281

281:                                              ; preds = %278
  %282 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  %283 = call i64 @symsrc__has_symtab(%struct.symsrc* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  store %struct.symsrc* %286, %struct.symsrc** %12, align 8
  store i32 1, i32* %22, align 4
  %287 = load %struct.dso*, %struct.dso** %3, align 8
  %288 = getelementptr inbounds %struct.dso, %struct.dso* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %285
  %292 = load i8*, i8** %5, align 8
  %293 = call i64 @strdup(i8* %292)
  %294 = load %struct.dso*, %struct.dso** %3, align 8
  %295 = getelementptr inbounds %struct.dso, %struct.dso* %294, i32 0, i32 5
  store i64 %293, i64* %295, align 8
  br label %296

296:                                              ; preds = %291, %285
  br label %297

297:                                              ; preds = %296, %281, %278
  %298 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %299 = icmp ne %struct.symsrc* %298, null
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  %301 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  %302 = call i64 @symsrc__possibly_runtime(%struct.symsrc* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  store %struct.symsrc* %305, %struct.symsrc** %13, align 8
  store i32 1, i32* %22, align 4
  br label %306

306:                                              ; preds = %304, %300, %297
  %307 = load i32, i32* %22, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  %312 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %313 = icmp ne %struct.symsrc* %312, null
  br i1 %313, label %314, label %318

314:                                              ; preds = %309
  %315 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %316 = icmp ne %struct.symsrc* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %326

318:                                              ; preds = %314, %309
  br label %322

319:                                              ; preds = %306
  %320 = load %struct.symsrc*, %struct.symsrc** %21, align 8
  %321 = call i32 @symsrc__destroy(%struct.symsrc* %320)
  br label %322

322:                                              ; preds = %319, %318
  br label %323

323:                                              ; preds = %322, %277, %246, %237
  %324 = load i64, i64* %7, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %7, align 8
  br label %210

326:                                              ; preds = %317, %210
  %327 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %328 = icmp ne %struct.symsrc* %327, null
  br i1 %328, label %333, label %329

329:                                              ; preds = %326
  %330 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %331 = icmp ne %struct.symsrc* %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %329
  br label %388

333:                                              ; preds = %329, %326
  %334 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %335 = icmp ne %struct.symsrc* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %338 = icmp ne %struct.symsrc* %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %336
  %340 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  store %struct.symsrc* %340, %struct.symsrc** %12, align 8
  br label %341

341:                                              ; preds = %339, %336, %333
  %342 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %343 = icmp ne %struct.symsrc* %342, null
  br i1 %343, label %349, label %344

344:                                              ; preds = %341
  %345 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %346 = icmp ne %struct.symsrc* %345, null
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  store %struct.symsrc* %348, %struct.symsrc** %13, align 8
  br label %349

349:                                              ; preds = %347, %344, %341
  %350 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %351 = icmp ne %struct.symsrc* %350, null
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load %struct.dso*, %struct.dso** %3, align 8
  %354 = load %struct.map*, %struct.map** %4, align 8
  %355 = load %struct.symsrc*, %struct.symsrc** %12, align 8
  %356 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %357 = load i32, i32* %14, align 4
  %358 = call i32 @dso__load_sym(%struct.dso* %353, %struct.map* %354, %struct.symsrc* %355, %struct.symsrc* %356, i32 %357)
  store i32 %358, i32* %6, align 4
  br label %360

359:                                              ; preds = %349
  store i32 -1, i32* %6, align 4
  br label %360

360:                                              ; preds = %359, %352
  %361 = load i32, i32* %6, align 4
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %360
  %364 = load %struct.dso*, %struct.dso** %3, align 8
  %365 = load %struct.symsrc*, %struct.symsrc** %13, align 8
  %366 = call i32 @dso__synthesize_plt_symbols(%struct.dso* %364, %struct.symsrc* %365)
  store i32 %366, i32* %27, align 4
  %367 = load i32, i32* %27, align 4
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load i32, i32* %27, align 4
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, %370
  store i32 %372, i32* %6, align 4
  br label %373

373:                                              ; preds = %369, %363
  br label %374

374:                                              ; preds = %373, %360
  br label %375

375:                                              ; preds = %384, %374
  %376 = load i32, i32* %10, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %375
  %379 = load i32, i32* %10, align 4
  %380 = sub nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x %struct.symsrc], [2 x %struct.symsrc]* %11, i64 0, i64 %381
  %383 = call i32 @symsrc__destroy(%struct.symsrc* %382)
  br label %384

384:                                              ; preds = %378
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %10, align 4
  br label %375

387:                                              ; preds = %375
  br label %388

388:                                              ; preds = %387, %332
  %389 = load i8*, i8** %5, align 8
  %390 = call i32 @free(i8* %389)
  %391 = load i32, i32* %6, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %388
  %394 = load %struct.dso*, %struct.dso** %3, align 8
  %395 = getelementptr inbounds %struct.dso, %struct.dso* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = call i32* @strstr(i32 %396, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %398 = icmp ne i32* %397, null
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  store i32 0, i32* %6, align 4
  br label %400

400:                                              ; preds = %399, %393, %388
  br label %401

401:                                              ; preds = %400, %156, %140, %124, %70
  %402 = load %struct.dso*, %struct.dso** %3, align 8
  %403 = call i32 @dso__set_loaded(%struct.dso* %402)
  %404 = load %struct.dso*, %struct.dso** %3, align 8
  %405 = getelementptr inbounds %struct.dso, %struct.dso* %404, i32 0, i32 3
  %406 = call i32 @pthread_mutex_unlock(i32* %405)
  %407 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %18)
  %408 = load i32, i32* %6, align 4
  %409 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %409)
  ret i32 %408
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i64 @dso__find_perf_map(i8*, i32, i64*) #2

declare dso_local i32 @nsinfo__mountns_enter(i64, %struct.nscookie*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i64 @dso__loaded(%struct.dso*) #2

declare dso_local i32 @dso__load_kernel_sym(%struct.dso*, %struct.map*) #2

declare dso_local i32 @dso__load_guest_kernel_sym(%struct.dso*, %struct.map*) #2

declare dso_local i64 @machine__is(%struct.machine*, i8*) #2

declare dso_local i32 @machine__map_x86_64_entry_trampolines(%struct.machine*, %struct.dso*) #2

declare dso_local i32 @dso__load_perf_map(i8*, %struct.dso*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @is_regular_file(i8*) #2

declare dso_local i32 @__symbol__join_symfs(i8*, i32, i8*) #2

declare dso_local i64 @filename__read_build_id(i8*, i8*, i32) #2

declare dso_local i32 @dso__set_build_id(%struct.dso*, i8*) #2

declare dso_local i32 @dso__is_compatible_symtab_type(%struct.dso*, i32, i32) #2

declare dso_local i64 @dso__read_binary_type_filename(%struct.dso*, i32, i8*, i8*, i32) #2

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #2

declare dso_local i32 @symsrc__init(%struct.symsrc*, %struct.dso*, i8*, i32) #2

declare dso_local i64 @symsrc__has_symtab(%struct.symsrc*) #2

declare dso_local i64 @strdup(i8*) #2

declare dso_local i64 @symsrc__possibly_runtime(%struct.symsrc*) #2

declare dso_local i32 @symsrc__destroy(%struct.symsrc*) #2

declare dso_local i32 @dso__load_sym(%struct.dso*, %struct.map*, %struct.symsrc*, %struct.symsrc*, i32) #2

declare dso_local i32 @dso__synthesize_plt_symbols(%struct.dso*, %struct.symsrc*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @strstr(i32, i8*) #2

declare dso_local i32 @dso__set_loaded(%struct.dso*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
