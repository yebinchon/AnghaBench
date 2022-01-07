; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg_field = type { i8*, i32, %struct.perf_probe_arg_field*, i64 }
%struct.probe_trace_arg_ref = type { i32, i32, %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [21 x i8] c"converting %s in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get the type of %s.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Var real type: %s (%x)\0A\00", align 1
@DW_TAG_array_type = common dso_local global i32 0, align 4
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Array real type: %s (%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Semantic error: %s must be referred by '->'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DW_TAG_structure_type = common dso_local global i32 0, align 4
@DW_TAG_union_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"%s is not a data structure nor a union.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Semantic error: %s is not a pointer nor array.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Semantic error: %s must be referred by '.'\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Structure on a register is not supported yet.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"%s(type:%s) has no member %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to get the offset of %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.perf_probe_arg_field*, %struct.probe_trace_arg_ref**, i32*, i32)* @convert_variable_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_fields(i32* %0, i8* %1, %struct.perf_probe_arg_field* %2, %struct.probe_trace_arg_ref** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.perf_probe_arg_field*, align 8
  %11 = alloca %struct.probe_trace_arg_ref**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.probe_trace_arg_ref*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.perf_probe_arg_field* %2, %struct.perf_probe_arg_field** %10, align 8
  store %struct.probe_trace_arg_ref** %3, %struct.probe_trace_arg_ref*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  %20 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  store %struct.probe_trace_arg_ref* %20, %struct.probe_trace_arg_ref** %14, align 8
  %21 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %22 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @die_get_real_type(i32* %26, i32* %15)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %287

34:                                               ; preds = %6
  %35 = call i32 @dwarf_diename(i32* %15)
  %36 = call i64 @dwarf_dieoffset(i32* %15)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @pr_debug2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37)
  %39 = call i32 @dwarf_tag(i32* %15)
  store i32 %39, i32* %18, align 4
  %40 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %41 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 91
  br i1 %46, label %47, label %106

47:                                               ; preds = %34
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @DW_TAG_array_type, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @DW_TAG_pointer_type, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @memcpy(i32* %56, i32* %15, i32 4)
  %58 = call i32* @die_get_real_type(i32* %15, i32* %15)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %287

65:                                               ; preds = %55
  %66 = call i32 @dwarf_diename(i32* %15)
  %67 = call i64 @dwarf_dieoffset(i32* %15)
  %68 = trunc i64 %67 to i32
  %69 = call i32 @pr_debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @DW_TAG_pointer_type, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = call %struct.probe_trace_arg_ref* @zalloc(i32 16)
  store %struct.probe_trace_arg_ref* %74, %struct.probe_trace_arg_ref** %14, align 8
  %75 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %76 = icmp eq %struct.probe_trace_arg_ref* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %287

80:                                               ; preds = %73
  %81 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  %82 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %81, align 8
  %83 = icmp ne %struct.probe_trace_arg_ref* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %86 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  %87 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %86, align 8
  %88 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %87, i32 0, i32 2
  store %struct.probe_trace_arg_ref* %85, %struct.probe_trace_arg_ref** %88, align 8
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %91 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  store %struct.probe_trace_arg_ref* %90, %struct.probe_trace_arg_ref** %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %65
  %94 = call i32 @dwarf_bytesize(i32* %15)
  %95 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %96 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %94, %97
  %99 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %100 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %105 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %270

106:                                              ; preds = %51, %34
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @DW_TAG_pointer_type, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %164

110:                                              ; preds = %106
  %111 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %112 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %117 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %287

122:                                              ; preds = %110
  %123 = call i32* @die_get_real_type(i32* %15, i32* %15)
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %287

130:                                              ; preds = %122
  %131 = call i32 @dwarf_tag(i32* %15)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @DW_TAG_structure_type, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @DW_TAG_union_type, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %287

144:                                              ; preds = %135, %130
  %145 = call %struct.probe_trace_arg_ref* @zalloc(i32 16)
  store %struct.probe_trace_arg_ref* %145, %struct.probe_trace_arg_ref** %14, align 8
  %146 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %147 = icmp eq %struct.probe_trace_arg_ref* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %287

151:                                              ; preds = %144
  %152 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  %153 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %152, align 8
  %154 = icmp ne %struct.probe_trace_arg_ref* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %157 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  %158 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %157, align 8
  %159 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %158, i32 0, i32 2
  store %struct.probe_trace_arg_ref* %156, %struct.probe_trace_arg_ref** %159, align 8
  br label %163

160:                                              ; preds = %151
  %161 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %162 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %11, align 8
  store %struct.probe_trace_arg_ref* %161, %struct.probe_trace_arg_ref** %162, align 8
  br label %163

163:                                              ; preds = %160, %155
  br label %214

164:                                              ; preds = %106
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* @DW_TAG_structure_type, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @DW_TAG_union_type, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %173)
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %287

177:                                              ; preds = %168, %164
  %178 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %179 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 91
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %186)
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %7, align 4
  br label %287

190:                                              ; preds = %177
  %191 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %192 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @dwarf_diename(i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %201 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %7, align 4
  br label %287

206:                                              ; preds = %195, %190
  %207 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %208 = icmp ne %struct.probe_trace_arg_ref* %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %211 = load i32, i32* @ENOTSUP, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %7, align 4
  br label %287

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %163
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %217 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = call i32* @die_find_member(i32* %15, i8* %218, i32* %219)
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @dwarf_diename(i32* %15)
  %225 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %226 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %223, i32 %224, i8* %227)
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %7, align 4
  br label %287

231:                                              ; preds = %215
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* @DW_TAG_union_type, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i64 0, i64* %16, align 8
  br label %248

236:                                              ; preds = %231
  %237 = load i32*, i32** %12, align 8
  %238 = call i32 @die_get_data_member_location(i32* %237, i64* %16)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %243 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %244)
  %246 = load i32, i32* %17, align 4
  store i32 %246, i32* %7, align 4
  br label %287

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %235
  %249 = load i64, i64* %16, align 8
  %250 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %251 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %249
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 8
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %14, align 8
  %258 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 @dwarf_diename(i32* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %248
  %263 = load i32*, i32** %12, align 8
  %264 = load i8*, i8** %9, align 8
  %265 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %266 = load i32*, i32** %12, align 8
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @convert_variable_fields(i32* %263, i8* %264, %struct.perf_probe_arg_field* %265, %struct.probe_trace_arg_ref** %14, i32* %266, i32 %267)
  store i32 %268, i32* %7, align 4
  br label %287

269:                                              ; preds = %248
  br label %270

270:                                              ; preds = %269, %93
  %271 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %272 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %271, i32 0, i32 2
  %273 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %272, align 8
  %274 = icmp ne %struct.perf_probe_arg_field* %273, null
  br i1 %274, label %275, label %286

275:                                              ; preds = %270
  %276 = load i32*, i32** %12, align 8
  %277 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %278 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %281 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %280, i32 0, i32 2
  %282 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %281, align 8
  %283 = load i32*, i32** %12, align 8
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @convert_variable_fields(i32* %276, i8* %279, %struct.perf_probe_arg_field* %282, %struct.probe_trace_arg_ref** %14, i32* %283, i32 %284)
  store i32 %285, i32* %7, align 4
  br label %287

286:                                              ; preds = %270
  store i32 0, i32* %7, align 4
  br label %287

287:                                              ; preds = %286, %275, %262, %241, %222, %209, %199, %185, %172, %148, %139, %125, %115, %77, %60, %29
  %288 = load i32, i32* %7, align 4
  ret i32 %288
}

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32* @die_get_real_type(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @pr_debug2(i8*, i32, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_dieoffset(i32*) #1

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.probe_trace_arg_ref* @zalloc(i32) #1

declare dso_local i32 @dwarf_bytesize(i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32* @die_find_member(i32*, i8*, i32*) #1

declare dso_local i32 @die_get_data_member_location(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
