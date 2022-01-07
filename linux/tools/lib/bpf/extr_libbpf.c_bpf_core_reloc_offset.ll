; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_reloc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_reloc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_offset_reloc = type { i32, i32, i32 }
%struct.btf = type { i32 }
%struct.hashmap = type { i32 }
%struct.bpf_core_spec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btf_type = type { i32 }
%struct.ids_vec = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"prog '%s': relo #%d: parsing [%d] %s + %s failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"prog '%s': relo #%d: spec is \00", align 1
@LIBBPF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"prog '%s': relo #%d: target candidate search failed for [%d] %s: %ld\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"prog '%s': relo #%d: matching candidate #%d %s against spec \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c": %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"prog '%s': relo #%d: matching error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"prog '%s': relo #%d: offset ambiguity: %u != %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"prog '%s': relo #%d: no matching targets found for [%d] %s + %s\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"prog '%s': relo #%d: failed to patch insn at offset %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, %struct.bpf_offset_reloc*, i32, %struct.btf*, %struct.btf*, %struct.hashmap*)* @bpf_core_reloc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_reloc_offset(%struct.bpf_program* %0, %struct.bpf_offset_reloc* %1, i32 %2, %struct.btf* %3, %struct.btf* %4, %struct.hashmap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_program*, align 8
  %9 = alloca %struct.bpf_offset_reloc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btf*, align 8
  %12 = alloca %struct.btf*, align 8
  %13 = alloca %struct.hashmap*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.bpf_core_spec, align 8
  %16 = alloca %struct.bpf_core_spec, align 8
  %17 = alloca %struct.bpf_core_spec, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.btf_type*, align 8
  %20 = alloca %struct.btf_type*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.ids_vec*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %8, align 8
  store %struct.bpf_offset_reloc* %1, %struct.bpf_offset_reloc** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.btf* %3, %struct.btf** %11, align 8
  store %struct.btf* %4, %struct.btf** %12, align 8
  store %struct.hashmap* %5, %struct.hashmap** %13, align 8
  %30 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %31 = call i8* @bpf_program__title(%struct.bpf_program* %30, i32 0)
  store i8* %31, i8** %14, align 8
  %32 = load %struct.bpf_offset_reloc*, %struct.bpf_offset_reloc** %9, align 8
  %33 = getelementptr inbounds %struct.bpf_offset_reloc, %struct.bpf_offset_reloc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @u32_as_hash_key(i32 %34)
  store i8* %35, i8** %18, align 8
  %36 = load %struct.bpf_offset_reloc*, %struct.bpf_offset_reloc** %9, align 8
  %37 = getelementptr inbounds %struct.bpf_offset_reloc, %struct.bpf_offset_reloc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %24, align 4
  %39 = load %struct.btf*, %struct.btf** %11, align 8
  %40 = load i32, i32* %24, align 4
  %41 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %39, i32 %40)
  store %struct.btf_type* %41, %struct.btf_type** %19, align 8
  %42 = load %struct.btf_type*, %struct.btf_type** %19, align 8
  %43 = icmp ne %struct.btf_type* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %6
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %258

47:                                               ; preds = %6
  %48 = load %struct.btf*, %struct.btf** %11, align 8
  %49 = load %struct.btf_type*, %struct.btf_type** %19, align 8
  %50 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @btf__name_by_offset(%struct.btf* %48, i32 %51)
  store i8* %52, i8** %21, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = call i64 @str_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %258

59:                                               ; preds = %47
  %60 = load %struct.btf*, %struct.btf** %11, align 8
  %61 = load %struct.bpf_offset_reloc*, %struct.bpf_offset_reloc** %9, align 8
  %62 = getelementptr inbounds %struct.bpf_offset_reloc, %struct.bpf_offset_reloc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @btf__name_by_offset(%struct.btf* %60, i32 %63)
  store i8* %64, i8** %26, align 8
  %65 = load i8*, i8** %26, align 8
  %66 = call i64 @str_is_empty(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %258

71:                                               ; preds = %59
  %72 = load %struct.btf*, %struct.btf** %11, align 8
  %73 = load i32, i32* %24, align 4
  %74 = load i8*, i8** %26, align 8
  %75 = call i32 @bpf_core_spec_parse(%struct.btf* %72, i32 %73, i8* %74, %struct.bpf_core_spec* %15)
  store i32 %75, i32* %29, align 4
  %76 = load i32, i32* %29, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i8*, i8** %21, align 8
  %83 = load i8*, i8** %26, align 8
  %84 = load i32, i32* %29, align 4
  %85 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %80, i32 %81, i8* %82, i8* %83, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %258

88:                                               ; preds = %71
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %89, i32 %90)
  %92 = load i32, i32* @LIBBPF_DEBUG, align 4
  %93 = call i32 @bpf_core_dump_spec(i32 %92, %struct.bpf_core_spec* %15)
  %94 = load i32, i32* @LIBBPF_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @libbpf_print(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.hashmap*, %struct.hashmap** %13, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = bitcast %struct.ids_vec** %23 to i8**
  %99 = call i32 @hashmap__find(%struct.hashmap* %96, i8* %97, i8** %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %88
  %102 = load %struct.btf*, %struct.btf** %11, align 8
  %103 = load i32, i32* %24, align 4
  %104 = load %struct.btf*, %struct.btf** %12, align 8
  %105 = call %struct.ids_vec* @bpf_core_find_cands(%struct.btf* %102, i32 %103, %struct.btf* %104)
  store %struct.ids_vec* %105, %struct.ids_vec** %23, align 8
  %106 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %107 = call i64 @IS_ERR(%struct.ids_vec* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i8*, i8** %21, align 8
  %114 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %115 = call i32 @PTR_ERR(%struct.ids_vec* %114)
  %116 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %110, i32 %111, i32 %112, i8* %113, i32 %115)
  %117 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %118 = call i32 @PTR_ERR(%struct.ids_vec* %117)
  store i32 %118, i32* %7, align 4
  br label %258

119:                                              ; preds = %101
  %120 = load %struct.hashmap*, %struct.hashmap** %13, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %123 = call i32 @hashmap__set(%struct.hashmap* %120, i8* %121, %struct.ids_vec* %122, i32* null, i32* null)
  store i32 %123, i32* %29, align 4
  %124 = load i32, i32* %29, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %128 = call i32 @bpf_core_free_cands(%struct.ids_vec* %127)
  %129 = load i32, i32* %29, align 4
  store i32 %129, i32* %7, align 4
  br label %258

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %88
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %132

132:                                              ; preds = %215, %131
  %133 = load i32, i32* %27, align 4
  %134 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %135 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %218

138:                                              ; preds = %132
  %139 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %140 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %27, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %25, align 4
  %146 = load %struct.btf*, %struct.btf** %12, align 8
  %147 = load i32, i32* %25, align 4
  %148 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %146, i32 %147)
  store %struct.btf_type* %148, %struct.btf_type** %20, align 8
  %149 = load %struct.btf*, %struct.btf** %12, align 8
  %150 = load %struct.btf_type*, %struct.btf_type** %20, align 8
  %151 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @btf__name_by_offset(%struct.btf* %149, i32 %152)
  store i8* %153, i8** %22, align 8
  %154 = load %struct.btf*, %struct.btf** %12, align 8
  %155 = load i32, i32* %25, align 4
  %156 = call i32 @bpf_core_spec_match(%struct.bpf_core_spec* %15, %struct.btf* %154, i32 %155, %struct.bpf_core_spec* %16)
  store i32 %156, i32* %29, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %27, align 4
  %160 = load i8*, i8** %22, align 8
  %161 = call i32 (i8*, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %157, i32 %158, i32 %159, i8* %160)
  %162 = load i32, i32* @LIBBPF_DEBUG, align 4
  %163 = call i32 @bpf_core_dump_spec(i32 %162, %struct.bpf_core_spec* %16)
  %164 = load i32, i32* @LIBBPF_DEBUG, align 4
  %165 = load i32, i32* %29, align 4
  %166 = call i32 (i32, i8*, ...) @libbpf_print(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %29, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %138
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %29, align 4
  %173 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %170, i32 %171, i32 %172)
  %174 = load i32, i32* %29, align 4
  store i32 %174, i32* %7, align 4
  br label %258

175:                                              ; preds = %138
  %176 = load i32, i32* %29, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %215

179:                                              ; preds = %175
  %180 = load i32, i32* %28, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = bitcast %struct.bpf_core_spec* %17 to i8*
  %184 = bitcast %struct.bpf_core_spec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 16, i1 false)
  br label %202

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %16, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %17, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load i8*, i8** %14, align 8
  %193 = load i32, i32* %10, align 4
  %194 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %16, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %17, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %192, i32 %193, i32 %195, i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %7, align 4
  br label %258

201:                                              ; preds = %185
  br label %202

202:                                              ; preds = %201, %182
  %203 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %16, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %209 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %28, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %28, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %207, i32* %214, align 4
  br label %215

215:                                              ; preds = %202, %178
  %216 = load i32, i32* %27, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %27, align 4
  br label %132

218:                                              ; preds = %132
  %219 = load i32, i32* %28, align 4
  %220 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %221 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.ids_vec*, %struct.ids_vec** %23, align 8
  %223 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %218
  %227 = load i8*, i8** %14, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %24, align 4
  %230 = load i8*, i8** %21, align 8
  %231 = load i8*, i8** %26, align 8
  %232 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* %227, i32 %228, i32 %229, i8* %230, i8* %231)
  %233 = load i32, i32* @ESRCH, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %7, align 4
  br label %258

235:                                              ; preds = %218
  %236 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %237 = load %struct.bpf_offset_reloc*, %struct.bpf_offset_reloc** %9, align 8
  %238 = getelementptr inbounds %struct.bpf_offset_reloc, %struct.bpf_offset_reloc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %15, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %17, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @bpf_core_reloc_insn(%struct.bpf_program* %236, i32 %239, i32 %241, i32 %243)
  store i32 %244, i32* %29, align 4
  %245 = load i32, i32* %29, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %235
  %248 = load i8*, i8** %14, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.bpf_offset_reloc*, %struct.bpf_offset_reloc** %9, align 8
  %251 = getelementptr inbounds %struct.bpf_offset_reloc, %struct.bpf_offset_reloc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %29, align 4
  %254 = call i32 (i8*, i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i8* %248, i32 %249, i32 %252, i32 %253)
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %7, align 4
  br label %258

257:                                              ; preds = %235
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %257, %247, %226, %191, %169, %126, %109, %78, %68, %56, %44
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local i8* @bpf_program__title(%struct.bpf_program*, i32) #1

declare dso_local i8* @u32_as_hash_key(i32) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i64 @str_is_empty(i8*) #1

declare dso_local i32 @bpf_core_spec_parse(%struct.btf*, i32, i8*, %struct.bpf_core_spec*) #1

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, ...) #1

declare dso_local i32 @bpf_core_dump_spec(i32, %struct.bpf_core_spec*) #1

declare dso_local i32 @libbpf_print(i32, i8*, ...) #1

declare dso_local i32 @hashmap__find(%struct.hashmap*, i8*, i8**) #1

declare dso_local %struct.ids_vec* @bpf_core_find_cands(%struct.btf*, i32, %struct.btf*) #1

declare dso_local i64 @IS_ERR(%struct.ids_vec*) #1

declare dso_local i32 @PTR_ERR(%struct.ids_vec*) #1

declare dso_local i32 @hashmap__set(%struct.hashmap*, i8*, %struct.ids_vec*, i32*, i32*) #1

declare dso_local i32 @bpf_core_free_cands(%struct.ids_vec*) #1

declare dso_local i32 @bpf_core_spec_match(%struct.bpf_core_spec*, %struct.btf*, i32, %struct.bpf_core_spec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bpf_core_reloc_insn(%struct.bpf_program*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
