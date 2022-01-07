; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_field_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_field_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.perf_sample = type { i8* }
%struct.tep_format_field = type { i8*, i64, i8*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bt_ctf_field_type = type { i32 }
%struct.bt_ctf_field = type { i32 }

@TEP_FIELD_IS_STRING = common dso_local global i64 0, align 8
@TEP_FIELD_IS_ARRAY = common dso_local global i64 0, align 8
@TEP_FIELD_IS_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to create array type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create a field %s\0A\00", align 1
@TEP_FIELD_IS_SIGNED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to set file value %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to set payload %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed add payload array %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.perf_sample*, %struct.tep_format_field*)* @add_tracepoint_field_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_field_value(%struct.ctf_writer* %0, %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event* %2, %struct.perf_sample* %3, %struct.tep_format_field* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctf_writer*, align 8
  %8 = alloca %struct.bt_ctf_event_class*, align 8
  %9 = alloca %struct.bt_ctf_event*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.tep_format_field*, align 8
  %12 = alloca %struct.bt_ctf_field_type*, align 8
  %13 = alloca %struct.bt_ctf_field*, align 8
  %14 = alloca %struct.bt_ctf_field*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %7, align 8
  store %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event_class** %8, align 8
  store %struct.bt_ctf_event* %2, %struct.bt_ctf_event** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store %struct.tep_format_field* %4, %struct.tep_format_field** %11, align 8
  %25 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %26 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %15, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %32 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %17, align 8
  %34 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %35 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %15, align 8
  %37 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %38 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %20, align 4
  %40 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %41 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %21, align 4
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @TEP_FIELD_IS_STRING, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %5
  %48 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %17, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %47, %5
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* @TEP_FIELD_IS_DYNAMIC, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %59 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %58, i32 0, i32 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %20, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i32, i32* %21, align 4
  %68 = call i64 @tep_read_number(i32 %62, i8* %66, i32 %67)
  store i64 %68, i64* %23, align 8
  %69 = load i64, i64* %23, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = lshr i32 %71, 16
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, 65535
  store i32 %74, i32* %20, align 4
  br label %75

75:                                               ; preds = %57, %52
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %8, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %81, i8* %82)
  store %struct.bt_ctf_field_type* %83, %struct.bt_ctf_field_type** %12, align 8
  %84 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %12, align 8
  %85 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %84)
  store %struct.bt_ctf_field* %85, %struct.bt_ctf_field** %13, align 8
  %86 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %12, align 8
  %87 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %86)
  %88 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %13, align 8
  %89 = icmp ne %struct.bt_ctf_field* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %91)
  store i32 -1, i32* %6, align 4
  br label %230

93:                                               ; preds = %80
  %94 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %95 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %98 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = udiv i32 %96, %99
  store i32 %100, i32* %21, align 4
  %101 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %102 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %18, align 4
  br label %105

104:                                              ; preds = %75
  store i32 1, i32* %18, align 4
  store %struct.bt_ctf_field* null, %struct.bt_ctf_field** %13, align 8
  br label %105

105:                                              ; preds = %104, %93
  %106 = load %struct.ctf_writer*, %struct.ctf_writer** %7, align 8
  %107 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %108 = call %struct.bt_ctf_field_type* @get_tracepoint_field_type(%struct.ctf_writer* %106, %struct.tep_format_field* %107)
  store %struct.bt_ctf_field_type* %108, %struct.bt_ctf_field_type** %12, align 8
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %205, %105
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %208

113:                                              ; preds = %109
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %13, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call %struct.bt_ctf_field* @bt_ctf_field_array_get_field(%struct.bt_ctf_field* %119, i32 %120)
  store %struct.bt_ctf_field* %121, %struct.bt_ctf_field** %14, align 8
  br label %125

122:                                              ; preds = %113
  %123 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %12, align 8
  %124 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %123)
  store %struct.bt_ctf_field* %124, %struct.bt_ctf_field** %14, align 8
  br label %125

125:                                              ; preds = %122, %118
  %126 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %127 = icmp ne %struct.bt_ctf_field* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  store i32 -1, i32* %6, align 4
  br label %230

131:                                              ; preds = %125
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* @TEP_FIELD_IS_STRING, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load i32, i32* %20, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr i8, i8* %138, i64 %140
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %21, align 4
  %144 = mul i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr i8, i8* %141, i64 %145
  %147 = call i32 @string_set_value(%struct.bt_ctf_field* %137, i8* %146)
  store i32 %147, i32* %22, align 4
  br label %180

148:                                              ; preds = %131
  %149 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %150 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %149, i32 0, i32 6
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %16, align 8
  %155 = load i32, i32* %20, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr i8, i8* %154, i64 %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %21, align 4
  %160 = mul i32 %158, %159
  %161 = zext i32 %160 to i64
  %162 = getelementptr i8, i8* %157, i64 %161
  %163 = load i32, i32* %21, align 4
  %164 = call i64 @tep_read_number(i32 %153, i8* %162, i32 %163)
  store i64 %164, i64* %24, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* @TEP_FIELD_IS_SIGNED, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %148
  %170 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %171 = load i64, i64* %24, align 8
  %172 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %170, i64 %171)
  store i32 %172, i32* %22, align 4
  br label %179

173:                                              ; preds = %148
  %174 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %175 = load i64, i64* %24, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @adjust_signedness(i64 %175, i32 %176)
  %178 = call i32 @bt_ctf_field_signed_integer_set_value(%struct.bt_ctf_field* %174, i32 %177)
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %173, %169
  br label %180

180:                                              ; preds = %179, %136
  %181 = load i32, i32* %22, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %15, align 8
  %185 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %184)
  br label %227

186:                                              ; preds = %180
  %187 = load i64, i64* %17, align 8
  %188 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %189 = and i64 %187, %188
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %186
  %192 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %9, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %195 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %192, i8* %193, %struct.bt_ctf_field* %194)
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i8*, i8** %15, align 8
  %200 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %199)
  br label %227

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %186
  %203 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %204 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %203)
  br label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %19, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %109

208:                                              ; preds = %109
  %209 = load i64, i64* %17, align 8
  %210 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %211 = and i64 %209, %210
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %208
  %214 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %9, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %13, align 8
  %217 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %214, i8* %215, %struct.bt_ctf_field* %216)
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %22, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i8*, i8** %15, align 8
  %222 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %221)
  store i32 -1, i32* %6, align 4
  br label %230

223:                                              ; preds = %213
  %224 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %13, align 8
  %225 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %224)
  br label %226

226:                                              ; preds = %223, %208
  store i32 0, i32* %6, align 4
  br label %230

227:                                              ; preds = %198, %183
  %228 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %229 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %228)
  store i32 -1, i32* %6, align 4
  br label %230

230:                                              ; preds = %227, %226, %220, %128, %90
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i64 @tep_read_number(i32, i8*, i32) #1

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class*, i8*) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.bt_ctf_field_type* @get_tracepoint_field_type(%struct.ctf_writer*, %struct.tep_format_field*) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_field_array_get_field(%struct.bt_ctf_field*, i32) #1

declare dso_local i32 @string_set_value(%struct.bt_ctf_field*, i8*) #1

declare dso_local i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field*, i64) #1

declare dso_local i32 @bt_ctf_field_signed_integer_set_value(%struct.bt_ctf_field*, i32) #1

declare dso_local i32 @adjust_signedness(i64, i32) #1

declare dso_local i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event*, i8*, %struct.bt_ctf_field*) #1

declare dso_local i32 @bt_ctf_field_put(%struct.bt_ctf_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
