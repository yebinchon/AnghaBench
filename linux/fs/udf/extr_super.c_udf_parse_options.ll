; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@UDF_FLAG_BLOCKSIZE_SET = common dso_local global i32 0, align 4
@UDF_FLAG_UNHIDE = common dso_local global i32 0, align 4
@UDF_FLAG_UNDELETE = common dso_local global i32 0, align 4
@UDF_FLAG_USE_AD_IN_ICB = common dso_local global i32 0, align 4
@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@UDF_FLAG_GID_SET = common dso_local global i32 0, align 4
@UDF_FLAG_UID_SET = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@UDF_FLAG_SESSION_SET = common dso_local global i32 0, align 4
@UDF_FLAG_LASTBLOCK_SET = common dso_local global i32 0, align 4
@UDF_FLAG_UTF8 = common dso_local global i32 0, align 4
@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4
@UDF_FLAG_UID_FORGET = common dso_local global i32 0, align 4
@UDF_FLAG_GID_FORGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"bad mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.udf_options*, i32)* @udf_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_parse_options(i8* %0, %struct.udf_options* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.udf_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.udf_options* %1, %struct.udf_options** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %16 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %18 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  %19 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %20 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %22 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %21, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %303

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %301, %298, %26
  %28 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %302

30:                                               ; preds = %27
  %31 = load i32, i32* @MAX_OPT_ARGS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %10, align 8
  %34 = alloca %struct.TYPE_5__, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 2, i32* %14, align 4
  br label %298

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @tokens, align 4
  %42 = call i32 @match_token(i8* %40, i32 %41, %struct.TYPE_5__* %34)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  switch i32 %43, label %294 [
    i32 140, label %44
    i32 152, label %47
    i32 130, label %76
    i32 131, label %83
    i32 142, label %90
    i32 154, label %98
    i32 136, label %105
    i32 143, label %112
    i32 147, label %120
    i32 134, label %143
    i32 132, label %166
    i32 141, label %174
    i32 137, label %182
    i32 144, label %200
    i32 153, label %218
    i32 128, label %226
    i32 139, label %226
    i32 150, label %226
    i32 138, label %226
    i32 129, label %227
    i32 145, label %234
    i32 135, label %261
    i32 133, label %268
    i32 146, label %268
    i32 148, label %269
    i32 149, label %276
    i32 151, label %285
  ]

44:                                               ; preds = %39
  %45 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %46 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %297

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %49 = call i32 @match_int(%struct.TYPE_5__* %48, i32* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 512
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 1024
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 2048
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 4096
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

66:                                               ; preds = %62, %59, %56, %52
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %69 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @UDF_FLAG_BLOCKSIZE_SET, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %73 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %297

76:                                               ; preds = %39
  %77 = load i32, i32* @UDF_FLAG_UNHIDE, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %80 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %297

83:                                               ; preds = %39
  %84 = load i32, i32* @UDF_FLAG_UNDELETE, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %87 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %297

90:                                               ; preds = %39
  %91 = load i32, i32* @UDF_FLAG_USE_AD_IN_ICB, align 4
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %95 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %297

98:                                               ; preds = %39
  %99 = load i32, i32* @UDF_FLAG_USE_AD_IN_ICB, align 4
  %100 = shl i32 1, %99
  %101 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %102 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %297

105:                                              ; preds = %39
  %106 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %107 = shl i32 1, %106
  %108 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %109 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %297

112:                                              ; preds = %39
  %113 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %114 = shl i32 1, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %117 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %297

120:                                              ; preds = %39
  %121 = call i32 @match_int(%struct.TYPE_5__* %34, i32* %9)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

124:                                              ; preds = %120
  %125 = call i32 (...) @current_user_ns()
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @make_kgid(i32 %125, i32 %126)
  %128 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %129 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %131 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @gid_valid(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

136:                                              ; preds = %124
  %137 = load i32, i32* @UDF_FLAG_GID_SET, align 4
  %138 = shl i32 1, %137
  %139 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %140 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %297

143:                                              ; preds = %39
  %144 = call i32 @match_int(%struct.TYPE_5__* %34, i32* %9)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

147:                                              ; preds = %143
  %148 = call i32 (...) @current_user_ns()
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @make_kuid(i32 %148, i32 %149)
  %151 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %152 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %154 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @uid_valid(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

159:                                              ; preds = %147
  %160 = load i32, i32* @UDF_FLAG_UID_SET, align 4
  %161 = shl i32 1, %160
  %162 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %163 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %297

166:                                              ; preds = %39
  %167 = call i32 @match_octal(%struct.TYPE_5__* %34, i32* %9)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

170:                                              ; preds = %166
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %173 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 4
  br label %297

174:                                              ; preds = %39
  %175 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %176 = shl i32 1, %175
  %177 = xor i32 %176, -1
  %178 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %179 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %297

182:                                              ; preds = %39
  %183 = call i32 @match_int(%struct.TYPE_5__* %34, i32* %9)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %189 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* @UDF_FLAG_SESSION_SET, align 4
  %194 = shl i32 1, %193
  %195 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %196 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %192, %186
  br label %297

200:                                              ; preds = %39
  %201 = call i32 @match_int(%struct.TYPE_5__* %34, i32* %9)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %207 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* @UDF_FLAG_LASTBLOCK_SET, align 4
  %212 = shl i32 1, %211
  %213 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %214 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %210, %204
  br label %297

218:                                              ; preds = %39
  %219 = call i32 @match_int(%struct.TYPE_5__* %34, i32* %9)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

222:                                              ; preds = %218
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %225 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  br label %297

226:                                              ; preds = %39, %39, %39, %39
  br label %297

227:                                              ; preds = %39
  %228 = load i32, i32* @UDF_FLAG_UTF8, align 4
  %229 = shl i32 1, %228
  %230 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %231 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %297

234:                                              ; preds = %39
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %260, label %237

237:                                              ; preds = %234
  %238 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %239 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %244 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @unload_nls(i32 %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 16
  %251 = call i32 @load_nls(i32 %250)
  %252 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %253 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %252, i32 0, i32 9
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %255 = shl i32 1, %254
  %256 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %257 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %247, %234
  br label %297

261:                                              ; preds = %39
  %262 = load i32, i32* @UDF_FLAG_UID_FORGET, align 4
  %263 = shl i32 1, %262
  %264 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %265 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %297

268:                                              ; preds = %39, %39
  br label %297

269:                                              ; preds = %39
  %270 = load i32, i32* @UDF_FLAG_GID_FORGET, align 4
  %271 = shl i32 1, %270
  %272 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %273 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %297

276:                                              ; preds = %39
  %277 = call i32 @match_octal(%struct.TYPE_5__* %34, i32* %9)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

280:                                              ; preds = %276
  %281 = load i32, i32* %9, align 4
  %282 = and i32 %281, 511
  %283 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %284 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  br label %297

285:                                              ; preds = %39
  %286 = call i32 @match_octal(%struct.TYPE_5__* %34, i32* %9)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

289:                                              ; preds = %285
  %290 = load i32, i32* %9, align 4
  %291 = and i32 %290, 511
  %292 = load %struct.udf_options*, %struct.udf_options** %6, align 8
  %293 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %292, i32 0, i32 8
  store i32 %291, i32* %293, align 4
  br label %297

294:                                              ; preds = %39
  %295 = load i8*, i8** %8, align 8
  %296 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %295)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %298

297:                                              ; preds = %289, %280, %269, %268, %261, %260, %227, %226, %222, %217, %199, %174, %170, %159, %136, %112, %105, %98, %90, %83, %76, %66, %44
  store i32 0, i32* %14, align 4
  br label %298

298:                                              ; preds = %297, %294, %288, %279, %221, %203, %185, %169, %158, %146, %135, %123, %65, %51, %38
  %299 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %14, align 4
  switch i32 %300, label %305 [
    i32 0, label %301
    i32 2, label %27
    i32 1, label %303
  ]

301:                                              ; preds = %298
  br label %27

302:                                              ; preds = %27
  store i32 1, i32* %4, align 4
  br label %303

303:                                              ; preds = %302, %298, %25
  %304 = load i32, i32* %4, align 4
  ret i32 %304

305:                                              ; preds = %298
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @match_int(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @match_octal(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @load_nls(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
