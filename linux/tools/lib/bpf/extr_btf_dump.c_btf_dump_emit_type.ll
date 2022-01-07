; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32, %struct.btf_dump_type_aux_state* }
%struct.btf_dump_type_aux_state = type { i64, i32 }
%struct.btf_type = type { i64, i32 }
%struct.btf_member = type { i64 }
%struct.btf_param = type { i64 }
%struct.TYPE_2__ = type { i64 }

@EMITTED = common dso_local global i64 0, align 8
@EMITTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"anonymous struct/union loop, id:[%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c";\0A\0A\00", align 1
@NOT_EMITTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, i64, i64)* @btf_dump_emit_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_type(%struct.btf_dump* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btf_dump*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btf_dump_type_aux_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btf_member*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btf_param*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %19 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %18, i32 0, i32 1
  %20 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %20, i64 %21
  store %struct.btf_dump_type_aux_state* %22, %struct.btf_dump_type_aux_state** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %27 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EMITTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %272

32:                                               ; preds = %3
  %33 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %34 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.btf_type* @btf__type_by_id(i32 %35, i64 %36)
  store %struct.btf_type* %37, %struct.btf_type** %9, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %39 = call i32 @btf_kind(%struct.btf_type* %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %41 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EMITTING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %32
  %46 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %47 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %272

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %90 [
    i32 131, label %53
    i32 129, label %53
    i32 130, label %75
  ]

53:                                               ; preds = %51, %51
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %272

58:                                               ; preds = %53
  %59 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %60 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %272

66:                                               ; preds = %58
  %67 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %70 = call i32 @btf_dump_emit_struct_fwd(%struct.btf_dump* %67, i64 %68, %struct.btf_type* %69)
  %71 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %72 = call i32 @btf_dump_printf(%struct.btf_dump* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %74 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %91

75:                                               ; preds = %51
  %76 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @btf_dump_is_blacklisted(%struct.btf_dump* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %84 = call i32 @btf_dump_emit_typedef_def(%struct.btf_dump* %81, i64 %82, %struct.btf_type* %83, i32 0)
  %85 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %86 = call i32 @btf_dump_printf(%struct.btf_dump* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %89 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %91

90:                                               ; preds = %51
  br label %91

91:                                               ; preds = %90, %87, %66
  br label %272

92:                                               ; preds = %32
  %93 = load i32, i32* %10, align 4
  switch i32 %93, label %271 [
    i32 134, label %94
    i32 137, label %98
    i32 133, label %112
    i32 128, label %112
    i32 138, label %112
    i32 132, label %112
    i32 139, label %118
    i32 135, label %125
    i32 130, label %135
    i32 131, label %164
    i32 129, label %164
    i32 136, label %245
  ]

94:                                               ; preds = %92
  %95 = load i64, i64* @EMITTED, align 8
  %96 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %97 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %272

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %105 = call i32 @btf_dump_emit_enum_def(%struct.btf_dump* %102, i64 %103, %struct.btf_type* %104, i32 0)
  %106 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %107 = call i32 @btf_dump_printf(%struct.btf_dump* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %98
  %109 = load i64, i64* @EMITTED, align 8
  %110 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %111 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %272

112:                                              ; preds = %92, %92, %92, %92
  %113 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %114 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %115 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %6, align 8
  call void @btf_dump_emit_type(%struct.btf_dump* %113, i64 %116, i64 %117)
  br label %272

118:                                              ; preds = %92
  %119 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %120 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %121 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %6, align 8
  call void @btf_dump_emit_type(%struct.btf_dump* %119, i64 %123, i64 %124)
  br label %272

125:                                              ; preds = %92
  %126 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %129 = call i32 @btf_dump_emit_fwd_def(%struct.btf_dump* %126, i64 %127, %struct.btf_type* %128)
  %130 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %131 = call i32 @btf_dump_printf(%struct.btf_dump* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i64, i64* @EMITTED, align 8
  %133 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %134 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %272

135:                                              ; preds = %92
  %136 = load i64, i64* @EMITTING, align 8
  %137 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %138 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %140 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %141 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %5, align 8
  call void @btf_dump_emit_type(%struct.btf_dump* %139, i64 %142, i64 %143)
  %144 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %145 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %135
  %149 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @btf_dump_is_blacklisted(%struct.btf_dump* %149, i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %157 = call i32 @btf_dump_emit_typedef_def(%struct.btf_dump* %154, i64 %155, %struct.btf_type* %156, i32 0)
  %158 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %159 = call i32 @btf_dump_printf(%struct.btf_dump* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %153, %148, %135
  %161 = load i64, i64* @EMITTED, align 8
  %162 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %163 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %272

164:                                              ; preds = %92, %92
  %165 = load i64, i64* @EMITTING, align 8
  %166 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %167 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %164
  %171 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %172 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %170, %164
  %176 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %177 = call %struct.btf_member* @btf_members(%struct.btf_type* %176)
  store %struct.btf_member* %177, %struct.btf_member** %11, align 8
  %178 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %179 = call i32 @btf_vlen(%struct.btf_type* %178)
  store i32 %179, i32* %12, align 4
  %180 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %181 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = load i64, i64* %6, align 8
  br label %188

186:                                              ; preds = %175
  %187 = load i64, i64* %5, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i64 [ %185, %184 ], [ %187, %186 ]
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %202, %188
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %197 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %198 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  call void @btf_dump_emit_type(%struct.btf_dump* %196, i64 %199, i64 %201)
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  %205 = load %struct.btf_member*, %struct.btf_member** %11, align 8
  %206 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %205, i32 1
  store %struct.btf_member* %206, %struct.btf_member** %11, align 8
  br label %191

207:                                              ; preds = %191
  br label %227

208:                                              ; preds = %170
  %209 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %210 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %226, label %213

213:                                              ; preds = %208
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* %6, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %213
  %218 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %219 = load i64, i64* %5, align 8
  %220 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %221 = call i32 @btf_dump_emit_struct_fwd(%struct.btf_dump* %218, i64 %219, %struct.btf_type* %220)
  %222 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %223 = call i32 @btf_dump_printf(%struct.btf_dump* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %224 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %225 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %224, i32 0, i32 1
  store i32 1, i32* %225, align 8
  br label %226

226:                                              ; preds = %217, %213, %208
  br label %227

227:                                              ; preds = %226, %207
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %227
  %231 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %232 = load i64, i64* %5, align 8
  %233 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %234 = call i32 @btf_dump_emit_struct_def(%struct.btf_dump* %231, i64 %232, %struct.btf_type* %233, i32 0)
  %235 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %236 = call i32 @btf_dump_printf(%struct.btf_dump* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %237 = load i64, i64* @EMITTED, align 8
  %238 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %239 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  br label %244

240:                                              ; preds = %227
  %241 = load i64, i64* @NOT_EMITTED, align 8
  %242 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %7, align 8
  %243 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  br label %244

244:                                              ; preds = %240, %230
  br label %272

245:                                              ; preds = %92
  %246 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %247 = call %struct.btf_param* @btf_params(%struct.btf_type* %246)
  store %struct.btf_param* %247, %struct.btf_param** %15, align 8
  %248 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %249 = call i32 @btf_vlen(%struct.btf_type* %248)
  store i32 %249, i32* %16, align 4
  %250 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %251 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %252 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %6, align 8
  call void @btf_dump_emit_type(%struct.btf_dump* %250, i64 %253, i64 %254)
  store i32 0, i32* %17, align 4
  br label %255

255:                                              ; preds = %265, %245
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %16, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %255
  %260 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %261 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %262 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %6, align 8
  call void @btf_dump_emit_type(%struct.btf_dump* %260, i64 %263, i64 %264)
  br label %265

265:                                              ; preds = %259
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  %268 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %269 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %268, i32 1
  store %struct.btf_param* %269, %struct.btf_param** %15, align 8
  br label %255

270:                                              ; preds = %255
  br label %272

271:                                              ; preds = %92
  br label %272

272:                                              ; preds = %31, %50, %57, %63, %91, %271, %270, %244, %160, %125, %118, %112, %108, %94
  ret void
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @pr_warning(i8*, i64) #1

declare dso_local i32 @btf_dump_emit_struct_fwd(%struct.btf_dump*, i64, %struct.btf_type*) #1

declare dso_local i32 @btf_dump_printf(%struct.btf_dump*, i8*) #1

declare dso_local i32 @btf_dump_is_blacklisted(%struct.btf_dump*, i64) #1

declare dso_local i32 @btf_dump_emit_typedef_def(%struct.btf_dump*, i64, %struct.btf_type*, i32) #1

declare dso_local i32 @btf_dump_emit_enum_def(%struct.btf_dump*, i64, %struct.btf_type*, i32) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_fwd_def(%struct.btf_dump*, i64, %struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_struct_def(%struct.btf_dump*, i64, %struct.btf_type*, i32) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
