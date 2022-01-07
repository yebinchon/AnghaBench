; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.fs_parameter_description = type { i32, %struct.fs_parameter_enum* }
%struct.fs_parameter_enum = type { i32, i32, i32* }
%struct.fs_parameter = type { i8*, i32, i32, i32, i32 }
%struct.fs_parse_result = type { i32, i32, i32, i32, i64, i32 }
%struct.fs_parameter_spec = type { i32, i32, i32 }

@ENOPARAM = common dso_local global i32 0, align 4
@fs_param_neg_with_no = common dso_local global i32 0, align 4
@fs_param_deprecated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Deprecated parameter '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fs_param_v_optional = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Unexpected value for '%s'\00", align 1
@bool_names = common dso_local global i32 0, align 4
@fs_value_is_blob = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Bad value for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fs_parse(%struct.fs_context* %0, %struct.fs_parameter_description* %1, %struct.fs_parameter* %2, %struct.fs_parse_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca %struct.fs_parameter_description*, align 8
  %8 = alloca %struct.fs_parameter*, align 8
  %9 = alloca %struct.fs_parse_result*, align 8
  %10 = alloca %struct.fs_parameter_spec*, align 8
  %11 = alloca %struct.fs_parameter_enum*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %6, align 8
  store %struct.fs_parameter_description* %1, %struct.fs_parameter_description** %7, align 8
  store %struct.fs_parameter* %2, %struct.fs_parameter** %8, align 8
  store %struct.fs_parse_result* %3, %struct.fs_parse_result** %9, align 8
  %14 = load i32, i32* @ENOPARAM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %17 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %24 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %26 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %28 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %30 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %31 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_description* %29, i8* %32)
  store %struct.fs_parameter_spec* %33, %struct.fs_parameter_spec** %10, align 8
  %34 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %35 = icmp ne %struct.fs_parameter_spec* %34, null
  br i1 %35, label %89, label %36

36:                                               ; preds = %4
  %37 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %38 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %337

42:                                               ; preds = %36
  %43 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %44 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 110
  br i1 %49, label %65, label %50

50:                                               ; preds = %42
  %51 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %52 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 111
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %60 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %50, %42
  br label %337

66:                                               ; preds = %58
  %67 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %68 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %69 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = call %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_description* %67, i8* %71)
  store %struct.fs_parameter_spec* %72, %struct.fs_parameter_spec** %10, align 8
  %73 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %74 = icmp ne %struct.fs_parameter_spec* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %337

76:                                               ; preds = %66
  %77 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %78 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @fs_param_neg_with_no, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %337

84:                                               ; preds = %76
  %85 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %86 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  %87 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %88 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %4
  %90 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %91 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @fs_param_deprecated, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %98 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %99 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %102 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @warnf(%struct.fs_context* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %100, i8* %103)
  br label %105

105:                                              ; preds = %96, %89
  %106 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %107 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %324

111:                                              ; preds = %105
  %112 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %113 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %139 [
    i32 144, label %115
    i32 134, label %118
    i32 132, label %118
    i32 133, label %118
    i32 136, label %118
    i32 131, label %118
    i32 140, label %118
    i32 135, label %118
  ]

115:                                              ; preds = %111
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %340

118:                                              ; preds = %111, %111, %111, %111, %111, %111, %111
  %119 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %120 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 128
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %328

124:                                              ; preds = %118
  %125 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %126 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %124
  %130 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %131 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @fs_param_v_optional, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %324

137:                                              ; preds = %129
  br label %328

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %111, %138
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %142 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %316 [
    i32 138, label %144
    i32 141, label %171
    i32 134, label %200
    i32 132, label %207
    i32 133, label %214
    i32 136, label %221
    i32 131, label %228
    i32 140, label %235
    i32 135, label %274
    i32 143, label %275
    i32 139, label %283
    i32 142, label %315
    i32 137, label %315
  ]

144:                                              ; preds = %140
  %145 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %146 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 129
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %151 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 128
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %156 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154, %149
  %160 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %161 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %162 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %165 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @invalf(%struct.fs_context* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %163, i8* %166)
  store i32 %167, i32* %5, align 4
  br label %340

168:                                              ; preds = %154, %144
  %169 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %170 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  br label %324

171:                                              ; preds = %140
  %172 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %173 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %199 [
    i32 129, label %175
    i32 128, label %178
  ]

175:                                              ; preds = %171
  %176 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %177 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  br label %324

178:                                              ; preds = %171
  %179 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %180 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %185 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %184, i32 0, i32 2
  store i32 1, i32* %185, align 8
  br label %324

186:                                              ; preds = %178
  %187 = load i32, i32* @bool_names, align 4
  %188 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %189 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @lookup_constant(i32 %187, i32 %190, i32 -1)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %328

195:                                              ; preds = %186
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %198 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  br label %324

199:                                              ; preds = %171
  br label %328

200:                                              ; preds = %140
  %201 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %202 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %205 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %204, i32 0, i32 3
  %206 = call i32 @kstrtouint(i32 %203, i32 0, i32* %205)
  store i32 %206, i32* %12, align 4
  br label %319

207:                                              ; preds = %140
  %208 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %209 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %212 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %211, i32 0, i32 3
  %213 = call i32 @kstrtouint(i32 %210, i32 8, i32* %212)
  store i32 %213, i32* %12, align 4
  br label %319

214:                                              ; preds = %140
  %215 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %216 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %219 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %218, i32 0, i32 3
  %220 = call i32 @kstrtouint(i32 %217, i32 16, i32* %219)
  store i32 %220, i32* %12, align 4
  br label %319

221:                                              ; preds = %140
  %222 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %223 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %226 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %225, i32 0, i32 5
  %227 = call i32 @kstrtoint(i32 %224, i32 0, i32* %226)
  store i32 %227, i32* %12, align 4
  br label %319

228:                                              ; preds = %140
  %229 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %230 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %233 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %232, i32 0, i32 4
  %234 = call i32 @kstrtoull(i32 %231, i32 0, i64* %233)
  store i32 %234, i32* %12, align 4
  br label %319

235:                                              ; preds = %140
  %236 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %237 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %236, i32 0, i32 1
  %238 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %237, align 8
  store %struct.fs_parameter_enum* %238, %struct.fs_parameter_enum** %11, align 8
  br label %239

239:                                              ; preds = %270, %235
  %240 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %11, align 8
  %241 = getelementptr inbounds %struct.fs_parameter_enum, %struct.fs_parameter_enum* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %273

246:                                              ; preds = %239
  %247 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %11, align 8
  %248 = getelementptr inbounds %struct.fs_parameter_enum, %struct.fs_parameter_enum* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %251 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %249, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %246
  %255 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %11, align 8
  %256 = getelementptr inbounds %struct.fs_parameter_enum, %struct.fs_parameter_enum* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %259 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @strcmp(i32* %257, i32 %260)
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %254
  %264 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %11, align 8
  %265 = getelementptr inbounds %struct.fs_parameter_enum, %struct.fs_parameter_enum* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %268 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  br label %324

269:                                              ; preds = %254, %246
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.fs_parameter_enum*, %struct.fs_parameter_enum** %11, align 8
  %272 = getelementptr inbounds %struct.fs_parameter_enum, %struct.fs_parameter_enum* %271, i32 1
  store %struct.fs_parameter_enum* %272, %struct.fs_parameter_enum** %11, align 8
  br label %239

273:                                              ; preds = %239
  br label %328

274:                                              ; preds = %140
  br label %324

275:                                              ; preds = %140
  %276 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %277 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @fs_value_is_blob, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  br label %328

282:                                              ; preds = %275
  br label %324

283:                                              ; preds = %140
  %284 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %285 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  switch i32 %286, label %306 [
    i32 128, label %287
    i32 130, label %300
  ]

287:                                              ; preds = %283
  %288 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %289 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %287
  br label %328

293:                                              ; preds = %287
  %294 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %295 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %298 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %297, i32 0, i32 3
  %299 = call i32 @kstrtouint(i32 %296, i32 0, i32* %298)
  store i32 %299, i32* %12, align 4
  br label %307

300:                                              ; preds = %283
  %301 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %302 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %305 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  store i32 0, i32* %12, align 4
  br label %306

306:                                              ; preds = %283, %300
  br label %328

307:                                              ; preds = %293
  %308 = load %struct.fs_parse_result*, %struct.fs_parse_result** %9, align 8
  %309 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @INT_MAX, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %328

314:                                              ; preds = %307
  br label %319

315:                                              ; preds = %140, %140
  br label %324

316:                                              ; preds = %140
  %317 = call i32 (...) @BUG()
  br label %318

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %318, %314, %228, %221, %214, %207, %200
  %320 = load i32, i32* %12, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %328

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %323, %315, %282, %274, %263, %195, %183, %175, %168, %136, %110
  %325 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %10, align 8
  %326 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %5, align 4
  br label %340

328:                                              ; preds = %322, %313, %306, %292, %281, %273, %199, %194, %137, %123
  %329 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %330 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %7, align 8
  %331 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.fs_parameter*, %struct.fs_parameter** %8, align 8
  %334 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @invalf(%struct.fs_context* %329, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %332, i8* %335)
  store i32 %336, i32* %5, align 4
  br label %340

337:                                              ; preds = %83, %75, %65, %41
  %338 = load i32, i32* @ENOPARAM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %5, align 4
  br label %340

340:                                              ; preds = %337, %328, %324, %159, %115
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

declare dso_local %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_description*, i8*) #1

declare dso_local i32 @warnf(%struct.fs_context*, i8*, i32, i8*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, i32, i8*) #1

declare dso_local i32 @lookup_constant(i32, i32, i32) #1

declare dso_local i32 @kstrtouint(i32, i32, i32*) #1

declare dso_local i32 @kstrtoint(i32, i32, i32*) #1

declare dso_local i32 @kstrtoull(i32, i32, i64*) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
