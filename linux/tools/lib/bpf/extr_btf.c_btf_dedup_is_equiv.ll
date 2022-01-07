; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_is_equiv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_is_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i64*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.btf_type** }
%struct.btf_type = type { i64, i64, i32 }
%struct.btf_array = type { i64, i64 }
%struct.btf_member = type { i64 }
%struct.btf_param = type { i64 }

@BTF_MAX_NR_TYPES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dedup*, i64, i64)* @btf_dedup_is_equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dedup_is_equiv(%struct.btf_dedup* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dedup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.btf_array*, align 8
  %18 = alloca %struct.btf_array*, align 8
  %19 = alloca %struct.btf_member*, align 8
  %20 = alloca %struct.btf_member*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.btf_param*, align 8
  %23 = alloca %struct.btf_param*, align 8
  %24 = alloca i64, align 8
  store %struct.btf_dedup* %0, %struct.btf_dedup** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @resolve_type_id(%struct.btf_dedup* %25, i64 %26)
  %28 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @resolve_type_id(%struct.btf_dedup* %28, i64 %29)
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %296

33:                                               ; preds = %3
  %34 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @resolve_fwd_id(%struct.btf_dedup* %34, i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %38 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @BTF_MAX_NR_TYPES, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %296

51:                                               ; preds = %33
  %52 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @btf_dedup_hypot_map_add(%struct.btf_dedup* %52, i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %296

60:                                               ; preds = %51
  %61 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %62 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.btf_type**, %struct.btf_type*** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %65, i64 %66
  %68 = load %struct.btf_type*, %struct.btf_type** %67, align 8
  store %struct.btf_type* %68, %struct.btf_type** %8, align 8
  %69 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %70 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.btf_type**, %struct.btf_type*** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %73, i64 %74
  %76 = load %struct.btf_type*, %struct.btf_type** %75, align 8
  store %struct.btf_type* %76, %struct.btf_type** %9, align 8
  %77 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %78 = call i64 @btf_kind(%struct.btf_type* %77)
  store i64 %78, i64* %11, align 8
  %79 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %80 = call i64 @btf_kind(%struct.btf_type* %79)
  store i64 %80, i64* %12, align 8
  %81 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %82 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %85 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %296

89:                                               ; preds = %60
  %90 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %91 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %11, align 8
  %97 = icmp eq i64 %96, 135
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, 135
  br i1 %100, label %101, label %121

101:                                              ; preds = %98, %95
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 135
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %15, align 8
  %110 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %111 = call i64 @btf_fwd_kind(%struct.btf_type* %110)
  store i64 %111, i64* %16, align 8
  br label %116

112:                                              ; preds = %105
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %15, align 8
  %114 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %115 = call i64 @btf_fwd_kind(%struct.btf_type* %114)
  store i64 %115, i64* %16, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %15, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %296

121:                                              ; preds = %101, %98, %89
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %296

126:                                              ; preds = %121
  %127 = load i64, i64* %11, align 8
  switch i64 %127, label %293 [
    i64 134, label %128
    i64 138, label %132
    i64 135, label %146
    i64 139, label %150
    i64 128, label %150
    i64 132, label %150
    i64 133, label %150
    i64 130, label %150
    i64 137, label %150
    i64 140, label %168
    i64 131, label %200
    i64 129, label %200
    i64 136, label %240
  ]

128:                                              ; preds = %126
  %129 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %130 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %131 = call i32 @btf_equal_int(%struct.btf_type* %129, %struct.btf_type* %130)
  store i32 %131, i32* %4, align 4
  br label %296

132:                                              ; preds = %126
  %133 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %134 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %140 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %141 = call i32 @btf_equal_enum(%struct.btf_type* %139, %struct.btf_type* %140)
  store i32 %141, i32* %4, align 4
  br label %296

142:                                              ; preds = %132
  %143 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %144 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %145 = call i32 @btf_compat_enum(%struct.btf_type* %143, %struct.btf_type* %144)
  store i32 %145, i32* %4, align 4
  br label %296

146:                                              ; preds = %126
  %147 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %148 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %149 = call i32 @btf_equal_common(%struct.btf_type* %147, %struct.btf_type* %148)
  store i32 %149, i32* %4, align 4
  br label %296

150:                                              ; preds = %126, %126, %126, %126, %126, %126
  %151 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %152 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %155 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %296

159:                                              ; preds = %150
  %160 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %161 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %162 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %165 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %160, i64 %163, i64 %166)
  store i32 %167, i32* %4, align 4
  br label %296

168:                                              ; preds = %126
  %169 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %170 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %171 = call i32 @btf_compat_array(%struct.btf_type* %169, %struct.btf_type* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %296

174:                                              ; preds = %168
  %175 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %176 = call %struct.btf_array* @btf_array(%struct.btf_type* %175)
  store %struct.btf_array* %176, %struct.btf_array** %17, align 8
  %177 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %178 = call %struct.btf_array* @btf_array(%struct.btf_type* %177)
  store %struct.btf_array* %178, %struct.btf_array** %18, align 8
  %179 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %180 = load %struct.btf_array*, %struct.btf_array** %17, align 8
  %181 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.btf_array*, %struct.btf_array** %18, align 8
  %184 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %179, i64 %182, i64 %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %174
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %4, align 4
  br label %296

191:                                              ; preds = %174
  %192 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %193 = load %struct.btf_array*, %struct.btf_array** %17, align 8
  %194 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.btf_array*, %struct.btf_array** %18, align 8
  %197 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %192, i64 %195, i64 %198)
  store i32 %199, i32* %4, align 4
  br label %296

200:                                              ; preds = %126, %126
  %201 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %202 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %203 = call i32 @btf_shallow_equal_struct(%struct.btf_type* %201, %struct.btf_type* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %296

206:                                              ; preds = %200
  %207 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %208 = call i64 @btf_vlen(%struct.btf_type* %207)
  store i64 %208, i64* %21, align 8
  %209 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %210 = call %struct.btf_member* @btf_members(%struct.btf_type* %209)
  store %struct.btf_member* %210, %struct.btf_member** %19, align 8
  %211 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %212 = call %struct.btf_member* @btf_members(%struct.btf_type* %211)
  store %struct.btf_member* %212, %struct.btf_member** %20, align 8
  store i32 0, i32* %13, align 4
  br label %213

213:                                              ; preds = %236, %206
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %21, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %213
  %219 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %220 = load %struct.btf_member*, %struct.btf_member** %19, align 8
  %221 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.btf_member*, %struct.btf_member** %20, align 8
  %224 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %219, i64 %222, i64 %225)
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %218
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %4, align 4
  br label %296

231:                                              ; preds = %218
  %232 = load %struct.btf_member*, %struct.btf_member** %19, align 8
  %233 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %232, i32 1
  store %struct.btf_member* %233, %struct.btf_member** %19, align 8
  %234 = load %struct.btf_member*, %struct.btf_member** %20, align 8
  %235 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %234, i32 1
  store %struct.btf_member* %235, %struct.btf_member** %20, align 8
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %213

239:                                              ; preds = %213
  store i32 1, i32* %4, align 4
  br label %296

240:                                              ; preds = %126
  %241 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %242 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %243 = call i32 @btf_compat_fnproto(%struct.btf_type* %241, %struct.btf_type* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  store i32 0, i32* %4, align 4
  br label %296

246:                                              ; preds = %240
  %247 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %248 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %249 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %252 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %247, i64 %250, i64 %253)
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %14, align 4
  %256 = icmp sle i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %246
  %258 = load i32, i32* %14, align 4
  store i32 %258, i32* %4, align 4
  br label %296

259:                                              ; preds = %246
  %260 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %261 = call i64 @btf_vlen(%struct.btf_type* %260)
  store i64 %261, i64* %24, align 8
  %262 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %263 = call %struct.btf_param* @btf_params(%struct.btf_type* %262)
  store %struct.btf_param* %263, %struct.btf_param** %22, align 8
  %264 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %265 = call %struct.btf_param* @btf_params(%struct.btf_type* %264)
  store %struct.btf_param* %265, %struct.btf_param** %23, align 8
  store i32 0, i32* %13, align 4
  br label %266

266:                                              ; preds = %289, %259
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %24, align 8
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %271, label %292

271:                                              ; preds = %266
  %272 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %273 = load %struct.btf_param*, %struct.btf_param** %22, align 8
  %274 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.btf_param*, %struct.btf_param** %23, align 8
  %277 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @btf_dedup_is_equiv(%struct.btf_dedup* %272, i64 %275, i64 %278)
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %14, align 4
  %281 = icmp sle i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %271
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %4, align 4
  br label %296

284:                                              ; preds = %271
  %285 = load %struct.btf_param*, %struct.btf_param** %22, align 8
  %286 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %285, i32 1
  store %struct.btf_param* %286, %struct.btf_param** %22, align 8
  %287 = load %struct.btf_param*, %struct.btf_param** %23, align 8
  %288 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %287, i32 1
  store %struct.btf_param* %288, %struct.btf_param** %23, align 8
  br label %289

289:                                              ; preds = %284
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %13, align 4
  br label %266

292:                                              ; preds = %266
  store i32 1, i32* %4, align 4
  br label %296

293:                                              ; preds = %126
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %293, %292, %282, %257, %245, %239, %229, %205, %191, %189, %173, %159, %158, %146, %142, %138, %128, %125, %116, %88, %57, %46, %32
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i64 @resolve_type_id(%struct.btf_dedup*, i64) #1

declare dso_local i64 @resolve_fwd_id(%struct.btf_dedup*, i64) #1

declare dso_local i64 @btf_dedup_hypot_map_add(%struct.btf_dedup*, i64, i64) #1

declare dso_local i64 @btf_kind(%struct.btf_type*) #1

declare dso_local i64 @btf_fwd_kind(%struct.btf_type*) #1

declare dso_local i32 @btf_equal_int(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i32 @btf_equal_enum(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i32 @btf_compat_enum(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i32 @btf_equal_common(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i32 @btf_compat_array(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @btf_shallow_equal_struct(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i64 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_compat_fnproto(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
