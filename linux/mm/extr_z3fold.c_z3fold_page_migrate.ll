; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32, i64 }
%struct.z3fold_header = type { i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.z3fold_pool = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@compact_page_work = common dso_local global i32 0, align 4
@FIRST = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@MIDDLE = common dso_local global i32 0, align 4
@NEEDS_COMPACTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* @z3fold_page_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z3fold_page_migrate(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z3fold_header*, align 8
  %11 = alloca %struct.z3fold_header*, align 8
  %12 = alloca %struct.z3fold_pool*, align 8
  %13 = alloca %struct.address_space*, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = call i32 @PageMovable(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = call i32 @VM_BUG_ON_PAGE(i32 %18, %struct.page* %19)
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @PageIsolated(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = call i32 @VM_BUG_ON_PAGE(i32 %25, %struct.page* %26)
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @PageLocked(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @VM_BUG_ON_PAGE(i32 %32, %struct.page* %33)
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call %struct.z3fold_header* @page_address(%struct.page* %35)
  store %struct.z3fold_header* %36, %struct.z3fold_header** %10, align 8
  %37 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %38 = call %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header* %37)
  store %struct.z3fold_pool* %38, %struct.z3fold_pool** %12, align 8
  %39 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %40 = call i32 @z3fold_page_trylock(%struct.z3fold_header* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %164

45:                                               ; preds = %4
  %46 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %47 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %52 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %164

55:                                               ; preds = %45
  %56 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %57 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %56, i32 0, i32 1
  %58 = call i64 @work_pending(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %62 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %61)
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %164

65:                                               ; preds = %55
  %66 = load %struct.page*, %struct.page** %7, align 8
  %67 = call %struct.z3fold_header* @page_address(%struct.page* %66)
  store %struct.z3fold_header* %67, %struct.z3fold_header** %11, align 8
  %68 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %69 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @memcpy(%struct.z3fold_header* %68, %struct.z3fold_header* %69, i32 %70)
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.page*, %struct.page** %7, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.page*, %struct.page** %8, align 8
  %78 = getelementptr inbounds %struct.page, %struct.page* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %80 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %79)
  %81 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %82 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %81, i32 0, i32 7
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %85 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %84, i32 0, i32 1
  %86 = load i32, i32* @compact_page_work, align 4
  %87 = call i32 @INIT_WORK(i32* %85, i32 %86)
  %88 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %89 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %88, i32 0, i32 6
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.page*, %struct.page** %8, align 8
  %92 = call %struct.address_space* @page_mapping(%struct.page* %91)
  store %struct.address_space* %92, %struct.address_space** %13, align 8
  %93 = load %struct.page*, %struct.page** %8, align 8
  %94 = call i32 @__ClearPageMovable(%struct.page* %93)
  %95 = load %struct.page*, %struct.page** %8, align 8
  %96 = call i32 @ClearPagePrivate(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %7, align 8
  %98 = call i32 @get_page(%struct.page* %97)
  %99 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %100 = call i32 @z3fold_page_lock(%struct.z3fold_header* %99)
  %101 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %102 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %65
  %106 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %107 = load i32, i32* @FIRST, align 4
  %108 = call i32 @encode_handle(%struct.z3fold_header* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %65
  %110 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %111 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %116 = load i32, i32* @LAST, align 4
  %117 = call i32 @encode_handle(%struct.z3fold_header* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %120 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %125 = load i32, i32* @MIDDLE, align 4
  %126 = call i32 @encode_handle(%struct.z3fold_header* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* @NEEDS_COMPACTING, align 4
  %129 = load %struct.page*, %struct.page** %7, align 8
  %130 = getelementptr inbounds %struct.page, %struct.page* %129, i32 0, i32 1
  %131 = call i32 @set_bit(i32 %128, i64* %130)
  %132 = call i32 (...) @smp_processor_id()
  %133 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %134 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.z3fold_pool*, %struct.z3fold_pool** %12, align 8
  %136 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %135, i32 0, i32 1
  %137 = call i32 @spin_lock(i32* %136)
  %138 = load %struct.page*, %struct.page** %7, align 8
  %139 = getelementptr inbounds %struct.page, %struct.page* %138, i32 0, i32 0
  %140 = load %struct.z3fold_pool*, %struct.z3fold_pool** %12, align 8
  %141 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %140, i32 0, i32 2
  %142 = call i32 @list_add(i32* %139, i32* %141)
  %143 = load %struct.z3fold_pool*, %struct.z3fold_pool** %12, align 8
  %144 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.page*, %struct.page** %7, align 8
  %147 = load %struct.address_space*, %struct.address_space** %13, align 8
  %148 = call i32 @__SetPageMovable(%struct.page* %146, %struct.address_space* %147)
  %149 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %150 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %149)
  %151 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %152 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.z3fold_pool*, %struct.z3fold_pool** %12, align 8
  %155 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.z3fold_header*, %struct.z3fold_header** %11, align 8
  %158 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %157, i32 0, i32 1
  %159 = call i32 @queue_work_on(i32 %153, i32 %156, i32* %158)
  %160 = load %struct.page*, %struct.page** %8, align 8
  %161 = call i32 @page_mapcount_reset(%struct.page* %160)
  %162 = load %struct.page*, %struct.page** %8, align 8
  %163 = call i32 @put_page(%struct.page* %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %127, %60, %50, %42
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageMovable(%struct.page*) #1

declare dso_local i32 @PageIsolated(%struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.z3fold_header* @page_address(%struct.page*) #1

declare dso_local %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header*) #1

declare dso_local i32 @z3fold_page_trylock(%struct.z3fold_header*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local i32 @memcpy(%struct.z3fold_header*, %struct.z3fold_header*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @__ClearPageMovable(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local i32 @encode_handle(%struct.z3fold_header*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__SetPageMovable(%struct.page*, %struct.address_space*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @page_mapcount_reset(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
