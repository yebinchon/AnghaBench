; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_spec_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_spec_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.bpf_core_spec = type { i32, i32*, i64, i32, %struct.TYPE_2__*, %struct.btf* }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32, i64 }
%struct.btf_array = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@BPF_CORE_SPEC_MAX_LEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"relo for [%u] %s (at idx %d) captures type [%d] of unexpected kind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32, i8*, %struct.bpf_core_spec*)* @bpf_core_spec_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_spec_parse(%struct.btf* %0, i32 %1, i8* %2, %struct.bpf_core_spec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bpf_core_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btf_type*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btf_member*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btf_array*, align 8
  store %struct.btf* %0, %struct.btf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.bpf_core_spec* %3, %struct.bpf_core_spec** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @str_is_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 58
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %325

31:                                               ; preds = %23
  %32 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %33 = call i32 @memset(%struct.bpf_core_spec* %32, i32 0, i32 48)
  %34 = load %struct.btf*, %struct.btf** %6, align 8
  %35 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %36 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %35, i32 0, i32 5
  store %struct.btf* %34, %struct.btf** %36, align 8
  br label %37

37:                                               ; preds = %65, %31
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %325

56:                                               ; preds = %49
  %57 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %58 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BPF_CORE_SPEC_MAX_LEN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @E2BIG, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %325

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %72 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %75 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32 %70, i32* %79, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %82 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %325

88:                                               ; preds = %80
  %89 = load %struct.btf*, %struct.btf** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %89, i32 %90, i32* %15)
  store %struct.btf_type* %91, %struct.btf_type** %13, align 8
  %92 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %93 = icmp ne %struct.btf_type* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %325

97:                                               ; preds = %88
  %98 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %99 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %105 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %111 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %110, i32 0, i32 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 4
  %115 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %116 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.btf*, %struct.btf** %6, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @btf__resolve_size(%struct.btf* %119, i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %97
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %5, align 4
  br label %325

126:                                              ; preds = %97
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %131 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %321, %126
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %135 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %324

138:                                              ; preds = %132
  %139 = load %struct.btf*, %struct.btf** %6, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %139, i32 %140, i32* %15)
  store %struct.btf_type* %141, %struct.btf_type** %13, align 8
  %142 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %143 = icmp ne %struct.btf_type* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %325

147:                                              ; preds = %138
  %148 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %149 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %156 = call i64 @btf_is_composite(%struct.btf_type* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %248

158:                                              ; preds = %147
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %161 = call i32 @btf_vlen(%struct.btf_type* %160)
  %162 = icmp sge i32 %159, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %325

166:                                              ; preds = %158
  %167 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i64 @btf_member_bitfield_size(%struct.btf_type* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %325

174:                                              ; preds = %166
  %175 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @btf_member_bit_offset(%struct.btf_type* %175, i32 %176)
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = srem i32 %178, 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %325

184:                                              ; preds = %174
  %185 = load i32, i32* %18, align 4
  %186 = sdiv i32 %185, 8
  %187 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %188 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %192 = call %struct.btf_member* @btf_members(%struct.btf_type* %191)
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %192, i64 %194
  store %struct.btf_member* %195, %struct.btf_member** %17, align 8
  %196 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %197 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %244

200:                                              ; preds = %184
  %201 = load %struct.btf*, %struct.btf** %6, align 8
  %202 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %203 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @btf__name_by_offset(%struct.btf* %201, i64 %204)
  store i8* %205, i8** %14, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = call i64 @str_is_empty(i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %325

212:                                              ; preds = %200
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %215 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %214, i32 0, i32 4
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %218 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  store i32 %213, i32* %221, align 8
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %224 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %223, i32 0, i32 4
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %227 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  store i32 %222, i32* %230, align 4
  %231 = load i8*, i8** %14, align 8
  %232 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %233 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %232, i32 0, i32 4
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %236 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  store i8* %231, i8** %239, align 8
  %240 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %241 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %241, align 8
  br label %244

244:                                              ; preds = %212, %184
  %245 = load %struct.btf_member*, %struct.btf_member** %17, align 8
  %246 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %15, align 4
  br label %320

248:                                              ; preds = %147
  %249 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %250 = call i64 @btf_is_array(%struct.btf_type* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %309

252:                                              ; preds = %248
  %253 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %254 = call %struct.btf_array* @btf_array(%struct.btf_type* %253)
  store %struct.btf_array* %254, %struct.btf_array** %19, align 8
  %255 = load %struct.btf*, %struct.btf** %6, align 8
  %256 = load %struct.btf_array*, %struct.btf_array** %19, align 8
  %257 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %255, i32 %258, i32* %15)
  store %struct.btf_type* %259, %struct.btf_type** %13, align 8
  %260 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %261 = icmp ne %struct.btf_type* %260, null
  br i1 %261, label %262, label %268

262:                                              ; preds = %252
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.btf_array*, %struct.btf_array** %19, align 8
  %265 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp sge i32 %263, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262, %252
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %5, align 4
  br label %325

271:                                              ; preds = %262
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %274 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %273, i32 0, i32 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %277 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  store i32 %272, i32* %280, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %283 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %282, i32 0, i32 4
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %286 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  store i32 %281, i32* %289, align 4
  %290 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %291 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %291, align 8
  %294 = load %struct.btf*, %struct.btf** %6, align 8
  %295 = load i32, i32* %15, align 4
  %296 = call i32 @btf__resolve_size(%struct.btf* %294, i32 %295)
  store i32 %296, i32* %16, align 4
  %297 = load i32, i32* %16, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %271
  %300 = load i32, i32* %16, align 4
  store i32 %300, i32* %5, align 4
  br label %325

301:                                              ; preds = %271
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %16, align 4
  %304 = mul nsw i32 %302, %303
  %305 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %306 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %319

309:                                              ; preds = %248
  %310 = load i32, i32* %7, align 4
  %311 = load i8*, i8** %8, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %315 = call i32 @btf_kind(%struct.btf_type* %314)
  %316 = call i32 @pr_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %310, i8* %311, i32 %312, i32 %313, i32 %315)
  %317 = load i32, i32* @EINVAL, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %5, align 4
  br label %325

319:                                              ; preds = %301
  br label %320

320:                                              ; preds = %319, %244
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %12, align 4
  br label %132

324:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %325

325:                                              ; preds = %324, %309, %299, %268, %209, %181, %171, %163, %144, %124, %94, %85, %62, %53, %28
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

declare dso_local i64 @str_is_empty(i8*) #1

declare dso_local i32 @memset(%struct.bpf_core_spec*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local %struct.btf_type* @skip_mods_and_typedefs(%struct.btf*, i32, i32*) #1

declare dso_local i32 @btf__resolve_size(%struct.btf*, i32) #1

declare dso_local i64 @btf_is_composite(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_member_bitfield_size(%struct.btf_type*, i32) #1

declare dso_local i32 @btf_member_bit_offset(%struct.btf_type*, i32) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i64) #1

declare dso_local i64 @btf_is_array(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
