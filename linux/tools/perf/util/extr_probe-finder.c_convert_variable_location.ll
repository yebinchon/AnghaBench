; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_location.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.probe_trace_arg = type { i32*, i32* }

@DW_AT_external = common dso_local global i32 0, align 4
@DW_AT_location = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@probe_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DW_TAG_variable = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@DW_TAG_formal_parameter = common dso_local global i64 0, align 8
@DW_OP_addr = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@DW_OP_fbreg = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@DW_OP_breg0 = common dso_local global i64 0, align 8
@DW_OP_breg31 = common dso_local global i64 0, align 8
@DW_OP_reg0 = common dso_local global i64 0, align 8
@DW_OP_reg31 = common dso_local global i64 0, align 8
@DW_OP_bregx = common dso_local global i64 0, align 8
@DW_OP_regx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DW_OP %x is not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Mapping for the register number %u missing on this architecture.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_5__*, i32*, i32, %struct.probe_trace_arg*)* @convert_variable_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_location(i32* %0, i64 %1, %struct.TYPE_5__* %2, i32* %3, i32 %4, %struct.probe_trace_arg* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.probe_trace_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.probe_trace_arg* %5, %struct.probe_trace_arg** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @DW_AT_external, align 4
  %26 = call i32* @dwarf_attr(i32* %24, i32 %25, i32* %14)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %114

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @DW_AT_location, align 4
  %32 = call i32* @dwarf_attr(i32* %30, i32 %31, i32* %14)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %303

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @dwarf_getlocation_addr(i32* %14, i64 %38, %struct.TYPE_5__** %16, i64* %17, i32 1)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %37
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @dwarf_entrypc(i32* %42, i64* %15)
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %303

49:                                               ; preds = %41
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @probe_conf, i32 0, i32 0), align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @dwarf_tag(i32* %53)
  %55 = load i64, i64* @DW_TAG_variable, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %23, align 4
  br label %73

60:                                               ; preds = %52, %49
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @dwarf_tag(i32* %65)
  %67 = load i64, i64* @DW_TAG_formal_parameter, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %303

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @dwarf_highpc(i32* %74, i64* %15)
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %303

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %94, %81
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @dwarf_getlocation_addr(i32* %14, i64 %89, %struct.TYPE_5__** %16, i64* %17, i32 1)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %101

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %84

97:                                               ; preds = %84
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %303

100:                                              ; preds = %37
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i64, i64* %17, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @ENOENT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %303

107:                                              ; preds = %101
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DW_OP_addr, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %159

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %28
  %115 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %116 = icmp ne %struct.probe_trace_arg* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %23, align 4
  store i32 %118, i32* %7, align 4
  br label %303

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = call i8* @dwarf_diename(i32* %120)
  %122 = call i32 @strlen(i8* %121)
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %123, 2
  %125 = call i32* @zalloc(i32 %124)
  %126 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %127 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %126, i32 0, i32 1
  store i32* %125, i32** %127, align 8
  %128 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %129 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %303

135:                                              ; preds = %119
  %136 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %137 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 2
  %141 = load i32*, i32** %8, align 8
  %142 = call i8* @dwarf_diename(i32* %141)
  %143 = call i32 @snprintf(i32* %138, i32 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %142)
  %144 = load i32, i32* %19, align 4
  %145 = zext i32 %144 to i64
  %146 = call i8* @alloc_trace_arg_ref(i64 %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %149 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %148, i32 0, i32 0
  store i32* %147, i32** %149, align 8
  %150 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %151 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %135
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %303

157:                                              ; preds = %135
  %158 = load i32, i32* %23, align 4
  store i32 %158, i32* %7, align 4
  br label %303

159:                                              ; preds = %107
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DW_OP_fbreg, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %159
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = icmp eq %struct.TYPE_5__* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @ENOTSUP, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %303

171:                                              ; preds = %165
  store i32 1, i32* %20, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %19, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 0
  store %struct.TYPE_5__* %176, %struct.TYPE_5__** %16, align 8
  br label %177

177:                                              ; preds = %171, %159
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @DW_OP_breg0, align 8
  %182 = icmp sge i64 %180, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %177
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DW_OP_breg31, align 8
  %188 = icmp sle i64 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %183
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DW_OP_breg0, align 8
  %194 = sub nsw i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = add i32 %199, %198
  store i32 %200, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %255

201:                                              ; preds = %183, %177
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @DW_OP_reg0, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %201
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @DW_OP_reg31, align 8
  %212 = icmp sle i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @DW_OP_reg0, align 8
  %218 = sub nsw i64 %216, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %18, align 4
  br label %254

220:                                              ; preds = %207, %201
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DW_OP_bregx, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %18, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %19, align 4
  %234 = add i32 %233, %232
  store i32 %234, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %253

235:                                              ; preds = %220
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @DW_OP_regx, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %18, align 4
  br label %252

245:                                              ; preds = %235
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %248)
  %250 = load i32, i32* @ENOTSUP, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %7, align 4
  br label %303

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %252, %226
  br label %254

254:                                              ; preds = %253, %213
  br label %255

255:                                              ; preds = %254, %189
  %256 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %257 = icmp ne %struct.probe_trace_arg* %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %23, align 4
  store i32 %259, i32* %7, align 4
  br label %303

260:                                              ; preds = %255
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i8* @get_dwarf_regstr(i32 %261, i32 %262)
  store i8* %263, i8** %21, align 8
  %264 = load i8*, i8** %21, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %260
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @ENOTSUP, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %7, align 4
  br label %303

271:                                              ; preds = %260
  %272 = load i8*, i8** %21, align 8
  %273 = call i32* @strdup(i8* %272)
  %274 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %275 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %274, i32 0, i32 1
  store i32* %273, i32** %275, align 8
  %276 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %277 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = icmp eq i32* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32, i32* @ENOMEM, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %7, align 4
  br label %303

283:                                              ; preds = %271
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load i32, i32* %19, align 4
  %288 = zext i32 %287 to i64
  %289 = call i8* @alloc_trace_arg_ref(i64 %288)
  %290 = bitcast i8* %289 to i32*
  %291 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %292 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %291, i32 0, i32 0
  store i32* %290, i32** %292, align 8
  %293 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %13, align 8
  %294 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = icmp eq i32* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %286
  %298 = load i32, i32* @ENOMEM, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %7, align 4
  br label %303

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300, %283
  %302 = load i32, i32* %23, align 4
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %301, %297, %280, %266, %258, %245, %168, %157, %154, %132, %117, %104, %97, %78, %69, %46, %34
  %304 = load i32, i32* %7, align 4
  ret i32 %304
}

declare dso_local i32* @dwarf_attr(i32*, i32, i32*) #1

declare dso_local i64 @dwarf_getlocation_addr(i32*, i64, %struct.TYPE_5__**, i64*, i32) #1

declare dso_local i32 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i32 @dwarf_highpc(i32*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i8* @alloc_trace_arg_ref(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i8* @get_dwarf_regstr(i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
