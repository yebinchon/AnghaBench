; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg = type { i32*, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"b%d@%d/%zd\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to get a type information of %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s type is %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ustring\00", align 1
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@DW_TAG_array_type = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"Failed to cast into string: %s(%s) is not a pointer nor array.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to get a type information.\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Out of memory error\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Failed to cast into string: %s is not (unsigned) char *.\0A\00", align 1
@PROBE_TYPE_X = common dso_local global i32 0, align 4
@MAX_BASIC_TYPE_BITS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [47 x i8] c"%s exceeds max-bitwidth. Cut down to %d bits.\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"Failed to convert variable type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_trace_arg*, i8*, i32)* @convert_variable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_type(i32* %0, %struct.probe_trace_arg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.probe_trace_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe_trace_arg_ref**, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.probe_trace_arg* %1, %struct.probe_trace_arg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %22 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %21, i32 0, i32 1
  store %struct.probe_trace_arg_ref** %22, %struct.probe_trace_arg_ref*** %10, align 8
  %23 = load i32, i32* @STRERR_BUFSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @strdup(i8* %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %50 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %52 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

61:                                               ; preds = %41, %37, %33, %29, %4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @dwarf_bitsize(i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @dwarf_bitoffset(i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @dwarf_bytesize(i32* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

79:                                               ; preds = %73
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %81 = load i32, i32* %15, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @BYTES_TO_BITS(i32 %84)
  %86 = call i32 (i8*, i32, i8*, i8, i32, ...) @snprintf(i8* %80, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8 signext %82, i32 %83, i32 %85)
  store i32 %86, i32* %18, align 4
  br label %255

87:                                               ; preds = %61
  %88 = load i32*, i32** %6, align 8
  %89 = call i32* @die_get_real_type(i32* %88, i32* %11)
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @dwarf_diename(i32* %92)
  %94 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

97:                                               ; preds = %87
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @dwarf_diename(i32* %98)
  %100 = call i32 @dwarf_diename(i32* %11)
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %191

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %191, label %112

112:                                              ; preds = %108, %104
  %113 = call i32 @dwarf_tag(i32* %11)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @DW_TAG_pointer_type, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* @DW_TAG_array_type, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @dwarf_diename(i32* %122)
  %124 = call i32 @dwarf_diename(i32* %11)
  %125 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

128:                                              ; preds = %117, %112
  %129 = call i32* @die_get_real_type(i32* %11, i32* %11)
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

135:                                              ; preds = %128
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @DW_TAG_pointer_type, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %144, %139
  %141 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %142 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %141, align 8
  %143 = icmp ne %struct.probe_trace_arg_ref* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %146 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %145, align 8
  %147 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %146, i32 0, i32 1
  store %struct.probe_trace_arg_ref** %147, %struct.probe_trace_arg_ref*** %10, align 8
  br label %140

148:                                              ; preds = %140
  %149 = call %struct.probe_trace_arg_ref* @zalloc(i32 16)
  %150 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  store %struct.probe_trace_arg_ref* %149, %struct.probe_trace_arg_ref** %150, align 8
  %151 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %152 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %151, align 8
  %153 = icmp eq %struct.probe_trace_arg_ref* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

158:                                              ; preds = %148
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %161 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %160, align 8
  %162 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %158, %135
  %164 = call i32 @die_compare_name(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %163
  %167 = call i32 @die_compare_name(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @dwarf_diename(i32* %170)
  %172 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

175:                                              ; preds = %166, %163
  %176 = load i8*, i8** %8, align 8
  %177 = call i8* @strdup(i8* %176)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %180 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %179, i32 0, i32 0
  store i32* %178, i32** %180, align 8
  %181 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %182 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  br label %189

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188, %185
  %190 = phi i32 [ %187, %185 ], [ 0, %188 ]
  store i32 %190, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

191:                                              ; preds = %108, %97
  %192 = load i8*, i8** %8, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i8*, i8** %8, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i8 117, i8* %19, align 1
  br label %234

199:                                              ; preds = %194, %191
  %200 = load i8*, i8** %8, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i8*, i8** %8, align 8
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i8 115, i8* %19, align 1
  br label %233

207:                                              ; preds = %202, %199
  %208 = load i8*, i8** %8, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load i8*, i8** %8, align 8
  %212 = call i64 @strcmp(i8* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32, i32* @PROBE_TYPE_X, align 4
  %216 = call i64 @probe_type_is_available(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i8 120, i8* %19, align 1
  br label %232

219:                                              ; preds = %214, %210, %207
  %220 = call i64 @die_is_signed_type(i32* %11)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %229

223:                                              ; preds = %219
  %224 = load i32, i32* @PROBE_TYPE_X, align 4
  %225 = call i64 @probe_type_is_available(i32 %224)
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 120, i32 117
  br label %229

229:                                              ; preds = %223, %222
  %230 = phi i32 [ 115, %222 ], [ %228, %223 ]
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %19, align 1
  br label %232

232:                                              ; preds = %229, %218
  br label %233

233:                                              ; preds = %232, %206
  br label %234

234:                                              ; preds = %233, %198
  %235 = call i32 @dwarf_bytesize(i32* %11)
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

239:                                              ; preds = %234
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @BYTES_TO_BITS(i32 %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = call i32 @dwarf_diename(i32* %11)
  %247 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  %248 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i32 %246, i32 %247)
  %249 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %245, %239
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %252 = load i8, i8* %19, align 1
  %253 = load i32, i32* %18, align 4
  %254 = call i32 (i8*, i32, i8*, i8, i32, ...) @snprintf(i8* %251, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8 signext %252, i32 %253)
  store i32 %254, i32* %18, align 4
  br label %255

255:                                              ; preds = %250, %79
  %256 = load i32, i32* %18, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %18, align 4
  %260 = icmp sge i32 %259, 16
  br i1 %260, label %261, label %274

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %18, align 4
  %263 = icmp sge i32 %262, 16
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* @E2BIG, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %18, align 4
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 0, %268
  %270 = trunc i64 %24 to i32
  %271 = call i32 @str_error_r(i32 %269, i8* %26, i32 %270)
  %272 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %18, align 4
  store i32 %273, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

274:                                              ; preds = %258
  %275 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %276 = call i8* @strdup(i8* %275)
  %277 = bitcast i8* %276 to i32*
  %278 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %279 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %278, i32 0, i32 0
  store i32* %277, i32** %279, align 8
  %280 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %281 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %274
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

287:                                              ; preds = %274
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %288

288:                                              ; preds = %287, %284, %267, %238, %189, %169, %154, %131, %121, %91, %76, %59
  %289 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %289)
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @dwarf_bitsize(i32*) #2

declare dso_local i32 @dwarf_bitoffset(i32*) #2

declare dso_local i32 @dwarf_bytesize(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32, ...) #2

declare dso_local i32 @BYTES_TO_BITS(i32) #2

declare dso_local i32* @die_get_real_type(i32*, i32*) #2

declare dso_local i32 @pr_warning(i8*, ...) #2

declare dso_local i32 @dwarf_diename(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #2

declare dso_local i32 @dwarf_tag(i32*) #2

declare dso_local %struct.probe_trace_arg_ref* @zalloc(i32) #2

declare dso_local i32 @die_compare_name(i32*, i8*) #2

declare dso_local i64 @probe_type_is_available(i32) #2

declare dso_local i64 @die_is_signed_type(i32*) #2

declare dso_local i32 @pr_info(i8*, i32, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
