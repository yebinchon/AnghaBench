; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_parse_setup_cpu_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_parse_setup_cpu_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.thread_data* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.thread_data = type { i32 }

@g = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"g->p.nr_tasks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"# binding tasks to CPUs:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0Atoken: {%s}, end: {%s}\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"CPUs: %d_%d-%d#%dx%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"\0ATest not applicable, system has only %d CPUs.\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\0A# NOTE: ignoring bind CPUs starting at CPU#%d\0A #\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%2d/%d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"# NOTE: %d tasks bound, %d tasks unbound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_setup_cpu_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_setup_cpu_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.thread_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %269

25:                                               ; preds = %0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @strdup(i32 %34)
  store i8* %35, i8** %4, align 8
  store i8* %35, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %25, %247
  %44 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %248

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @atol(i8* %57)
  store i32 %58, i32* %8, align 4
  store i32 %58, i32* %7, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @atol(i8* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @atol(i8* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %59, %56
  store i32 1, i32* %15, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i32 @atol(i8* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %77, %81
  br label %83

83:                                               ; preds = %76, %70
  %84 = phi i1 [ true, %70 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  br label %87

87:                                               ; preds = %83, %65
  store i32 1, i32* %14, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i8* @strstr(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @atol(i8* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %99, %103
  br label %105

105:                                              ; preds = %98, %92
  %106 = phi i1 [ true, %92 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  br label %109

109:                                              ; preds = %105, %87
  store i32 1, i32* %16, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i8* @strstr(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = call i32 @atol(i8* %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp sle i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @BUG_ON(i32 %120)
  br label %122

122:                                              ; preds = %114, %109
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %129, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %136, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %135, %122
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  store i32 -1, i32* %1, align 4
  br label %269

148:                                              ; preds = %135
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i1 [ true, %148 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @BUG_ON(i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp sgt i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @BUG_ON(i32 %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %243, %154
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %247

168:                                              ; preds = %164
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %239, %168
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %242

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %174, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %181)
  br label %249

183:                                              ; preds = %173
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load %struct.thread_data*, %struct.thread_data** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %186, i64 %188
  store %struct.thread_data* %189, %struct.thread_data** %2, align 8
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %183
  %195 = load i32, i32* %14, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %198, i32 %199)
  br label %204

201:                                              ; preds = %194
  %202 = load i32, i32* %6, align 4
  %203 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %197
  %205 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %206 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %205, i32 0, i32 0
  %207 = call i32 @CPU_ZERO(i32* %206)
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %233, %204
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %211, %212
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %209
  %216 = load i32, i32* %18, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %219, %223
  br label %225

225:                                              ; preds = %218, %215
  %226 = phi i1 [ true, %215 ], [ %224, %218 ]
  %227 = zext i1 %226 to i32
  %228 = call i32 @BUG_ON(i32 %227)
  %229 = load i32, i32* %18, align 4
  %230 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %231 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %230, i32 0, i32 0
  %232 = call i32 @CPU_SET(i32 %229, i32* %231)
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %209

236:                                              ; preds = %209
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %17, align 4
  br label %169

242:                                              ; preds = %169
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %6, align 4
  br label %164

247:                                              ; preds = %164
  br label %43

248:                                              ; preds = %47
  br label %249

249:                                              ; preds = %248, %180
  %250 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %251, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sub nsw i32 %262, %263
  %265 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %258, i32 %264)
  br label %266

266:                                              ; preds = %257, %249
  %267 = load i8*, i8** %3, align 8
  %268 = call i32 @free(i8* %267)
  store i32 0, i32* %1, align 4
  br label %269

269:                                              ; preds = %266, %142, %24
  %270 = load i32, i32* %1, align 4
  ret i32 %270
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tprintf(i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
