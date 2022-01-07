; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_page_vma_mapped_walk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_page_vma_mapped_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_vma_mapped_walk = type { i32, i32, i32*, i32*, i32*, %struct.page*, %struct.TYPE_2__* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PVMW_MIGRATION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page_vma_mapped_walk*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.page_vma_mapped_walk* %0, %struct.page_vma_mapped_walk** %3, align 8
  %11 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %12 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %4, align 8
  %16 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %16, i32 0, i32 5
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %5, align 8
  %19 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %20 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %25 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %30 = call i32 @not_found(%struct.page_vma_mapped_walk* %29)
  store i32 %30, i32* %2, align 4
  br label %352

31:                                               ; preds = %23, %1
  %32 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %33 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %244

37:                                               ; preds = %31
  %38 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %39 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %38, i32 0, i32 5
  %40 = load %struct.page*, %struct.page** %39, align 8
  %41 = call i64 @PageHuge(%struct.page* %40)
  %42 = call i64 @unlikely(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %37
  %45 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %46 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %47 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @page_size(%struct.page* %49)
  %51 = call i32* @huge_pte_offset(%struct.mm_struct* %45, i32 %48, i32 %50)
  %52 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %53 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %55 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %352

59:                                               ; preds = %44
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @page_hstate(%struct.page* %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %64 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32* @huge_pte_lockptr(i32 %61, %struct.mm_struct* %62, i32* %65)
  %67 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %68 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %70 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %74 = call i64 @check_pte(%struct.page_vma_mapped_walk* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %59
  %77 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %78 = call i32 @not_found(%struct.page_vma_mapped_walk* %77)
  store i32 %78, i32* %2, align 4
  br label %352

79:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %352

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %320, %80
  %82 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %83 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %84 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32* @pgd_offset(%struct.mm_struct* %82, i32 %85)
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pgd_present(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %352

92:                                               ; preds = %81
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %95 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @p4d_offset(i32* %93, i32 %96)
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @p4d_present(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %352

103:                                              ; preds = %92
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %106 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32* @pud_offset(i32* %104, i32 %107)
  store i32* %108, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pud_present(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %352

114:                                              ; preds = %103
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %117 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @pmd_offset(i32* %115, i32 %118)
  %120 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %121 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %123 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @READ_ONCE(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @pmd_trans_huge(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @is_pmd_migration_entry(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %226

134:                                              ; preds = %130, %114
  %135 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %136 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %137 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @pmd_lock(%struct.mm_struct* %135, i32* %138)
  %140 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %141 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %143 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @pmd_trans_huge(i32 %145)
  %147 = call i64 @likely(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %134
  %150 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %151 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PVMW_MIGRATION, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %158 = call i32 @not_found(%struct.page_vma_mapped_walk* %157)
  store i32 %158, i32* %2, align 4
  br label %352

159:                                              ; preds = %149
  %160 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %161 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.page* @pmd_page(i32 %163)
  %165 = load %struct.page*, %struct.page** %5, align 8
  %166 = icmp ne %struct.page* %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %169 = call i32 @not_found(%struct.page_vma_mapped_walk* %168)
  store i32 %169, i32* %2, align 4
  br label %352

170:                                              ; preds = %159
  store i32 1, i32* %2, align 4
  br label %352

171:                                              ; preds = %134
  %172 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %173 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @pmd_present(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %217, label %178

178:                                              ; preds = %171
  %179 = call i64 (...) @thp_migration_supported()
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  %182 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %183 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PVMW_MIGRATION, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %181
  %189 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %190 = call i32 @not_found(%struct.page_vma_mapped_walk* %189)
  store i32 %190, i32* %2, align 4
  br label %352

191:                                              ; preds = %181
  %192 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %193 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pmd_to_swp_entry(i32 %195)
  %197 = call i64 @is_migration_entry(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %191
  %200 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %201 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @pmd_to_swp_entry(i32 %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call %struct.page* @migration_entry_to_page(i32 %205)
  %207 = load %struct.page*, %struct.page** %5, align 8
  %208 = icmp ne %struct.page* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %211 = call i32 @not_found(%struct.page_vma_mapped_walk* %210)
  store i32 %211, i32* %2, align 4
  br label %352

212:                                              ; preds = %199
  store i32 1, i32* %2, align 4
  br label %352

213:                                              ; preds = %191
  br label %214

214:                                              ; preds = %213, %178
  %215 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %216 = call i32 @not_found(%struct.page_vma_mapped_walk* %215)
  store i32 %216, i32* %2, align 4
  br label %352

217:                                              ; preds = %171
  %218 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %219 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @spin_unlock(i32* %220)
  %222 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %223 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %222, i32 0, i32 2
  store i32* null, i32** %223, align 8
  br label %224

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224
  br label %232

226:                                              ; preds = %130
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @pmd_present(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  store i32 0, i32* %2, align 4
  br label %352

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231, %225
  %233 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %234 = call i32 @map_pte(%struct.page_vma_mapped_walk* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  br label %244

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %237, %351
  %239 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %240 = call i64 @check_pte(%struct.page_vma_mapped_walk* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i32 1, i32* %2, align 4
  br label %352

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243, %236, %36
  %245 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %246 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %245, i32 0, i32 5
  %247 = load %struct.page*, %struct.page** %246, align 8
  %248 = call i32 @PageTransHuge(%struct.page* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %252 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %251, i32 0, i32 5
  %253 = load %struct.page*, %struct.page** %252, align 8
  %254 = call i64 @PageHuge(%struct.page* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250, %244
  %257 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %258 = call i32 @not_found(%struct.page_vma_mapped_walk* %257)
  store i32 %258, i32* %2, align 4
  br label %352

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %327, %259
  %261 = load i32, i32* @PAGE_SIZE, align 4
  %262 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %263 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %267 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %270 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %269, i32 0, i32 6
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sge i32 %268, %273
  br i1 %274, label %294, label %275

275:                                              ; preds = %260
  %276 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %277 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %280 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %279, i32 0, i32 5
  %281 = load %struct.page*, %struct.page** %280, align 8
  %282 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %283 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %282, i32 0, i32 6
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = call i32 @__vma_address(%struct.page* %281, %struct.TYPE_2__* %284)
  %286 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %287 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %286, i32 0, i32 5
  %288 = load %struct.page*, %struct.page** %287, align 8
  %289 = call i32 @hpage_nr_pages(%struct.page* %288)
  %290 = load i32, i32* @PAGE_SIZE, align 4
  %291 = mul nsw i32 %289, %290
  %292 = add nsw i32 %285, %291
  %293 = icmp sge i32 %278, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %275, %260
  %295 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %296 = call i32 @not_found(%struct.page_vma_mapped_walk* %295)
  store i32 %296, i32* %2, align 4
  br label %352

297:                                              ; preds = %275
  %298 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %299 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @PMD_SIZE, align 4
  %302 = srem i32 %300, %301
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %297
  %305 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %306 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 @pte_unmap(i32* %307)
  %309 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %310 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %304
  %314 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %315 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @spin_unlock(i32* %316)
  %318 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %319 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %318, i32 0, i32 2
  store i32* null, i32** %319, align 8
  br label %320

320:                                              ; preds = %313, %304
  br label %81

321:                                              ; preds = %297
  %322 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %323 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %323, align 8
  br label %326

326:                                              ; preds = %321
  br label %327

327:                                              ; preds = %326
  %328 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %329 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %328, i32 0, i32 4
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @pte_none(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %260, label %334

334:                                              ; preds = %327
  %335 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %336 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %351, label %339

339:                                              ; preds = %334
  %340 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %341 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %342 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = call i32* @pte_lockptr(%struct.mm_struct* %340, i32* %343)
  %345 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %346 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %345, i32 0, i32 2
  store i32* %344, i32** %346, align 8
  %347 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %348 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %347, i32 0, i32 2
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @spin_lock(i32* %349)
  br label %351

351:                                              ; preds = %339, %334
  br label %238

352:                                              ; preds = %294, %256, %242, %230, %214, %212, %209, %188, %170, %167, %156, %113, %102, %91, %79, %76, %58, %28
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local i32 @not_found(%struct.page_vma_mapped_walk*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @page_size(%struct.page*) #1

declare dso_local i32* @huge_pte_lockptr(i32, %struct.mm_struct*, i32*) #1

declare dso_local i32 @page_hstate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @check_pte(%struct.page_vma_mapped_walk*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i32) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i32) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @is_pmd_migration_entry(i32) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @thp_migration_supported(...) #1

declare dso_local i64 @is_migration_entry(i32) #1

declare dso_local i32 @pmd_to_swp_entry(i32) #1

declare dso_local %struct.page* @migration_entry_to_page(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @map_pte(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @__vma_address(%struct.page*, %struct.TYPE_2__*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
