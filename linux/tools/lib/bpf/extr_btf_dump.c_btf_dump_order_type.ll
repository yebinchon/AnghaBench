; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_order_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_order_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { %struct.btf_dump_type_aux_state*, i32 }
%struct.btf_dump_type_aux_state = type { i64, i32 }
%struct.btf_type = type { i64, i64 }
%struct.btf_member = type { i64 }
%struct.btf_param = type { i64 }
%struct.TYPE_2__ = type { i64 }

@ORDERED = common dso_local global i64 0, align 8
@ORDERING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"unsatisfiable type cycle, id:[%u]\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dump*, i64, i32)* @btf_dump_order_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_order_type(%struct.btf_dump* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf_dump_type_aux_state*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btf_member*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btf_param*, align 8
  %16 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %18 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %17, i32 0, i32 0
  %19 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %19, i64 %20
  store %struct.btf_dump_type_aux_state* %21, %struct.btf_dump_type_aux_state** %8, align 8
  %22 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %23 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ORDERED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %258

28:                                               ; preds = %3
  %29 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %30 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.btf_type* @btf__type_by_id(i32 %31, i64 %32)
  store %struct.btf_type* %33, %struct.btf_type** %9, align 8
  %34 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %35 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ORDERING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %28
  %40 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %41 = call i64 @btf_is_composite(%struct.btf_type* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %48 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %258

52:                                               ; preds = %46, %43, %39
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @ELOOP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %258

57:                                               ; preds = %28
  %58 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %59 = call i32 @btf_kind(%struct.btf_type* %58)
  switch i32 %59, label %255 [
    i32 135, label %60
    i32 134, label %64
    i32 142, label %74
    i32 132, label %82
    i32 130, label %82
    i32 139, label %137
    i32 136, label %137
    i32 131, label %160
    i32 128, label %194
    i32 141, label %194
    i32 133, label %194
    i32 137, label %201
    i32 138, label %247
    i32 129, label %247
    i32 140, label %247
  ]

60:                                               ; preds = %57
  %61 = load i64, i64* @ORDERED, align 8
  %62 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %63 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %258

64:                                               ; preds = %57
  %65 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %66 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %67 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @btf_dump_order_type(%struct.btf_dump* %65, i64 %68, i32 1)
  store i32 %69, i32* %11, align 4
  %70 = load i64, i64* @ORDERED, align 8
  %71 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %72 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %258

74:                                               ; preds = %57
  %75 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %76 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %77 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @btf_dump_order_type(%struct.btf_dump* %75, i64 %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %258

82:                                               ; preds = %57, %57
  %83 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %84 = call %struct.btf_member* @btf_members(%struct.btf_type* %83)
  store %struct.btf_member* %84, %struct.btf_member** %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %89 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %258

93:                                               ; preds = %87, %82
  %94 = load i64, i64* @ORDERING, align 8
  %95 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %96 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %98 = call i32 @btf_vlen(%struct.btf_type* %97)
  store i32 %98, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %114, %93
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %105 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %106 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @btf_dump_order_type(%struct.btf_dump* %104, i64 %107, i32 0)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %258

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %118 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %117, i32 1
  store %struct.btf_member* %118, %struct.btf_member** %13, align 8
  br label %99

119:                                              ; preds = %99
  %120 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %121 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @btf_dump_add_emit_queue_id(%struct.btf_dump* %125, i64 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %258

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i64, i64* @ORDERED, align 8
  %135 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %136 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  store i32 1, i32* %4, align 4
  br label %258

137:                                              ; preds = %57, %57
  %138 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %139 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %144 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @btf_dump_add_emit_queue_id(%struct.btf_dump* %148, i64 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %4, align 4
  br label %258

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i64, i64* @ORDERED, align 8
  %158 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %159 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  store i32 1, i32* %4, align 4
  br label %258

160:                                              ; preds = %57
  %161 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %162 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %163 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @btf_dump_order_type(%struct.btf_dump* %161, i64 %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* %4, align 4
  br label %258

171:                                              ; preds = %160
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %258

178:                                              ; preds = %174, %171
  %179 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @btf_dump_add_emit_queue_id(%struct.btf_dump* %179, i64 %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %4, align 4
  br label %258

186:                                              ; preds = %178
  %187 = load i64, i64* @ORDERED, align 8
  %188 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %189 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %188, i32 0, i32 0
  %190 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %190, i64 %191
  %193 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %192, i32 0, i32 0
  store i64 %187, i64* %193, align 8
  store i32 1, i32* %4, align 4
  br label %258

194:                                              ; preds = %57, %57, %57
  %195 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %196 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %197 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @btf_dump_order_type(%struct.btf_dump* %195, i64 %198, i32 %199)
  store i32 %200, i32* %4, align 4
  br label %258

201:                                              ; preds = %57
  %202 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %203 = call %struct.btf_param* @btf_params(%struct.btf_type* %202)
  store %struct.btf_param* %203, %struct.btf_param** %15, align 8
  %204 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %205 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %206 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @btf_dump_order_type(%struct.btf_dump* %204, i64 %207, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %201
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %4, align 4
  br label %258

214:                                              ; preds = %201
  %215 = load i32, i32* %11, align 4
  %216 = icmp sgt i32 %215, 0
  %217 = zext i1 %216 to i32
  store i32 %217, i32* %16, align 4
  %218 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %219 = call i32 @btf_vlen(%struct.btf_type* %218)
  store i32 %219, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %240, %214
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %220
  %225 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %226 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %227 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @btf_dump_order_type(%struct.btf_dump* %225, i64 %228, i32 %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %4, align 4
  br label %258

235:                                              ; preds = %224
  %236 = load i32, i32* %11, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 1, i32* %16, align 4
  br label %239

239:                                              ; preds = %238, %235
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  %243 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %244 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %243, i32 1
  store %struct.btf_param* %244, %struct.btf_param** %15, align 8
  br label %220

245:                                              ; preds = %220
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %4, align 4
  br label %258

247:                                              ; preds = %57, %57, %57
  %248 = load i64, i64* @ORDERED, align 8
  %249 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %250 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %249, i32 0, i32 0
  %251 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %250, align 8
  %252 = load i64, i64* %6, align 8
  %253 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %251, i64 %252
  %254 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %253, i32 0, i32 0
  store i64 %248, i64* %254, align 8
  store i32 0, i32* %4, align 4
  br label %258

255:                                              ; preds = %57
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %255, %247, %245, %233, %212, %194, %186, %184, %177, %169, %156, %153, %133, %130, %111, %92, %74, %64, %60, %52, %51, %27
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i64 @btf_is_composite(%struct.btf_type*) #1

declare dso_local i32 @pr_warning(i8*, i64) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_add_emit_queue_id(%struct.btf_dump*, i64) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
