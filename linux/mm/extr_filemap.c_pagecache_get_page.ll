; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_pagecache_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_pagecache_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { %struct.address_space* }

@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_NOWAIT = common dso_local global i32 0, align 4
@FGP_ACCESSED = common dso_local global i32 0, align 4
@FGP_CREAT = common dso_local global i32 0, align 4
@FGP_WRITE = common dso_local global i32 0, align 4
@__GFP_WRITE = common dso_local global i32 0, align 4
@FGP_NOFS = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@FGP_FOR_MMAP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @pagecache_get_page(%struct.address_space* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %154, %55, %4
  %13 = load %struct.address_space*, %struct.address_space** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.page* @find_get_entry(%struct.address_space* %13, i32 %14)
  store %struct.page* %15, %struct.page** %10, align 8
  %16 = load %struct.page*, %struct.page** %10, align 8
  %17 = call i64 @xa_is_value(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store %struct.page* null, %struct.page** %10, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %78

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FGP_LOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FGP_NOWAIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = call i32 @trylock_page(%struct.page* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = call i32 @put_page(%struct.page* %39)
  store %struct.page* null, %struct.page** %5, align 8
  br label %170

41:                                               ; preds = %34
  br label %45

42:                                               ; preds = %29
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = call i32 @lock_page(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = call %struct.TYPE_2__* @compound_head(%struct.page* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.address_space*, %struct.address_space** %48, align 8
  %50 = load %struct.address_space*, %struct.address_space** %6, align 8
  %51 = icmp ne %struct.address_space* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = call i32 @unlock_page(%struct.page* %56)
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = call i32 @put_page(%struct.page* %58)
  br label %12

60:                                               ; preds = %45
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = call i32 @VM_BUG_ON_PAGE(i32 %66, %struct.page* %67)
  br label %69

69:                                               ; preds = %60, %24
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FGP_ACCESSED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = call i32 @mark_page_accessed(%struct.page* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %23
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = icmp ne %struct.page* %79, null
  br i1 %80, label %168, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @FGP_CREAT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %168

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @FGP_WRITE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.address_space*, %struct.address_space** %6, align 8
  %93 = call i64 @mapping_cap_account_dirty(%struct.address_space* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @__GFP_WRITE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %91, %86
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @FGP_NOFS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @__GFP_FS, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %9, align 4
  %111 = call %struct.page* @__page_cache_alloc(i32 %110)
  store %struct.page* %111, %struct.page** %10, align 8
  %112 = load %struct.page*, %struct.page** %10, align 8
  %113 = icmp ne %struct.page* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store %struct.page* null, %struct.page** %5, align 8
  br label %170

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @FGP_LOCK, align 4
  %118 = load i32, i32* @FGP_FOR_MMAP, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @WARN_ON_ONCE(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load i32, i32* @FGP_LOCK, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %115
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @FGP_ACCESSED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.page*, %struct.page** %10, align 8
  %137 = call i32 @__SetPageReferenced(%struct.page* %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.page*, %struct.page** %10, align 8
  %140 = load %struct.address_space*, %struct.address_space** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @add_to_page_cache_lru(%struct.page* %139, %struct.address_space* %140, i32 %141, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  %148 = load %struct.page*, %struct.page** %10, align 8
  %149 = call i32 @put_page(%struct.page* %148)
  store %struct.page* null, %struct.page** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @EEXIST, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %12

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %138
  %157 = load %struct.page*, %struct.page** %10, align 8
  %158 = icmp ne %struct.page* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @FGP_FOR_MMAP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.page*, %struct.page** %10, align 8
  %166 = call i32 @unlock_page(%struct.page* %165)
  br label %167

167:                                              ; preds = %164, %159, %156
  br label %168

168:                                              ; preds = %167, %81, %78
  %169 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %169, %struct.page** %5, align 8
  br label %170

170:                                              ; preds = %168, %114, %38
  %171 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %171
}

declare dso_local %struct.page* @find_get_entry(%struct.address_space*, i32) #1

declare dso_local i64 @xa_is_value(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @compound_head(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__SetPageReferenced(%struct.page*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
