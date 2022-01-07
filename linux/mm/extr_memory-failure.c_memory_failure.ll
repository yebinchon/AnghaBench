; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_memory_failure.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_memory_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32* }
%struct.dev_pagemap = type { i32 }

@sysctl_memory_failure_recovery = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory failure on page %lx\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Memory failure: %#lx: memory outside kernel control\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Memory failure: %#lx: already hardware poisoned\0A\00", align 1
@MF_COUNT_INCREASED = common dso_local global i32 0, align 4
@MF_MSG_BUDDY = common dso_local global i32 0, align 4
@MF_DELAYED = common dso_local global i32 0, align 4
@MF_MSG_KERNEL_HIGH_ORDER = common dso_local global i32 0, align 4
@MF_IGNORED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Memory failure: %#lx: non anonymous thp\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Memory failure: %#lx: thp split failed\0A\00", align 1
@MF_MSG_BUDDY_2ND = common dso_local global i32 0, align 4
@MF_MSG_DIFFERENT_COMPOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Memory failure: %#lx: just unpoisoned\0A\00", align 1
@MF_MSG_UNMAP_FAILED = common dso_local global i32 0, align 4
@MF_MSG_TRUNCATED_LRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_failure(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.dev_pagemap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @sysctl_memory_failure_recovery, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.page* @pfn_to_online_page(i64 %18)
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @pfn_valid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call %struct.dev_pagemap* @get_dev_pagemap(i64 %27, i32* null)
  store %struct.dev_pagemap* %28, %struct.dev_pagemap** %9, align 8
  %29 = load %struct.dev_pagemap*, %struct.dev_pagemap** %9, align 8
  %30 = icmp ne %struct.dev_pagemap* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.dev_pagemap*, %struct.dev_pagemap** %9, align 8
  %35 = call i32 @memory_failure_dev_pagemap(i64 %32, i32 %33, %struct.dev_pagemap* %34)
  store i32 %35, i32* %3, align 4
  br label %272

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %272

42:                                               ; preds = %17
  %43 = load %struct.page*, %struct.page** %6, align 8
  %44 = call i64 @PageHuge(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @memory_failure_hugetlb(i64 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %272

50:                                               ; preds = %42
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = call i64 @TestSetPageHWPoison(%struct.page* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  store i32 0, i32* %3, align 4
  br label %272

57:                                               ; preds = %50
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call %struct.page* @compound_head(%struct.page* %58)
  store %struct.page* %59, %struct.page** %7, align 8
  store %struct.page* %59, %struct.page** %8, align 8
  %60 = call i32 (...) @num_poisoned_pages_inc()
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %57
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = call i32 @get_hwpoison_page(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = load %struct.page*, %struct.page** %6, align 8
  %71 = call i64 @is_free_buddy_page(%struct.page* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* @MF_MSG_BUDDY, align 4
  %76 = load i32, i32* @MF_DELAYED, align 4
  %77 = call i32 @action_result(i64 %74, i32 %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %272

78:                                               ; preds = %69
  %79 = load i64, i64* %4, align 8
  %80 = load i32, i32* @MF_MSG_KERNEL_HIGH_ORDER, align 4
  %81 = load i32, i32* @MF_IGNORED, align 4
  %82 = call i32 @action_result(i64 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %272

85:                                               ; preds = %65, %57
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i64 @PageTransHuge(%struct.page* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %6, align 8
  %91 = call i32 @lock_page(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %6, align 8
  %93 = call i32 @PageAnon(%struct.page* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.page*, %struct.page** %6, align 8
  %97 = call i32 @split_huge_page(%struct.page* %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %95, %89
  %101 = load %struct.page*, %struct.page** %6, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %6, align 8
  %104 = call i32 @PageAnon(%struct.page* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  br label %112

109:                                              ; preds = %100
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.page*, %struct.page** %6, align 8
  %114 = call i64 @TestClearPageHWPoison(%struct.page* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 (...) @num_poisoned_pages_dec()
  br label %118

118:                                              ; preds = %116, %112
  %119 = load %struct.page*, %struct.page** %6, align 8
  %120 = call i32 @put_hwpoison_page(%struct.page* %119)
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %272

123:                                              ; preds = %95
  %124 = load %struct.page*, %struct.page** %6, align 8
  %125 = call i32 @unlock_page(%struct.page* %124)
  %126 = load %struct.page*, %struct.page** %6, align 8
  %127 = call i32 @page_count(%struct.page* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load %struct.page*, %struct.page** %6, align 8
  %132 = call i32 @VM_BUG_ON_PAGE(i32 %130, %struct.page* %131)
  %133 = load %struct.page*, %struct.page** %6, align 8
  %134 = call %struct.page* @compound_head(%struct.page* %133)
  store %struct.page* %134, %struct.page** %7, align 8
  br label %135

135:                                              ; preds = %123, %85
  %136 = load %struct.page*, %struct.page** %6, align 8
  %137 = call i32 @shake_page(%struct.page* %136, i32 0)
  %138 = load %struct.page*, %struct.page** %6, align 8
  %139 = call i64 @PageLRU(%struct.page* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %135
  %142 = load %struct.page*, %struct.page** %6, align 8
  %143 = call i64 @is_free_buddy_page(%struct.page* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i64, i64* %4, align 8
  %152 = load i32, i32* @MF_MSG_BUDDY, align 4
  %153 = load i32, i32* @MF_DELAYED, align 4
  %154 = call i32 @action_result(i64 %151, i32 %152, i32 %153)
  br label %160

155:                                              ; preds = %145
  %156 = load i64, i64* %4, align 8
  %157 = load i32, i32* @MF_MSG_BUDDY_2ND, align 4
  %158 = load i32, i32* @MF_DELAYED, align 4
  %159 = call i32 @action_result(i64 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  store i32 0, i32* %3, align 4
  br label %272

161:                                              ; preds = %141, %135
  %162 = load %struct.page*, %struct.page** %6, align 8
  %163 = call i32 @lock_page(%struct.page* %162)
  %164 = load %struct.page*, %struct.page** %6, align 8
  %165 = call i64 @PageCompound(%struct.page* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.page*, %struct.page** %6, align 8
  %169 = call %struct.page* @compound_head(%struct.page* %168)
  %170 = load %struct.page*, %struct.page** %8, align 8
  %171 = icmp ne %struct.page* %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load i64, i64* %4, align 8
  %174 = load i32, i32* @MF_MSG_DIFFERENT_COMPOUND, align 4
  %175 = load i32, i32* @MF_IGNORED, align 4
  %176 = call i32 @action_result(i64 %173, i32 %174, i32 %175)
  %177 = load i32, i32* @EBUSY, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %10, align 4
  br label %268

179:                                              ; preds = %167, %161
  %180 = load %struct.page*, %struct.page** %6, align 8
  %181 = call i64 @PageHuge(%struct.page* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load %struct.page*, %struct.page** %7, align 8
  %185 = getelementptr inbounds %struct.page, %struct.page* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %11, align 8
  br label %191

187:                                              ; preds = %179
  %188 = load %struct.page*, %struct.page** %6, align 8
  %189 = getelementptr inbounds %struct.page, %struct.page* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %11, align 8
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.page*, %struct.page** %6, align 8
  %193 = call i32 @PageHWPoison(%struct.page* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %4, align 8
  %197 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %196)
  %198 = call i32 (...) @num_poisoned_pages_dec()
  %199 = load %struct.page*, %struct.page** %6, align 8
  %200 = call i32 @unlock_page(%struct.page* %199)
  %201 = load %struct.page*, %struct.page** %6, align 8
  %202 = call i32 @put_hwpoison_page(%struct.page* %201)
  store i32 0, i32* %3, align 4
  br label %272

203:                                              ; preds = %191
  %204 = load %struct.page*, %struct.page** %6, align 8
  %205 = call i64 @hwpoison_filter(%struct.page* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load %struct.page*, %struct.page** %6, align 8
  %209 = call i64 @TestClearPageHWPoison(%struct.page* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 (...) @num_poisoned_pages_dec()
  br label %213

213:                                              ; preds = %211, %207
  %214 = load %struct.page*, %struct.page** %6, align 8
  %215 = call i32 @unlock_page(%struct.page* %214)
  %216 = load %struct.page*, %struct.page** %6, align 8
  %217 = call i32 @put_hwpoison_page(%struct.page* %216)
  store i32 0, i32* %3, align 4
  br label %272

218:                                              ; preds = %203
  %219 = load %struct.page*, %struct.page** %6, align 8
  %220 = call i32 @PageTransTail(%struct.page* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %218
  %223 = load %struct.page*, %struct.page** %6, align 8
  %224 = call i64 @PageLRU(%struct.page* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  br label %263

227:                                              ; preds = %222, %218
  %228 = load %struct.page*, %struct.page** %6, align 8
  %229 = call i32 @wait_on_page_writeback(%struct.page* %228)
  %230 = load %struct.page*, %struct.page** %6, align 8
  %231 = load i64, i64* %4, align 8
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @hwpoison_user_mappings(%struct.page* %230, i64 %231, i32 %232, %struct.page** %7)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %227
  %236 = load i64, i64* %4, align 8
  %237 = load i32, i32* @MF_MSG_UNMAP_FAILED, align 4
  %238 = load i32, i32* @MF_IGNORED, align 4
  %239 = call i32 @action_result(i64 %236, i32 %237, i32 %238)
  %240 = load i32, i32* @EBUSY, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %10, align 4
  br label %268

242:                                              ; preds = %227
  %243 = load %struct.page*, %struct.page** %6, align 8
  %244 = call i64 @PageLRU(%struct.page* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %242
  %247 = load %struct.page*, %struct.page** %6, align 8
  %248 = call i32 @PageSwapCache(%struct.page* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %246
  %251 = load %struct.page*, %struct.page** %6, align 8
  %252 = getelementptr inbounds %struct.page, %struct.page* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i64, i64* %4, align 8
  %257 = load i32, i32* @MF_MSG_TRUNCATED_LRU, align 4
  %258 = load i32, i32* @MF_IGNORED, align 4
  %259 = call i32 @action_result(i64 %256, i32 %257, i32 %258)
  %260 = load i32, i32* @EBUSY, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %10, align 4
  br label %268

262:                                              ; preds = %250, %246, %242
  br label %263

263:                                              ; preds = %262, %226
  %264 = load i64, i64* %4, align 8
  %265 = load %struct.page*, %struct.page** %6, align 8
  %266 = load i64, i64* %11, align 8
  %267 = call i32 @identify_page_state(i64 %264, %struct.page* %265, i64 %266)
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %263, %255, %235, %172
  %269 = load %struct.page*, %struct.page** %6, align 8
  %270 = call i32 @unlock_page(%struct.page* %269)
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %268, %213, %195, %160, %118, %78, %73, %54, %46, %37, %31
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local %struct.page* @pfn_to_online_page(i64) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local %struct.dev_pagemap* @get_dev_pagemap(i64, i32*) #1

declare dso_local i32 @memory_failure_dev_pagemap(i64, i32, %struct.dev_pagemap*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @memory_failure_hugetlb(i64, i32) #1

declare dso_local i64 @TestSetPageHWPoison(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @num_poisoned_pages_inc(...) #1

declare dso_local i32 @get_hwpoison_page(%struct.page*) #1

declare dso_local i64 @is_free_buddy_page(%struct.page*) #1

declare dso_local i32 @action_result(i64, i32, i32) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @TestClearPageHWPoison(%struct.page*) #1

declare dso_local i32 @num_poisoned_pages_dec(...) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @shake_page(%struct.page*, i32) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i32 @PageHWPoison(%struct.page*) #1

declare dso_local i64 @hwpoison_filter(%struct.page*) #1

declare dso_local i32 @PageTransTail(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @hwpoison_user_mappings(%struct.page*, i64, i32, %struct.page**) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @identify_page_state(i64, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
