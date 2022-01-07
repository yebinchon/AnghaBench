; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort_dimension__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort_dimension__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.perf_hpp_list = type { i32, i32, i32, i32, i32, i32 }
%struct.evlist = type { i32 }
%struct.hpp_dimension = type { %struct.TYPE_11__*, i32 }

@common_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@sort_parent = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@parent_regex = common dso_local global i32 0, align 4
@parent_pattern = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid regex: %s\0A%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sort_sym = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__DIFF = common dso_local global i64 0, align 8
@sort__sym_sort = common dso_local global i32 0, align 4
@sort_dso = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort_socket = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort_thread = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort_comm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@hpp_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@bstack_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@SORT_MODE__BRANCH = common dso_local global i64 0, align 8
@sort_sym_from = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort_sym_to = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@memory_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@SORT_MODE__MEMORY = common dso_local global i64 0, align 8
@sort_mem_dcacheline = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sort_mem_daddr_sym = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_dimension__add(%struct.perf_hpp_list* %0, i8* %1, %struct.evlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_hpp_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sort_dimension*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.hpp_dimension*, align 8
  %16 = alloca %struct.sort_dimension*, align 8
  %17 = alloca %struct.sort_dimension*, align 8
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.evlist* %2, %struct.evlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %124, %4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.sort_dimension*, %struct.sort_dimension** @common_sort_dimensions, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %127

23:                                               ; preds = %18
  %24 = load %struct.sort_dimension*, %struct.sort_dimension** @common_sort_dimensions, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %24, i64 %26
  store %struct.sort_dimension* %27, %struct.sort_dimension** %11, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %30 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i64 @strncasecmp(i8* %28, i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %124

37:                                               ; preds = %23
  %38 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %39 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp eq %struct.TYPE_11__* %40, @sort_parent
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load i32, i32* @parent_pattern, align 4
  %44 = load i32, i32* @REG_EXTENDED, align 4
  %45 = call i32 @regcomp(i32* @parent_regex, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* @BUFSIZ, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %13, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = trunc i64 %50 to i32
  %55 = call i32 @regerror(i32 %53, i32* @parent_regex, i8* %52, i32 %54)
  %56 = load i32, i32* @parent_pattern, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %52)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  %60 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %269

61:                                               ; preds = %42
  %62 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %63 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %119

64:                                               ; preds = %37
  %65 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %66 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp eq %struct.TYPE_11__* %67, @sort_sym
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %71 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load i64, i64* @sort__mode, align 8
  %73 = load i64, i64* @SORT_MODE__DIFF, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @sort__sym_sort, align 4
  %77 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %78 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %69
  br label %118

82:                                               ; preds = %64
  %83 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %84 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp eq %struct.TYPE_11__* %85, @sort_dso
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %89 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  br label %117

90:                                               ; preds = %82
  %91 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %92 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, @sort_socket
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %97 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  br label %116

98:                                               ; preds = %90
  %99 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %100 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = icmp eq %struct.TYPE_11__* %101, @sort_thread
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %105 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %104, i32 0, i32 4
  store i32 1, i32* %105, align 4
  br label %115

106:                                              ; preds = %98
  %107 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %108 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = icmp eq %struct.TYPE_11__* %109, @sort_comm
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %113 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %112, i32 0, i32 5
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118, %61
  %120 = load %struct.sort_dimension*, %struct.sort_dimension** %11, align 8
  %121 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @__sort_dimension__add(%struct.sort_dimension* %120, %struct.perf_hpp_list* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  br label %269

124:                                              ; preds = %36
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %18

127:                                              ; preds = %18
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %154, %127
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.sort_dimension*, %struct.sort_dimension** @hpp_sort_dimensions, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %130)
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %128
  %134 = load %struct.sort_dimension*, %struct.sort_dimension** @hpp_sort_dimensions, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %134, i64 %136
  %138 = bitcast %struct.sort_dimension* %137 to %struct.hpp_dimension*
  store %struct.hpp_dimension* %138, %struct.hpp_dimension** %15, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.hpp_dimension*, %struct.hpp_dimension** %15, align 8
  %141 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = call i64 @strncasecmp(i8* %139, i32 %142, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %154

148:                                              ; preds = %133
  %149 = load %struct.hpp_dimension*, %struct.hpp_dimension** %15, align 8
  %150 = bitcast %struct.hpp_dimension* %149 to %struct.sort_dimension*
  %151 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @__hpp_dimension__add(%struct.sort_dimension* %150, %struct.perf_hpp_list* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  br label %269

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %128

157:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %202, %157
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.sort_dimension*, %struct.sort_dimension** @bstack_sort_dimensions, align 8
  %161 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %160)
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %163, label %205

163:                                              ; preds = %158
  %164 = load %struct.sort_dimension*, %struct.sort_dimension** @bstack_sort_dimensions, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %164, i64 %166
  store %struct.sort_dimension* %167, %struct.sort_dimension** %16, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load %struct.sort_dimension*, %struct.sort_dimension** %16, align 8
  %170 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @strlen(i8* %172)
  %174 = call i64 @strncasecmp(i8* %168, i32 %171, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %202

177:                                              ; preds = %163
  %178 = load i64, i64* @sort__mode, align 8
  %179 = load i64, i64* @SORT_MODE__BRANCH, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %269

184:                                              ; preds = %177
  %185 = load %struct.sort_dimension*, %struct.sort_dimension** %16, align 8
  %186 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = icmp eq %struct.TYPE_11__* %187, @sort_sym_from
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = load %struct.sort_dimension*, %struct.sort_dimension** %16, align 8
  %191 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %190, i32 0, i32 0
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = icmp eq %struct.TYPE_11__* %192, @sort_sym_to
  br i1 %193, label %194, label %197

194:                                              ; preds = %189, %184
  %195 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %196 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %189
  %198 = load %struct.sort_dimension*, %struct.sort_dimension** %16, align 8
  %199 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @__sort_dimension__add(%struct.sort_dimension* %198, %struct.perf_hpp_list* %199, i32 %200)
  store i32 0, i32* %5, align 4
  br label %269

202:                                              ; preds = %176
  %203 = load i32, i32* %10, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %158

205:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  br label %206

206:                                              ; preds = %256, %205
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.sort_dimension*, %struct.sort_dimension** @memory_sort_dimensions, align 8
  %209 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %208)
  %210 = icmp ult i32 %207, %209
  br i1 %210, label %211, label %259

211:                                              ; preds = %206
  %212 = load %struct.sort_dimension*, %struct.sort_dimension** @memory_sort_dimensions, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %212, i64 %214
  store %struct.sort_dimension* %215, %struct.sort_dimension** %17, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = load %struct.sort_dimension*, %struct.sort_dimension** %17, align 8
  %218 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 @strlen(i8* %220)
  %222 = call i64 @strncasecmp(i8* %216, i32 %219, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %211
  br label %256

225:                                              ; preds = %211
  %226 = load i64, i64* @sort__mode, align 8
  %227 = load i64, i64* @SORT_MODE__MEMORY, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %5, align 4
  br label %269

232:                                              ; preds = %225
  %233 = load %struct.sort_dimension*, %struct.sort_dimension** %17, align 8
  %234 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = icmp eq %struct.TYPE_11__* %235, @sort_mem_dcacheline
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = call i64 (...) @cacheline_size()
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  br label %269

243:                                              ; preds = %237, %232
  %244 = load %struct.sort_dimension*, %struct.sort_dimension** %17, align 8
  %245 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %244, i32 0, i32 0
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = icmp eq %struct.TYPE_11__* %246, @sort_mem_daddr_sym
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %250 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %249, i32 0, i32 1
  store i32 1, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.sort_dimension*, %struct.sort_dimension** %17, align 8
  %253 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @__sort_dimension__add(%struct.sort_dimension* %252, %struct.perf_hpp_list* %253, i32 %254)
  store i32 0, i32* %5, align 4
  br label %269

256:                                              ; preds = %224
  %257 = load i32, i32* %10, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %206

259:                                              ; preds = %206
  %260 = load %struct.evlist*, %struct.evlist** %8, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @add_dynamic_entry(%struct.evlist* %260, i8* %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %259
  store i32 0, i32* %5, align 4
  br label %269

266:                                              ; preds = %259
  %267 = load i32, i32* @ESRCH, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %266, %265, %251, %240, %229, %197, %181, %148, %119, %48
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i32 @ARRAY_SIZE(%struct.sort_dimension*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regcomp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @__sort_dimension__add(%struct.sort_dimension*, %struct.perf_hpp_list*, i32) #1

declare dso_local i32 @__hpp_dimension__add(%struct.sort_dimension*, %struct.perf_hpp_list*, i32) #1

declare dso_local i64 @cacheline_size(...) #1

declare dso_local i32 @add_dynamic_entry(%struct.evlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
