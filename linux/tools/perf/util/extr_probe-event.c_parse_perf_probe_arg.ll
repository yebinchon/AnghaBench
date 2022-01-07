; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_perf_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_perf_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg = type { i32, i8*, i32*, %struct.perf_probe_arg_field*, i32* }
%struct.perf_probe_arg_field = type { i32, i8*, %struct.perf_probe_arg_field*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"parsing arg: %s into \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"name:%s \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ftrace does not support user access\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"user_access \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"type:%s \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-.[\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Array index must be a number.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Argument parse error: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s(%d), \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.perf_probe_arg*)* @parse_perf_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_perf_probe_arg(i8* %0, %struct.perf_probe_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_probe_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_probe_arg_field**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.perf_probe_arg* %1, %struct.perf_probe_arg** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @strndup(i8* %16, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %26 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %28 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %328

34:                                               ; preds = %15
  %35 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %36 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %34, %2
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 64)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = call i32 (...) @user_access_is_supported()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %328

62:                                               ; preds = %55
  %63 = load i8*, i8** %6, align 8
  store i8 0, i8* %63, align 1
  %64 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %65 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %50, %46, %41
  %68 = load i8*, i8** %4, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 58)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = call i8* @strdup(i8* %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %79 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %78, i32 0, i32 4
  store i32* %77, i32** %79, align 8
  %80 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %81 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %328

87:                                               ; preds = %72
  %88 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %89 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %87, %67
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @strpbrk(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @is_c_varname(i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %118, label %101

101:                                              ; preds = %98, %92
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @strdup(i8* %102)
  %104 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %105 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %107 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %328

113:                                              ; preds = %101
  %114 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %115 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  store i32 0, i32* %3, align 4
  br label %328

118:                                              ; preds = %98
  %119 = load i8*, i8** %4, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i8* @strndup(i8* %119, i32 %125)
  %127 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %128 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %130 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %328

136:                                              ; preds = %118
  %137 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %138 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %7, align 8
  %140 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %141 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %142)
  %144 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %145 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %144, i32 0, i32 3
  store %struct.perf_probe_arg_field** %145, %struct.perf_probe_arg_field*** %8, align 8
  br label %146

146:                                              ; preds = %272, %136
  %147 = call %struct.perf_probe_arg_field* @zalloc(i32 32)
  %148 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  store %struct.perf_probe_arg_field* %147, %struct.perf_probe_arg_field** %148, align 8
  %149 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %150 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %149, align 8
  %151 = icmp eq %struct.perf_probe_arg_field* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %328

155:                                              ; preds = %146
  %156 = load i8*, i8** %6, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 91
  br i1 %159, label %160, label %193

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  store i8* %161, i8** %4, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = call i32 @strtol(i8* %163, i8** %6, i32 0)
  %165 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %166 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %165, align 8
  %167 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 8
  %168 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %169 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %168, align 8
  %170 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 93
  br i1 %174, label %180, label %175

175:                                              ; preds = %160
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = icmp eq i8* %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %175, %160
  %181 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %328

184:                                              ; preds = %175
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %6, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  store i8* null, i8** %6, align 8
  br label %192

192:                                              ; preds = %191, %184
  br label %225

193:                                              ; preds = %155
  %194 = load i8*, i8** %6, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 46
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  store i8* %200, i8** %4, align 8
  %201 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %202 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %201, align 8
  %203 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %222

204:                                              ; preds = %193
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 62
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  store i8* %212, i8** %4, align 8
  %213 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %214 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %213, align 8
  %215 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  br label %221

216:                                              ; preds = %204
  %217 = load i8*, i8** %4, align 8
  %218 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %328

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %198
  %223 = load i8*, i8** %4, align 8
  %224 = call i8* @strpbrk(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %224, i8** %6, align 8
  br label %225

225:                                              ; preds = %222, %192
  %226 = load i8*, i8** %6, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %271

228:                                              ; preds = %225
  %229 = load i8*, i8** %4, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i8*, i8** %4, align 8
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = call i8* @strndup(i8* %229, i32 %235)
  %237 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %238 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %237, align 8
  %239 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %238, i32 0, i32 1
  store i8* %236, i8** %239, align 8
  %240 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %241 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %240, align 8
  %242 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %228
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %3, align 4
  br label %328

248:                                              ; preds = %228
  %249 = load i8*, i8** %4, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 91
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %255 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %254, align 8
  %256 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %7, align 8
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %260 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %259, align 8
  %261 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %264 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %263, align 8
  %265 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %262, i32 %266)
  %268 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %269 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %268, align 8
  %270 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %269, i32 0, i32 2
  store %struct.perf_probe_arg_field** %270, %struct.perf_probe_arg_field*** %8, align 8
  br label %271

271:                                              ; preds = %258, %225
  br label %272

272:                                              ; preds = %271
  %273 = load i8*, i8** %6, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %146, label %275

275:                                              ; preds = %272
  %276 = load i8*, i8** %4, align 8
  %277 = call i8* @strdup(i8* %276)
  %278 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %279 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %278, align 8
  %280 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %279, i32 0, i32 1
  store i8* %277, i8** %280, align 8
  %281 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %282 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %281, align 8
  %283 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %275
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %328

289:                                              ; preds = %275
  %290 = load i8*, i8** %4, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 91
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %296 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %295, align 8
  %297 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  store i8* %298, i8** %7, align 8
  br label %299

299:                                              ; preds = %294, %289
  %300 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %301 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %300, align 8
  %302 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %305 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %304, align 8
  %306 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %303, i32 %307)
  %309 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %310 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %327, label %313

313:                                              ; preds = %299
  %314 = load i8*, i8** %7, align 8
  %315 = call i8* @strdup(i8* %314)
  %316 = bitcast i8* %315 to i32*
  %317 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %318 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %317, i32 0, i32 2
  store i32* %316, i32** %318, align 8
  %319 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %320 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %313
  %324 = load i32, i32* @ENOMEM, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %3, align 4
  br label %328

326:                                              ; preds = %313
  br label %327

327:                                              ; preds = %326, %299
  store i32 0, i32* %3, align 4
  br label %328

328:                                              ; preds = %327, %323, %286, %245, %216, %180, %152, %133, %113, %110, %84, %58, %31
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @user_access_is_supported(...) #1

declare dso_local i32 @semantic_error(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @is_c_varname(i8*) #1

declare dso_local %struct.perf_probe_arg_field* @zalloc(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
