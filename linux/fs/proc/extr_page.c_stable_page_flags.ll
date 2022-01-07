; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_page.c_stable_page_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_page.c_stable_page_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KPF_NOPAGE = common dso_local global i32 0, align 4
@KPF_MMAP = common dso_local global i32 0, align 4
@KPF_ANON = common dso_local global i32 0, align 4
@KPF_KSM = common dso_local global i32 0, align 4
@KPF_COMPOUND_HEAD = common dso_local global i32 0, align 4
@KPF_COMPOUND_TAIL = common dso_local global i32 0, align 4
@KPF_HUGE = common dso_local global i32 0, align 4
@KPF_THP = common dso_local global i32 0, align 4
@KPF_ZERO_PAGE = common dso_local global i32 0, align 4
@KPF_BUDDY = common dso_local global i32 0, align 4
@KPF_OFFLINE = common dso_local global i32 0, align 4
@KPF_PGTABLE = common dso_local global i32 0, align 4
@KPF_IDLE = common dso_local global i32 0, align 4
@KPF_LOCKED = common dso_local global i32 0, align 4
@PG_locked = common dso_local global i32 0, align 4
@KPF_SLAB = common dso_local global i32 0, align 4
@PG_slab = common dso_local global i32 0, align 4
@KPF_ERROR = common dso_local global i32 0, align 4
@PG_error = common dso_local global i32 0, align 4
@KPF_DIRTY = common dso_local global i32 0, align 4
@PG_dirty = common dso_local global i32 0, align 4
@KPF_UPTODATE = common dso_local global i32 0, align 4
@PG_uptodate = common dso_local global i32 0, align 4
@KPF_WRITEBACK = common dso_local global i32 0, align 4
@PG_writeback = common dso_local global i32 0, align 4
@KPF_LRU = common dso_local global i32 0, align 4
@PG_lru = common dso_local global i32 0, align 4
@KPF_REFERENCED = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i32 0, align 4
@KPF_ACTIVE = common dso_local global i32 0, align 4
@PG_active = common dso_local global i32 0, align 4
@KPF_RECLAIM = common dso_local global i32 0, align 4
@PG_reclaim = common dso_local global i32 0, align 4
@KPF_SWAPCACHE = common dso_local global i32 0, align 4
@KPF_SWAPBACKED = common dso_local global i32 0, align 4
@PG_swapbacked = common dso_local global i32 0, align 4
@KPF_UNEVICTABLE = common dso_local global i32 0, align 4
@PG_unevictable = common dso_local global i32 0, align 4
@KPF_MLOCKED = common dso_local global i32 0, align 4
@PG_mlocked = common dso_local global i32 0, align 4
@KPF_RESERVED = common dso_local global i32 0, align 4
@PG_reserved = common dso_local global i32 0, align 4
@KPF_MAPPEDTODISK = common dso_local global i32 0, align 4
@PG_mappedtodisk = common dso_local global i32 0, align 4
@KPF_PRIVATE = common dso_local global i32 0, align 4
@PG_private = common dso_local global i32 0, align 4
@KPF_PRIVATE_2 = common dso_local global i32 0, align 4
@PG_private_2 = common dso_local global i32 0, align 4
@KPF_OWNER_PRIVATE = common dso_local global i32 0, align 4
@PG_owner_priv_1 = common dso_local global i32 0, align 4
@KPF_ARCH = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4
@KPF_HWPOISON = common dso_local global i32 0, align 4
@KPF_UNCACHED = common dso_local global i32 0, align 4
@PG_hwpoison = common dso_local global i32 0, align 4
@PG_uncached = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stable_page_flags(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = icmp ne %struct.page* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @KPF_NOPAGE, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %2, align 4
  br label %308

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @PageSlab(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i64 @page_mapped(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @KPF_MMAP, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %19, %12
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i64 @PageAnon(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @KPF_ANON, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i64 @PageKsm(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @KPF_KSM, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i64 @PageHead(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @KPF_COMPOUND_HEAD, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = call i64 @PageTail(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @KPF_COMPOUND_TAIL, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.page*, %struct.page** %3, align 8
  %66 = call i64 @PageHuge(%struct.page* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @KPF_HUGE, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %119

73:                                               ; preds = %64
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = call i64 @PageTransCompound(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %3, align 8
  %79 = call %struct.page* @compound_head(%struct.page* %78)
  store %struct.page* %79, %struct.page** %6, align 8
  %80 = load %struct.page*, %struct.page** %6, align 8
  %81 = call i64 @PageLRU(%struct.page* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i64 @PageAnon(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %77
  %88 = load i32, i32* @KPF_THP, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %106

92:                                               ; preds = %83
  %93 = load %struct.page*, %struct.page** %6, align 8
  %94 = call i64 @is_huge_zero_page(%struct.page* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, i32* @KPF_ZERO_PAGE, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @KPF_THP, align 4
  %102 = shl i32 1, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %96, %92
  br label %106

106:                                              ; preds = %105, %87
  br label %118

107:                                              ; preds = %73
  %108 = load %struct.page*, %struct.page** %3, align 8
  %109 = call i32 @page_to_pfn(%struct.page* %108)
  %110 = call i64 @is_zero_pfn(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @KPF_ZERO_PAGE, align 4
  %114 = shl i32 1, %113
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %68
  %120 = load %struct.page*, %struct.page** %3, align 8
  %121 = call i64 @PageBuddy(%struct.page* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* @KPF_BUDDY, align 4
  %125 = shl i32 1, %124
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %142

128:                                              ; preds = %119
  %129 = load %struct.page*, %struct.page** %3, align 8
  %130 = call i64 @page_count(%struct.page* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.page*, %struct.page** %3, align 8
  %134 = call i64 @is_free_buddy_page(%struct.page* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* @KPF_BUDDY, align 4
  %138 = shl i32 1, %137
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %136, %132, %128
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.page*, %struct.page** %3, align 8
  %144 = call i64 @PageOffline(%struct.page* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i32, i32* @KPF_OFFLINE, align 4
  %148 = shl i32 1, %147
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %146, %142
  %152 = load %struct.page*, %struct.page** %3, align 8
  %153 = call i64 @PageTable(%struct.page* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32, i32* @KPF_PGTABLE, align 4
  %157 = shl i32 1, %156
  %158 = load i32, i32* %5, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %155, %151
  %161 = load %struct.page*, %struct.page** %3, align 8
  %162 = call i64 @page_is_idle(%struct.page* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* @KPF_IDLE, align 4
  %166 = shl i32 1, %165
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %160
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @KPF_LOCKED, align 4
  %172 = load i32, i32* @PG_locked, align 4
  %173 = call i32 @kpf_copy_bit(i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @KPF_SLAB, align 4
  %178 = load i32, i32* @PG_slab, align 4
  %179 = call i32 @kpf_copy_bit(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %5, align 4
  %182 = load %struct.page*, %struct.page** %3, align 8
  %183 = call i64 @PageTail(%struct.page* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %169
  %186 = load %struct.page*, %struct.page** %3, align 8
  %187 = call %struct.page* @compound_head(%struct.page* %186)
  %188 = call i64 @PageSlab(%struct.page* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* @KPF_SLAB, align 4
  %192 = shl i32 1, %191
  %193 = load i32, i32* %5, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %190, %185, %169
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @KPF_ERROR, align 4
  %198 = load i32, i32* @PG_error, align 4
  %199 = call i32 @kpf_copy_bit(i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @KPF_DIRTY, align 4
  %204 = load i32, i32* @PG_dirty, align 4
  %205 = call i32 @kpf_copy_bit(i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @KPF_UPTODATE, align 4
  %210 = load i32, i32* @PG_uptodate, align 4
  %211 = call i32 @kpf_copy_bit(i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @KPF_WRITEBACK, align 4
  %216 = load i32, i32* @PG_writeback, align 4
  %217 = call i32 @kpf_copy_bit(i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @KPF_LRU, align 4
  %222 = load i32, i32* @PG_lru, align 4
  %223 = call i32 @kpf_copy_bit(i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @KPF_REFERENCED, align 4
  %228 = load i32, i32* @PG_referenced, align 4
  %229 = call i32 @kpf_copy_bit(i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* @KPF_ACTIVE, align 4
  %234 = load i32, i32* @PG_active, align 4
  %235 = call i32 @kpf_copy_bit(i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %5, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @KPF_RECLAIM, align 4
  %240 = load i32, i32* @PG_reclaim, align 4
  %241 = call i32 @kpf_copy_bit(i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* %5, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %5, align 4
  %244 = load %struct.page*, %struct.page** %3, align 8
  %245 = call i64 @PageSwapCache(%struct.page* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %195
  %248 = load i32, i32* @KPF_SWAPCACHE, align 4
  %249 = shl i32 1, %248
  %250 = load i32, i32* %5, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %247, %195
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @KPF_SWAPBACKED, align 4
  %255 = load i32, i32* @PG_swapbacked, align 4
  %256 = call i32 @kpf_copy_bit(i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %5, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @KPF_UNEVICTABLE, align 4
  %261 = load i32, i32* @PG_unevictable, align 4
  %262 = call i32 @kpf_copy_bit(i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %5, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @KPF_MLOCKED, align 4
  %267 = load i32, i32* @PG_mlocked, align 4
  %268 = call i32 @kpf_copy_bit(i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %5, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* @KPF_RESERVED, align 4
  %273 = load i32, i32* @PG_reserved, align 4
  %274 = call i32 @kpf_copy_bit(i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %5, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %5, align 4
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @KPF_MAPPEDTODISK, align 4
  %279 = load i32, i32* @PG_mappedtodisk, align 4
  %280 = call i32 @kpf_copy_bit(i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %5, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @KPF_PRIVATE, align 4
  %285 = load i32, i32* @PG_private, align 4
  %286 = call i32 @kpf_copy_bit(i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %5, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %5, align 4
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @KPF_PRIVATE_2, align 4
  %291 = load i32, i32* @PG_private_2, align 4
  %292 = call i32 @kpf_copy_bit(i32 %289, i32 %290, i32 %291)
  %293 = load i32, i32* %5, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %5, align 4
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* @KPF_OWNER_PRIVATE, align 4
  %297 = load i32, i32* @PG_owner_priv_1, align 4
  %298 = call i32 @kpf_copy_bit(i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* %5, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* @KPF_ARCH, align 4
  %303 = load i32, i32* @PG_arch_1, align 4
  %304 = call i32 @kpf_copy_bit(i32 %301, i32 %302, i32 %303)
  %305 = load i32, i32* %5, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %252, %9
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageKsm(%struct.page*) #1

declare dso_local i64 @PageHead(%struct.page*) #1

declare dso_local i64 @PageTail(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @is_huge_zero_page(%struct.page*) #1

declare dso_local i64 @is_zero_pfn(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @PageBuddy(%struct.page*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i64 @is_free_buddy_page(%struct.page*) #1

declare dso_local i64 @PageOffline(%struct.page*) #1

declare dso_local i64 @PageTable(%struct.page*) #1

declare dso_local i64 @page_is_idle(%struct.page*) #1

declare dso_local i32 @kpf_copy_bit(i32, i32, i32) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
