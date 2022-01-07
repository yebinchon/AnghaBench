; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/s390/util/extr_header.c_get_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/s390/util/extr_header.c_get_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@SYSINFO_MANU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SYSINFO_TYPE = common dso_local global i32 0, align 4
@SYSINFO_MODEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@SRVLVL = common dso_local global i32 0, align 4
@SRVLVL_CPUMF = common dso_local global i32 0, align 4
@SRVLVL_VERSION = common dso_local global i32 0, align 4
@SRVLVL_AUTHORIZATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%s,%s,%s,%s,%s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s,%s,%s\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpuid(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca [33 x i8], align 16
  %11 = alloca [8 x i8], align 1
  %12 = alloca [32 x i8], align 16
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %26 = call i32 @memset(i8* %25, i32 0, i32 32)
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 8)
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %30 = call i32 @memset(i8* %29, i32 0, i32 33)
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 0, i32 8)
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i32 0, i32 8)
  %35 = load i32, i32* @SYSINFO, align 4
  %36 = call i32* @fopen(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %22, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %3, align 4
  br label %289

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %151, %41
  %43 = load i32*, i32** %22, align 8
  %44 = call i32 @getline(i8** %7, i64* %20, i32* %43)
  store i32 %44, i32* %19, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %152

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @SYSINFO_MANU, align 4
  %49 = load i32, i32* @SYSINFO_MANU, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i64 @strncmp(i8* %47, i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @SYSINFO_MANU, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %63, %53
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strtok_r(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %61, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 32, %69
  %71 = trunc i64 %70 to i32
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %67, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  br label %59

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @SYSINFO_TYPE, align 4
  %82 = load i32, i32* @SYSINFO_TYPE, align 4
  %83 = call i32 @strlen(i32 %82)
  %84 = call i64 @strncmp(i8* %80, i32 %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* @SYSINFO_TYPE, align 4
  %89 = call i32 @strlen(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %96, %86
  %93 = load i8*, i8** %8, align 8
  %94 = call i8* @strtok_r(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %94, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %100, i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @SYSINFO_MODEL, align 4
  %115 = load i32, i32* @SYSINFO_MODEL, align 4
  %116 = call i32 @strlen(i32 %115)
  %117 = call i64 @strncmp(i8* %113, i32 %114, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %112
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* @SYSINFO_MODEL, align 4
  %122 = call i32 @strlen(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %129, %119
  %126 = load i8*, i8** %8, align 8
  %127 = call i8* @strtok_r(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %127, i8** %6, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %150

129:                                              ; preds = %125
  %130 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = sub i64 33, %135
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %139 = load i8, i8* %138, align 16
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %144 = load i8*, i8** %6, align 8
  %145 = call i64 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %133, i32 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %143, i8* %144)
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %15, align 4
  br label %125

150:                                              ; preds = %125
  br label %152

151:                                              ; preds = %112
  br label %42

152:                                              ; preds = %150, %42
  %153 = load i32*, i32** %22, align 8
  %154 = call i32 @fclose(i32* %153)
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %156 = load i8, i8* %155, align 16
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %164 = load i8, i8* %163, align 16
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162, %158, %152
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %3, align 4
  br label %289

168:                                              ; preds = %162
  %169 = load i32, i32* @SRVLVL, align 4
  %170 = call i32* @fopen(i32 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %170, i32** %22, align 8
  %171 = load i32*, i32** %22, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %252

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %248, %186, %174
  %176 = load i32*, i32** %22, align 8
  %177 = call i32 @getline(i8** %7, i64* %20, i32* %176)
  store i32 %177, i32* %19, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %249

179:                                              ; preds = %175
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* @SRVLVL_CPUMF, align 4
  %182 = load i32, i32* @SRVLVL_CPUMF, align 4
  %183 = call i32 @strlen(i32 %182)
  %184 = call i64 @strncmp(i8* %180, i32 %181, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %175

187:                                              ; preds = %179
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* @SRVLVL_CPUMF, align 4
  %190 = call i32 @strlen(i32 %189)
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8* %192, i8** %8, align 8
  br label %193

193:                                              ; preds = %247, %187
  %194 = load i8*, i8** %8, align 8
  %195 = call i8* @strtok_r(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %195, i8** %6, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %248

197:                                              ; preds = %193
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* @SRVLVL_VERSION, align 4
  %200 = load i32, i32* @SRVLVL_VERSION, align 4
  %201 = call i32 @strlen(i32 %200)
  %202 = call i64 @strncmp(i8* %198, i32 %199, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %197
  %205 = load i8*, i8** %6, align 8
  %206 = call i8* @strchr(i8* %205, i8 signext 61)
  store i8* %206, i8** %23, align 8
  %207 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 8, %212
  %214 = trunc i64 %213 to i32
  %215 = load i8*, i8** %23, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = call i64 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %210, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %16, align 4
  br label %222

222:                                              ; preds = %204, %197
  %223 = load i8*, i8** %6, align 8
  %224 = load i32, i32* @SRVLVL_AUTHORIZATION, align 4
  %225 = load i32, i32* @SRVLVL_AUTHORIZATION, align 4
  %226 = call i32 @strlen(i32 %225)
  %227 = call i64 @strncmp(i8* %223, i32 %224, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %247, label %229

229:                                              ; preds = %222
  %230 = load i8*, i8** %6, align 8
  %231 = call i8* @strchr(i8* %230, i8 signext 61)
  store i8* %231, i8** %24, align 8
  %232 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = sub i64 8, %237
  %239 = trunc i64 %238 to i32
  %240 = load i8*, i8** %24, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = call i64 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %235, i32 %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %241)
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %229, %222
  br label %193

248:                                              ; preds = %193
  br label %175

249:                                              ; preds = %175
  %250 = load i32*, i32** %22, align 8
  %251 = call i32 @fclose(i32* %250)
  br label %252

252:                                              ; preds = %249, %173
  %253 = load i8*, i8** %7, align 8
  %254 = call i32 @free(i8* %253)
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %252
  %260 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load i8*, i8** %4, align 8
  %266 = load i64, i64* %5, align 8
  %267 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %268 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %269 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %270 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %271 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %272 = call i64 (i8*, i64, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %265, i64 %266, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %267, i8* %268, i8* %269, i8* %270, i8* %271)
  store i64 %272, i64* %21, align 8
  br label %280

273:                                              ; preds = %259, %252
  %274 = load i8*, i8** %4, align 8
  %275 = load i64, i64* %5, align 8
  %276 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %277 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %278 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %279 = call i64 (i8*, i64, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %274, i64 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %276, i8* %277, i8* %278)
  store i64 %279, i64* %21, align 8
  br label %280

280:                                              ; preds = %273, %264
  %281 = load i64, i64* %21, align 8
  %282 = load i64, i64* %5, align 8
  %283 = icmp uge i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* @ENOBUFS, align 4
  br label %287

286:                                              ; preds = %280
  br label %287

287:                                              ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ 0, %286 ]
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %287, %166, %39
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
