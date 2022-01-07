; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, %struct.vm_area_struct*, %struct.anon_vma*, %struct.file*, %struct.mm_struct* }
%struct.anon_vma = type { i32 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { i32 }
%struct.mm_struct = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vma_adjust(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, %struct.vm_area_struct* %4, %struct.vm_area_struct* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca %struct.address_space*, align 8
  %18 = alloca %struct.rb_root_cached*, align 8
  %19 = alloca %struct.anon_vma*, align 8
  %20 = alloca %struct.file*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.vm_area_struct*, align 8
  %26 = alloca %struct.vm_area_struct*, align 8
  %27 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %5, %struct.vm_area_struct** %13, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 6
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %14, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %32, align 8
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %15, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %16, align 8
  store %struct.address_space* null, %struct.address_space** %17, align 8
  store %struct.rb_root_cached* null, %struct.rb_root_cached** %18, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %19, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 5
  %37 = load %struct.file*, %struct.file** %36, align 8
  store %struct.file* %37, %struct.file** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %39 = icmp ne %struct.vm_area_struct* %38, null
  br i1 %39, label %40, label %201

40:                                               ; preds = %6
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %42 = icmp ne %struct.vm_area_struct* %41, null
  br i1 %42, label %201, label %43

43:                                               ; preds = %40
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %25, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %26, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %128

49:                                               ; preds = %43
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %52 = icmp eq %struct.vm_area_struct* %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @VM_WARN_ON(i32 %59)
  store i32 3, i32* %24, align 4
  %61 = load %struct.file*, %struct.file** %20, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 5
  %64 = load %struct.file*, %struct.file** %63, align 8
  %65 = icmp ne %struct.file* %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @VM_WARN_ON(i32 %66)
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %70 = call i32 @swap(%struct.vm_area_struct* %68, %struct.vm_area_struct* %69)
  br label %113

71:                                               ; preds = %49
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %74 = icmp ne %struct.vm_area_struct* %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @VM_WARN_ON(i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = add nsw i32 1, %82
  store i32 %83, i32* %24, align 4
  %84 = load i32, i32* %24, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %94

86:                                               ; preds = %71
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 3
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %89, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %87, %92
  br label %94

94:                                               ; preds = %86, %71
  %95 = phi i1 [ false, %71 ], [ %93, %86 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @VM_WARN_ON(i32 %96)
  %98 = load i32, i32* %24, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br label %106

106:                                              ; preds = %100, %94
  %107 = phi i1 [ false, %94 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @VM_WARN_ON(i32 %108)
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %106, %53
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %114, %struct.vm_area_struct** %25, align 8
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %115, %struct.vm_area_struct** %26, align 8
  %116 = load i32, i32* %24, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 4
  %121 = load %struct.anon_vma*, %struct.anon_vma** %120, align 8
  %122 = icmp ne %struct.anon_vma* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 3
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %125, align 8
  store %struct.vm_area_struct* %126, %struct.vm_area_struct** %25, align 8
  br label %127

127:                                              ; preds = %123, %118, %113
  br label %173

128:                                              ; preds = %43
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ugt i64 %129, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %128
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %137 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %135, %138
  %140 = load i64, i64* @PAGE_SHIFT, align 8
  %141 = lshr i64 %139, %140
  store i64 %141, i64* %23, align 8
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %142, %struct.vm_area_struct** %25, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %143, %struct.vm_area_struct** %26, align 8
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  %146 = icmp ne %struct.vm_area_struct* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @VM_WARN_ON(i32 %147)
  br label %172

149:                                              ; preds = %128
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %152 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = sub i64 %158, %159
  %161 = load i64, i64* @PAGE_SHIFT, align 8
  %162 = lshr i64 %160, %161
  %163 = sub i64 0, %162
  store i64 %163, i64* %23, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %164, %struct.vm_area_struct** %25, align 8
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %165, %struct.vm_area_struct** %26, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  %168 = icmp ne %struct.vm_area_struct* %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @VM_WARN_ON(i32 %169)
  br label %171

171:                                              ; preds = %155, %149
  br label %172

172:                                              ; preds = %171, %134
  br label %173

173:                                              ; preds = %172, %127
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  %175 = icmp ne %struct.vm_area_struct* %174, null
  br i1 %175, label %176, label %200

176:                                              ; preds = %173
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 4
  %179 = load %struct.anon_vma*, %struct.anon_vma** %178, align 8
  %180 = icmp ne %struct.anon_vma* %179, null
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  %183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %182, i32 0, i32 4
  %184 = load %struct.anon_vma*, %struct.anon_vma** %183, align 8
  %185 = icmp ne %struct.anon_vma* %184, null
  br i1 %185, label %200, label %186

186:                                              ; preds = %181
  %187 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  %188 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %187, i32 0, i32 4
  %189 = load %struct.anon_vma*, %struct.anon_vma** %188, align 8
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  %191 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %190, i32 0, i32 4
  store %struct.anon_vma* %189, %struct.anon_vma** %191, align 8
  %192 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  %194 = call i32 @anon_vma_clone(%struct.vm_area_struct* %192, %struct.vm_area_struct* %193)
  store i32 %194, i32* %27, align 4
  %195 = load i32, i32* %27, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = load i32, i32* %27, align 4
  store i32 %198, i32* %7, align 4
  br label %530

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %181, %176, %173
  br label %201

201:                                              ; preds = %200, %40, %6
  br label %202

202:                                              ; preds = %497, %201
  %203 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %23, align 8
  %207 = call i32 @vma_adjust_trans_huge(%struct.vm_area_struct* %203, i64 %204, i64 %205, i64 %206)
  %208 = load %struct.file*, %struct.file** %20, align 8
  %209 = icmp ne %struct.file* %208, null
  br i1 %209, label %210, label %244

210:                                              ; preds = %202
  %211 = load %struct.file*, %struct.file** %20, align 8
  %212 = getelementptr inbounds %struct.file, %struct.file* %211, i32 0, i32 0
  %213 = load %struct.address_space*, %struct.address_space** %212, align 8
  store %struct.address_space* %213, %struct.address_space** %17, align 8
  %214 = load %struct.address_space*, %struct.address_space** %17, align 8
  %215 = getelementptr inbounds %struct.address_space, %struct.address_space* %214, i32 0, i32 0
  store %struct.rb_root_cached* %215, %struct.rb_root_cached** %18, align 8
  %216 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %218 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %221 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @uprobe_munmap(%struct.vm_area_struct* %216, i64 %219, i64 %222)
  %224 = load i64, i64* %23, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %210
  %227 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %228 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %229 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %232 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @uprobe_munmap(%struct.vm_area_struct* %227, i64 %230, i64 %233)
  br label %235

235:                                              ; preds = %226, %210
  %236 = load %struct.address_space*, %struct.address_space** %17, align 8
  %237 = call i32 @i_mmap_lock_write(%struct.address_space* %236)
  %238 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %239 = icmp ne %struct.vm_area_struct* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %242 = call i32 @__vma_link_file(%struct.vm_area_struct* %241)
  br label %243

243:                                              ; preds = %240, %235
  br label %244

244:                                              ; preds = %243, %202
  %245 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %246 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %245, i32 0, i32 4
  %247 = load %struct.anon_vma*, %struct.anon_vma** %246, align 8
  store %struct.anon_vma* %247, %struct.anon_vma** %19, align 8
  %248 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %249 = icmp ne %struct.anon_vma* %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %244
  %251 = load i64, i64* %23, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %255 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %254, i32 0, i32 4
  %256 = load %struct.anon_vma*, %struct.anon_vma** %255, align 8
  store %struct.anon_vma* %256, %struct.anon_vma** %19, align 8
  br label %257

257:                                              ; preds = %253, %250, %244
  %258 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %259 = icmp ne %struct.anon_vma* %258, null
  br i1 %259, label %260, label %288

260:                                              ; preds = %257
  %261 = load i64, i64* %23, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %265 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %264, i32 0, i32 4
  %266 = load %struct.anon_vma*, %struct.anon_vma** %265, align 8
  %267 = icmp ne %struct.anon_vma* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %270 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %271 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %270, i32 0, i32 4
  %272 = load %struct.anon_vma*, %struct.anon_vma** %271, align 8
  %273 = icmp ne %struct.anon_vma* %269, %272
  br label %274

274:                                              ; preds = %268, %263, %260
  %275 = phi i1 [ false, %263 ], [ false, %260 ], [ %273, %268 ]
  %276 = zext i1 %275 to i32
  %277 = call i32 @VM_WARN_ON(i32 %276)
  %278 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %279 = call i32 @anon_vma_lock_write(%struct.anon_vma* %278)
  %280 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %281 = call i32 @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* %280)
  %282 = load i64, i64* %23, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %274
  %285 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %286 = call i32 @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* %285)
  br label %287

287:                                              ; preds = %284, %274
  br label %288

288:                                              ; preds = %287, %257
  %289 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %290 = icmp ne %struct.rb_root_cached* %289, null
  br i1 %290, label %291, label %304

291:                                              ; preds = %288
  %292 = load %struct.address_space*, %struct.address_space** %17, align 8
  %293 = call i32 @flush_dcache_mmap_lock(%struct.address_space* %292)
  %294 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %295 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %296 = call i32 @vma_interval_tree_remove(%struct.vm_area_struct* %294, %struct.rb_root_cached* %295)
  %297 = load i64, i64* %23, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %291
  %300 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %301 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %302 = call i32 @vma_interval_tree_remove(%struct.vm_area_struct* %300, %struct.rb_root_cached* %301)
  br label %303

303:                                              ; preds = %299, %291
  br label %304

304:                                              ; preds = %303, %288
  %305 = load i64, i64* %9, align 8
  %306 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %307 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %305, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load i64, i64* %9, align 8
  %312 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %313 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %312, i32 0, i32 1
  store i64 %311, i64* %313, align 8
  store i32 1, i32* %21, align 4
  br label %314

314:                                              ; preds = %310, %304
  %315 = load i64, i64* %10, align 8
  %316 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %317 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %315, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i64, i64* %10, align 8
  %322 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %323 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  store i32 1, i32* %22, align 4
  br label %324

324:                                              ; preds = %320, %314
  %325 = load i64, i64* %11, align 8
  %326 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %327 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  %328 = load i64, i64* %23, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %324
  %331 = load i64, i64* %23, align 8
  %332 = load i64, i64* @PAGE_SHIFT, align 8
  %333 = shl i64 %331, %332
  %334 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %335 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = add i64 %336, %333
  store i64 %337, i64* %335, align 8
  %338 = load i64, i64* %23, align 8
  %339 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %340 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %341, %338
  store i64 %342, i64* %340, align 8
  br label %343

343:                                              ; preds = %330, %324
  %344 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %345 = icmp ne %struct.rb_root_cached* %344, null
  br i1 %345, label %346, label %359

346:                                              ; preds = %343
  %347 = load i64, i64* %23, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %351 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %352 = call i32 @vma_interval_tree_insert(%struct.vm_area_struct* %350, %struct.rb_root_cached* %351)
  br label %353

353:                                              ; preds = %349, %346
  %354 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %355 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %356 = call i32 @vma_interval_tree_insert(%struct.vm_area_struct* %354, %struct.rb_root_cached* %355)
  %357 = load %struct.address_space*, %struct.address_space** %17, align 8
  %358 = call i32 @flush_dcache_mmap_unlock(%struct.address_space* %357)
  br label %359

359:                                              ; preds = %353, %343
  %360 = load i32, i32* %24, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %384

362:                                              ; preds = %359
  %363 = load i32, i32* %24, align 4
  %364 = icmp ne i32 %363, 3
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %367 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %368 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %369 = call i32 @__vma_unlink_prev(%struct.mm_struct* %366, %struct.vm_area_struct* %367, %struct.vm_area_struct* %368)
  br label %375

370:                                              ; preds = %362
  %371 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %372 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %373 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %374 = call i32 @__vma_unlink_common(%struct.mm_struct* %371, %struct.vm_area_struct* %372, i32* null, i32 0, %struct.vm_area_struct* %373)
  br label %375

375:                                              ; preds = %370, %365
  %376 = load %struct.file*, %struct.file** %20, align 8
  %377 = icmp ne %struct.file* %376, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %380 = load %struct.file*, %struct.file** %20, align 8
  %381 = load %struct.address_space*, %struct.address_space** %17, align 8
  %382 = call i32 @__remove_shared_vm_struct(%struct.vm_area_struct* %379, %struct.file* %380, %struct.address_space* %381)
  br label %383

383:                                              ; preds = %378, %375
  br label %418

384:                                              ; preds = %359
  %385 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %386 = icmp ne %struct.vm_area_struct* %385, null
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %389 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %390 = call i32 @__insert_vm_struct(%struct.mm_struct* %388, %struct.vm_area_struct* %389)
  br label %417

391:                                              ; preds = %384
  %392 = load i32, i32* %21, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %391
  %395 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %396 = call i32 @vma_gap_update(%struct.vm_area_struct* %395)
  br label %397

397:                                              ; preds = %394, %391
  %398 = load i32, i32* %22, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %416

400:                                              ; preds = %397
  %401 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %402 = icmp ne %struct.vm_area_struct* %401, null
  br i1 %402, label %408, label %403

403:                                              ; preds = %400
  %404 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %405 = call i64 @vm_end_gap(%struct.vm_area_struct* %404)
  %406 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %407 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %406, i32 0, i32 0
  store i64 %405, i64* %407, align 8
  br label %415

408:                                              ; preds = %400
  %409 = load i64, i64* %23, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %408
  %412 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %413 = call i32 @vma_gap_update(%struct.vm_area_struct* %412)
  br label %414

414:                                              ; preds = %411, %408
  br label %415

415:                                              ; preds = %414, %403
  br label %416

416:                                              ; preds = %415, %397
  br label %417

417:                                              ; preds = %416, %387
  br label %418

418:                                              ; preds = %417, %383
  %419 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %420 = icmp ne %struct.anon_vma* %419, null
  br i1 %420, label %421, label %432

421:                                              ; preds = %418
  %422 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %423 = call i32 @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* %422)
  %424 = load i64, i64* %23, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %428 = call i32 @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* %427)
  br label %429

429:                                              ; preds = %426, %421
  %430 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %431 = call i32 @anon_vma_unlock_write(%struct.anon_vma* %430)
  br label %432

432:                                              ; preds = %429, %418
  %433 = load %struct.address_space*, %struct.address_space** %17, align 8
  %434 = icmp ne %struct.address_space* %433, null
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load %struct.address_space*, %struct.address_space** %17, align 8
  %437 = call i32 @i_mmap_unlock_write(%struct.address_space* %436)
  br label %438

438:                                              ; preds = %435, %432
  %439 = load %struct.rb_root_cached*, %struct.rb_root_cached** %18, align 8
  %440 = icmp ne %struct.rb_root_cached* %439, null
  br i1 %440, label %441, label %450

441:                                              ; preds = %438
  %442 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %443 = call i32 @uprobe_mmap(%struct.vm_area_struct* %442)
  %444 = load i64, i64* %23, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %448 = call i32 @uprobe_mmap(%struct.vm_area_struct* %447)
  br label %449

449:                                              ; preds = %446, %441
  br label %450

450:                                              ; preds = %449, %438
  %451 = load i32, i32* %24, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %518

453:                                              ; preds = %450
  %454 = load %struct.file*, %struct.file** %20, align 8
  %455 = icmp ne %struct.file* %454, null
  br i1 %455, label %456, label %467

456:                                              ; preds = %453
  %457 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %458 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %459 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %462 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = call i32 @uprobe_munmap(%struct.vm_area_struct* %457, i64 %460, i64 %463)
  %465 = load %struct.file*, %struct.file** %20, align 8
  %466 = call i32 @fput(%struct.file* %465)
  br label %467

467:                                              ; preds = %456, %453
  %468 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %469 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %468, i32 0, i32 4
  %470 = load %struct.anon_vma*, %struct.anon_vma** %469, align 8
  %471 = icmp ne %struct.anon_vma* %470, null
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %474 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %475 = call i32 @anon_vma_merge(%struct.vm_area_struct* %473, %struct.vm_area_struct* %474)
  br label %476

476:                                              ; preds = %472, %467
  %477 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %478 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %478, align 8
  %481 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %482 = call i32 @vma_policy(%struct.vm_area_struct* %481)
  %483 = call i32 @mpol_put(i32 %482)
  %484 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %485 = call i32 @vm_area_free(%struct.vm_area_struct* %484)
  %486 = load i32, i32* %24, align 4
  %487 = icmp ne i32 %486, 3
  br i1 %487, label %488, label %492

488:                                              ; preds = %476
  %489 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %490 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %489, i32 0, i32 3
  %491 = load %struct.vm_area_struct*, %struct.vm_area_struct** %490, align 8
  store %struct.vm_area_struct* %491, %struct.vm_area_struct** %15, align 8
  br label %494

492:                                              ; preds = %476
  %493 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %493, %struct.vm_area_struct** %15, align 8
  br label %494

494:                                              ; preds = %492, %488
  %495 = load i32, i32* %24, align 4
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %497, label %501

497:                                              ; preds = %494
  store i32 1, i32* %24, align 4
  %498 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %499 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %10, align 8
  br label %202

501:                                              ; preds = %494
  %502 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %503 = icmp ne %struct.vm_area_struct* %502, null
  br i1 %503, label %504, label %507

504:                                              ; preds = %501
  %505 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %506 = call i32 @vma_gap_update(%struct.vm_area_struct* %505)
  br label %516

507:                                              ; preds = %501
  %508 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %509 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %512 = call i64 @vm_end_gap(%struct.vm_area_struct* %511)
  %513 = icmp ne i64 %510, %512
  %514 = zext i1 %513 to i32
  %515 = call i32 @VM_WARN_ON(i32 %514)
  br label %516

516:                                              ; preds = %507, %504
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517, %450
  %519 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %520 = icmp ne %struct.vm_area_struct* %519, null
  br i1 %520, label %521, label %527

521:                                              ; preds = %518
  %522 = load %struct.file*, %struct.file** %20, align 8
  %523 = icmp ne %struct.file* %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %521
  %525 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %526 = call i32 @uprobe_mmap(%struct.vm_area_struct* %525)
  br label %527

527:                                              ; preds = %524, %521, %518
  %528 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %529 = call i32 @validate_mm(%struct.mm_struct* %528)
  store i32 0, i32* %7, align 4
  br label %530

530:                                              ; preds = %527, %197
  %531 = load i32, i32* %7, align 4
  ret i32 %531
}

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i32 @swap(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @vma_adjust_trans_huge(%struct.vm_area_struct*, i64, i64, i64) #1

declare dso_local i32 @uprobe_munmap(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @i_mmap_lock_write(%struct.address_space*) #1

declare dso_local i32 @__vma_link_file(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_lock_write(%struct.anon_vma*) #1

declare dso_local i32 @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @flush_dcache_mmap_lock(%struct.address_space*) #1

declare dso_local i32 @vma_interval_tree_remove(%struct.vm_area_struct*, %struct.rb_root_cached*) #1

declare dso_local i32 @vma_interval_tree_insert(%struct.vm_area_struct*, %struct.rb_root_cached*) #1

declare dso_local i32 @flush_dcache_mmap_unlock(%struct.address_space*) #1

declare dso_local i32 @__vma_unlink_prev(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @__vma_unlink_common(%struct.mm_struct*, %struct.vm_area_struct*, i32*, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @__remove_shared_vm_struct(%struct.vm_area_struct*, %struct.file*, %struct.address_space*) #1

declare dso_local i32 @__insert_vm_struct(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @vma_gap_update(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_end_gap(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_unlock_write(%struct.anon_vma*) #1

declare dso_local i32 @i_mmap_unlock_write(%struct.address_space*) #1

declare dso_local i32 @uprobe_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @anon_vma_merge(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

declare dso_local i32 @validate_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
