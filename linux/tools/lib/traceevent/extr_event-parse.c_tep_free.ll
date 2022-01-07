; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, i32, %struct.tep_handle*, %struct.tep_handle*, %struct.tep_handle*, %struct.event_handler*, %struct.tep_handle*, %struct.tep_handle*, %struct.tep_handle*, i64, %struct.tep_function_handler*, %struct.tep_handle*, %struct.tep_handle*, %struct.tep_handle*, i64, %struct.tep_handle*, %struct.tep_handle*, i64, %struct.tep_handle*, %struct.tep_handle*, %struct.tep_handle* }
%struct.event_handler = type { %struct.event_handler* }
%struct.tep_function_handler = type { %struct.tep_function_handler* }
%struct.cmdline_list = type { i32, i32, %struct.cmdline_list*, %struct.cmdline_list*, %struct.cmdline_list*, %struct.event_handler*, %struct.cmdline_list*, %struct.cmdline_list*, %struct.cmdline_list*, i64, %struct.tep_function_handler*, %struct.cmdline_list*, %struct.cmdline_list*, %struct.cmdline_list*, i64, %struct.cmdline_list*, %struct.cmdline_list*, i64, %struct.cmdline_list*, %struct.cmdline_list*, %struct.cmdline_list* }
%struct.func_list = type { i32, i32, %struct.func_list*, %struct.func_list*, %struct.func_list*, %struct.event_handler*, %struct.func_list*, %struct.func_list*, %struct.func_list*, i64, %struct.tep_function_handler*, %struct.func_list*, %struct.func_list*, %struct.func_list*, i64, %struct.func_list*, %struct.func_list*, i64, %struct.func_list*, %struct.func_list*, %struct.func_list* }
%struct.printk_list = type { i32, i32, %struct.printk_list*, %struct.printk_list*, %struct.printk_list*, %struct.event_handler*, %struct.printk_list*, %struct.printk_list*, %struct.printk_list*, i64, %struct.tep_function_handler*, %struct.printk_list*, %struct.printk_list*, %struct.printk_list*, i64, %struct.printk_list*, %struct.printk_list*, i64, %struct.printk_list*, %struct.printk_list*, %struct.printk_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tep_free(%struct.tep_handle* %0) #0 {
  %2 = alloca %struct.tep_handle*, align 8
  %3 = alloca %struct.cmdline_list*, align 8
  %4 = alloca %struct.cmdline_list*, align 8
  %5 = alloca %struct.func_list*, align 8
  %6 = alloca %struct.func_list*, align 8
  %7 = alloca %struct.printk_list*, align 8
  %8 = alloca %struct.printk_list*, align 8
  %9 = alloca %struct.tep_function_handler*, align 8
  %10 = alloca %struct.event_handler*, align 8
  %11 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %2, align 8
  %12 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %13 = icmp ne %struct.tep_handle* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %261

15:                                               ; preds = %1
  %16 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %17 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %16, i32 0, i32 20
  %18 = load %struct.tep_handle*, %struct.tep_handle** %17, align 8
  %19 = bitcast %struct.tep_handle* %18 to %struct.cmdline_list*
  store %struct.cmdline_list* %19, %struct.cmdline_list** %3, align 8
  %20 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %21 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %20, i32 0, i32 19
  %22 = load %struct.tep_handle*, %struct.tep_handle** %21, align 8
  %23 = bitcast %struct.tep_handle* %22 to %struct.func_list*
  store %struct.func_list* %23, %struct.func_list** %5, align 8
  %24 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %25 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %24, i32 0, i32 18
  %26 = load %struct.tep_handle*, %struct.tep_handle** %25, align 8
  %27 = bitcast %struct.tep_handle* %26 to %struct.printk_list*
  store %struct.printk_list* %27, %struct.printk_list** %7, align 8
  %28 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %29 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %28, i32 0, i32 17
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %33 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %32, i32 0, i32 17
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  br label %261

37:                                               ; preds = %15
  %38 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %39 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %38, i32 0, i32 16
  %40 = load %struct.tep_handle*, %struct.tep_handle** %39, align 8
  %41 = icmp ne %struct.tep_handle* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %46 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %51 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %50, i32 0, i32 16
  %52 = load %struct.tep_handle*, %struct.tep_handle** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %52, i64 %54
  %56 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %55, i32 0, i32 15
  %57 = load %struct.tep_handle*, %struct.tep_handle** %56, align 8
  %58 = call i32 @free(%struct.tep_handle* %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %64 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %63, i32 0, i32 16
  %65 = load %struct.tep_handle*, %struct.tep_handle** %64, align 8
  %66 = call i32 @free(%struct.tep_handle* %65)
  br label %67

67:                                               ; preds = %62, %37
  br label %68

68:                                               ; preds = %71, %67
  %69 = load %struct.cmdline_list*, %struct.cmdline_list** %3, align 8
  %70 = icmp ne %struct.cmdline_list* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.cmdline_list*, %struct.cmdline_list** %3, align 8
  %73 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %72, i32 0, i32 7
  %74 = load %struct.cmdline_list*, %struct.cmdline_list** %73, align 8
  store %struct.cmdline_list* %74, %struct.cmdline_list** %4, align 8
  %75 = load %struct.cmdline_list*, %struct.cmdline_list** %3, align 8
  %76 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %75, i32 0, i32 15
  %77 = load %struct.cmdline_list*, %struct.cmdline_list** %76, align 8
  %78 = bitcast %struct.cmdline_list* %77 to %struct.tep_handle*
  %79 = call i32 @free(%struct.tep_handle* %78)
  %80 = load %struct.cmdline_list*, %struct.cmdline_list** %3, align 8
  %81 = bitcast %struct.cmdline_list* %80 to %struct.tep_handle*
  %82 = call i32 @free(%struct.tep_handle* %81)
  %83 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  store %struct.cmdline_list* %83, %struct.cmdline_list** %3, align 8
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %86 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %85, i32 0, i32 13
  %87 = load %struct.tep_handle*, %struct.tep_handle** %86, align 8
  %88 = icmp ne %struct.tep_handle* %87, null
  br i1 %88, label %89, label %124

89:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %93 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %92, i32 0, i32 14
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %90
  %98 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %99 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %98, i32 0, i32 13
  %100 = load %struct.tep_handle*, %struct.tep_handle** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %100, i64 %102
  %104 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %103, i32 0, i32 12
  %105 = load %struct.tep_handle*, %struct.tep_handle** %104, align 8
  %106 = call i32 @free(%struct.tep_handle* %105)
  %107 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %108 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %107, i32 0, i32 13
  %109 = load %struct.tep_handle*, %struct.tep_handle** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %109, i64 %111
  %113 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %112, i32 0, i32 11
  %114 = load %struct.tep_handle*, %struct.tep_handle** %113, align 8
  %115 = call i32 @free(%struct.tep_handle* %114)
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %90

119:                                              ; preds = %90
  %120 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %121 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %120, i32 0, i32 13
  %122 = load %struct.tep_handle*, %struct.tep_handle** %121, align 8
  %123 = call i32 @free(%struct.tep_handle* %122)
  br label %124

124:                                              ; preds = %119, %84
  br label %125

125:                                              ; preds = %128, %124
  %126 = load %struct.func_list*, %struct.func_list** %5, align 8
  %127 = icmp ne %struct.func_list* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load %struct.func_list*, %struct.func_list** %5, align 8
  %130 = getelementptr inbounds %struct.func_list, %struct.func_list* %129, i32 0, i32 7
  %131 = load %struct.func_list*, %struct.func_list** %130, align 8
  store %struct.func_list* %131, %struct.func_list** %6, align 8
  %132 = load %struct.func_list*, %struct.func_list** %5, align 8
  %133 = getelementptr inbounds %struct.func_list, %struct.func_list* %132, i32 0, i32 12
  %134 = load %struct.func_list*, %struct.func_list** %133, align 8
  %135 = bitcast %struct.func_list* %134 to %struct.tep_handle*
  %136 = call i32 @free(%struct.tep_handle* %135)
  %137 = load %struct.func_list*, %struct.func_list** %5, align 8
  %138 = getelementptr inbounds %struct.func_list, %struct.func_list* %137, i32 0, i32 11
  %139 = load %struct.func_list*, %struct.func_list** %138, align 8
  %140 = bitcast %struct.func_list* %139 to %struct.tep_handle*
  %141 = call i32 @free(%struct.tep_handle* %140)
  %142 = load %struct.func_list*, %struct.func_list** %5, align 8
  %143 = bitcast %struct.func_list* %142 to %struct.tep_handle*
  %144 = call i32 @free(%struct.tep_handle* %143)
  %145 = load %struct.func_list*, %struct.func_list** %6, align 8
  store %struct.func_list* %145, %struct.func_list** %5, align 8
  br label %125

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %152, %146
  %148 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %149 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %148, i32 0, i32 10
  %150 = load %struct.tep_function_handler*, %struct.tep_function_handler** %149, align 8
  %151 = icmp ne %struct.tep_function_handler* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %154 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %153, i32 0, i32 10
  %155 = load %struct.tep_function_handler*, %struct.tep_function_handler** %154, align 8
  store %struct.tep_function_handler* %155, %struct.tep_function_handler** %9, align 8
  %156 = load %struct.tep_function_handler*, %struct.tep_function_handler** %9, align 8
  %157 = getelementptr inbounds %struct.tep_function_handler, %struct.tep_function_handler* %156, i32 0, i32 0
  %158 = load %struct.tep_function_handler*, %struct.tep_function_handler** %157, align 8
  %159 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %160 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %159, i32 0, i32 10
  store %struct.tep_function_handler* %158, %struct.tep_function_handler** %160, align 8
  %161 = load %struct.tep_function_handler*, %struct.tep_function_handler** %9, align 8
  %162 = call i32 @free_func_handle(%struct.tep_function_handler* %161)
  br label %147

163:                                              ; preds = %147
  %164 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %165 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %164, i32 0, i32 8
  %166 = load %struct.tep_handle*, %struct.tep_handle** %165, align 8
  %167 = icmp ne %struct.tep_handle* %166, null
  br i1 %167, label %168, label %194

168:                                              ; preds = %163
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %186, %168
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %172 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %178 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %177, i32 0, i32 8
  %179 = load %struct.tep_handle*, %struct.tep_handle** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %179, i64 %181
  %183 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %182, i32 0, i32 6
  %184 = load %struct.tep_handle*, %struct.tep_handle** %183, align 8
  %185 = call i32 @free(%struct.tep_handle* %184)
  br label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %169

189:                                              ; preds = %169
  %190 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %191 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %190, i32 0, i32 8
  %192 = load %struct.tep_handle*, %struct.tep_handle** %191, align 8
  %193 = call i32 @free(%struct.tep_handle* %192)
  br label %194

194:                                              ; preds = %189, %163
  br label %195

195:                                              ; preds = %198, %194
  %196 = load %struct.printk_list*, %struct.printk_list** %7, align 8
  %197 = icmp ne %struct.printk_list* %196, null
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load %struct.printk_list*, %struct.printk_list** %7, align 8
  %200 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %199, i32 0, i32 7
  %201 = load %struct.printk_list*, %struct.printk_list** %200, align 8
  store %struct.printk_list* %201, %struct.printk_list** %8, align 8
  %202 = load %struct.printk_list*, %struct.printk_list** %7, align 8
  %203 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %202, i32 0, i32 6
  %204 = load %struct.printk_list*, %struct.printk_list** %203, align 8
  %205 = bitcast %struct.printk_list* %204 to %struct.tep_handle*
  %206 = call i32 @free(%struct.tep_handle* %205)
  %207 = load %struct.printk_list*, %struct.printk_list** %7, align 8
  %208 = bitcast %struct.printk_list* %207 to %struct.tep_handle*
  %209 = call i32 @free(%struct.tep_handle* %208)
  %210 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  store %struct.printk_list* %210, %struct.printk_list** %7, align 8
  br label %195

211:                                              ; preds = %195
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %226, %211
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %215 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %212
  %219 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %220 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %219, i32 0, i32 4
  %221 = load %struct.tep_handle*, %struct.tep_handle** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %221, i64 %223
  %225 = call i32 @tep_free_event(%struct.tep_handle* byval(%struct.tep_handle) align 8 %224)
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %212

229:                                              ; preds = %212
  br label %230

230:                                              ; preds = %235, %229
  %231 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %232 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %231, i32 0, i32 5
  %233 = load %struct.event_handler*, %struct.event_handler** %232, align 8
  %234 = icmp ne %struct.event_handler* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %237 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %236, i32 0, i32 5
  %238 = load %struct.event_handler*, %struct.event_handler** %237, align 8
  store %struct.event_handler* %238, %struct.event_handler** %10, align 8
  %239 = load %struct.event_handler*, %struct.event_handler** %10, align 8
  %240 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %239, i32 0, i32 0
  %241 = load %struct.event_handler*, %struct.event_handler** %240, align 8
  %242 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %243 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %242, i32 0, i32 5
  store %struct.event_handler* %241, %struct.event_handler** %243, align 8
  %244 = load %struct.event_handler*, %struct.event_handler** %10, align 8
  %245 = call i32 @free_handler(%struct.event_handler* %244)
  br label %230

246:                                              ; preds = %230
  %247 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %248 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %247, i32 0, i32 4
  %249 = load %struct.tep_handle*, %struct.tep_handle** %248, align 8
  %250 = call i32 @free(%struct.tep_handle* %249)
  %251 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %252 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %251, i32 0, i32 3
  %253 = load %struct.tep_handle*, %struct.tep_handle** %252, align 8
  %254 = call i32 @free(%struct.tep_handle* %253)
  %255 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %256 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %255, i32 0, i32 2
  %257 = load %struct.tep_handle*, %struct.tep_handle** %256, align 8
  %258 = call i32 @free(%struct.tep_handle* %257)
  %259 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %260 = call i32 @free(%struct.tep_handle* %259)
  br label %261

261:                                              ; preds = %246, %36, %14
  ret void
}

declare dso_local i32 @free(%struct.tep_handle*) #1

declare dso_local i32 @free_func_handle(%struct.tep_function_handler*) #1

declare dso_local i32 @tep_free_event(%struct.tep_handle* byval(%struct.tep_handle) align 8) #1

declare dso_local i32 @free_handler(%struct.event_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
