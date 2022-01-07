; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_age_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_age_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@age_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"# Age=V%d_%d_%d\00", align 1
@ages_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" Age V%d_%d_%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"# Age=V%d_%d\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" Age V%d_%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%d age entries\0A\00", align 1
@MAXGEN = common dso_local global i32 0, align 4
@ages = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c" Age V%d_%d_%d = gen %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" Age V%d_%d = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%X..%X ; %d.%d #\00", align 1
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"  %X..%X gen %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%X ; %d.%d #\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  %X gen %d\0A\00", align 1
@unicode_maxage = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c" Removing surrogate block D800..DFFF\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Found %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @age_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @verbose, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i8*, i8** @age_name, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i8*, i8** @age_name, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** @age_name, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @open_fail(i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %82, %81, %57, %25
  %27 = load i32, i32* @line, align 4
  %28 = load i32, i32* @LINESIZE, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @fgets(i32 %27, i32 %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %26
  %33 = load i32, i32* @line, align 4
  %34 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i32, i32* @ages_count, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @ages_count, align 4
  %40 = load i32, i32* @verbose, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @age_valid(i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** @age_name, align 8
  %55 = load i32, i32* @line, align 4
  %56 = call i32 @line_fail(i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %26

58:                                               ; preds = %32
  %59 = load i32, i32* @line, align 4
  %60 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %5, i32* %6)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load i32, i32* @ages_count, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @ages_count, align 4
  %66 = load i32, i32* @verbose, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @age_valid(i32 %73, i32 %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** @age_name, align 8
  %79 = load i32, i32* @line, align 4
  %80 = call i32 @line_fail(i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  br label %26

82:                                               ; preds = %58
  br label %26

83:                                               ; preds = %26
  %84 = load i32, i32* @verbose, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ages_count, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @ages_count, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @ages_count, align 4
  %94 = load i32, i32* @MAXGEN, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %89
  %97 = load i8*, i8** @age_name, align 8
  %98 = call i32 @file_fail(i8* %97)
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* @ages_count, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @ages_count, align 4
  %102 = load i32, i32* @ages_count, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32* @calloc(i32 %103, i32 4)
  store i32* %104, i32** @ages, align 8
  %105 = load i32*, i32** @ages, align 8
  %106 = load i32, i32* @ages_count, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 -1, i32* %108, align 4
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @rewind(i32* %109)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %259, %258, %229, %181, %150, %99
  %112 = load i32, i32* @line, align 4
  %113 = load i32, i32* @LINESIZE, align 4
  %114 = load i32*, i32** %1, align 8
  %115 = call i64 @fgets(i32 %112, i32 %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %260

117:                                              ; preds = %111
  %118 = load i32, i32* @line, align 4
  %119 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %151

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @UNICODE_AGE(i32 %123, i32 %124, i32 %125)
  %127 = load i32*, i32** @ages, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* @verbose, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %122
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @age_valid(i32 %141, i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  %147 = load i8*, i8** @age_name, align 8
  %148 = load i32, i32* @line, align 4
  %149 = call i32 @line_fail(i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %140
  br label %111

151:                                              ; preds = %117
  %152 = load i32, i32* @line, align 4
  %153 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %5, i32* %6)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @UNICODE_AGE(i32 %157, i32 %158, i32 0)
  %160 = load i32*, i32** @ages, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* @verbose, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %156
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @age_valid(i32 %173, i32 %174, i32 0)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load i8*, i8** @age_name, align 8
  %179 = load i32, i32* @line, align 4
  %180 = call i32 @line_fail(i8* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %172
  br label %111

182:                                              ; preds = %151
  %183 = load i32, i32* @line, align 4
  %184 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %2, i32* %3, i32* %5, i32* %6)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %187, label %230

187:                                              ; preds = %182
  %188 = load i32, i32* %2, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %200, %187
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %3, align 4
  %192 = icmp ule i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %196 = load i32, i32* %4, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %4, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %189

203:                                              ; preds = %189
  %204 = load i32, i32* %3, align 4
  %205 = add i32 1, %204
  %206 = load i32, i32* %2, align 4
  %207 = sub i32 %205, %206
  %208 = load i32, i32* %9, align 4
  %209 = add i32 %208, %207
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* @verbose, align 4
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %217

212:                                              ; preds = %203
  %213 = load i32, i32* %2, align 4
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %203
  %218 = load i32, i32* %2, align 4
  %219 = call i32 @utf32valid(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @utf32valid(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %221, %217
  %226 = load i8*, i8** @age_name, align 8
  %227 = load i32, i32* @line, align 4
  %228 = call i32 @line_fail(i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %221
  br label %111

230:                                              ; preds = %182
  %231 = load i32, i32* @line, align 4
  %232 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %231, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %4, i32* %5, i32* %6)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %259

235:                                              ; preds = %230
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %238 = load i32, i32* %4, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i32 %236, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* @verbose, align 4
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %250

246:                                              ; preds = %235
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %235
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @utf32valid(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** @age_name, align 8
  %256 = load i32, i32* @line, align 4
  %257 = call i32 @line_fail(i8* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %250
  br label %111

259:                                              ; preds = %230
  br label %111

260:                                              ; preds = %111
  %261 = load i32*, i32** @ages, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* @unicode_maxage, align 4
  %266 = load i32*, i32** %1, align 8
  %267 = call i32 @fclose(i32* %266)
  %268 = load i32, i32* @verbose, align 4
  %269 = icmp sgt i32 %268, 1
  br i1 %269, label %270, label %272

270:                                              ; preds = %260
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %260
  store i32 55296, i32* %4, align 4
  br label %273

273:                                              ; preds = %282, %272
  %274 = load i32, i32* %4, align 4
  %275 = icmp ule i32 %274, 57343
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %278 = load i32, i32* %4, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  store i32 -1, i32* %281, align 4
  br label %282

282:                                              ; preds = %276
  %283 = load i32, i32* %4, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %4, align 4
  br label %273

285:                                              ; preds = %273
  %286 = load i32, i32* @verbose, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %9, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i8*, i8** @age_name, align 8
  %296 = call i32 @file_fail(i8* %295)
  br label %297

297:                                              ; preds = %294, %291
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, ...) #1

declare dso_local i32 @age_valid(i32, i32, i32) #1

declare dso_local i32 @line_fail(i8*, i32) #1

declare dso_local i32 @file_fail(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @UNICODE_AGE(i32, i32, i32) #1

declare dso_local i32 @utf32valid(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
