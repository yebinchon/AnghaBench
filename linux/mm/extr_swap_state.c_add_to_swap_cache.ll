; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_add_to_swap_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_add_to_swap_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.page = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.address_space = type { i64, i32 }

@xas = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@add_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_swap_cache(%struct.page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.address_space* @swap_address_space(i64 %14)
  store %struct.address_space* %15, %struct.address_space** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @swp_offset(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = call i32 @compound_order(%struct.page* %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xas, i32 0, i32 0), align 8
  %25 = call i32 @XA_STATE_ORDER(i64 %24, i32* %20, i64 %21, i32 %23)
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i64 @compound_nr(%struct.page* %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i32 @PageLocked(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @VM_BUG_ON_PAGE(i32 %32, %struct.page* %33)
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = call i32 @PageSwapCache(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i32 @VM_BUG_ON_PAGE(i32 %36, %struct.page* %37)
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call i32 @PageSwapBacked(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @VM_BUG_ON_PAGE(i32 %43, %struct.page* %44)
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @page_ref_add(%struct.page* %46, i64 %47)
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @SetPageSwapCache(%struct.page* %49)
  br label %51

51:                                               ; preds = %101, %3
  %52 = call i32 @xas_lock_irq(%struct.TYPE_15__* @xas)
  %53 = call i32 @xas_create_range(%struct.TYPE_15__* @xas)
  %54 = call i32 @xas_error(%struct.TYPE_15__* @xas)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %99

57:                                               ; preds = %51
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xas, i32 0, i32 0), align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  %67 = icmp ne i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = call i32 @VM_BUG_ON_PAGE(i32 %68, %struct.page* %69)
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = call i32 @set_page_private(%struct.page* %73, i64 %77)
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = call i32 @xas_store(%struct.TYPE_15__* @xas, %struct.page* %79)
  %81 = call i32 @xas_next(%struct.TYPE_15__* @xas)
  br label %82

82:                                               ; preds = %62
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %58

85:                                               ; preds = %58
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.address_space*, %struct.address_space** %8, align 8
  %88 = getelementptr inbounds %struct.address_space, %struct.address_space* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i32 @page_pgdat(%struct.page* %91)
  %93 = load i32, i32* @NR_FILE_PAGES, align 4
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @__mod_node_page_state(i32 %92, i32 %93, i64 %94)
  %96 = load i32, i32* @add_total, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @ADD_CACHE_INFO(i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %85, %56
  %100 = call i32 @xas_unlock_irq(%struct.TYPE_15__* @xas)
  br label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @xas_nomem(%struct.TYPE_15__* @xas, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %51, label %105

105:                                              ; preds = %101
  %106 = call i32 @xas_error(%struct.TYPE_15__* @xas)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %116

109:                                              ; preds = %105
  %110 = load %struct.page*, %struct.page** %6, align 8
  %111 = call i32 @ClearPageSwapCache(%struct.page* %110)
  %112 = load %struct.page*, %struct.page** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @page_ref_sub(%struct.page* %112, i64 %113)
  %115 = call i32 @xas_error(%struct.TYPE_15__* @xas)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %109, %108
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.address_space* @swap_address_space(i64) #1

declare dso_local i64 @swp_offset(i64) #1

declare dso_local i32 @XA_STATE_ORDER(i64, i32*, i64, i32) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i64 @compound_nr(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @page_ref_add(%struct.page*, i64) #1

declare dso_local i32 @SetPageSwapCache(%struct.page*) #1

declare dso_local i32 @xas_lock_irq(%struct.TYPE_15__*) #1

declare dso_local i32 @xas_create_range(%struct.TYPE_15__*) #1

declare dso_local i32 @xas_error(%struct.TYPE_15__*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @xas_store(%struct.TYPE_15__*, %struct.page*) #1

declare dso_local i32 @xas_next(%struct.TYPE_15__*) #1

declare dso_local i32 @__mod_node_page_state(i32, i32, i64) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @ADD_CACHE_INFO(i32, i64) #1

declare dso_local i32 @xas_unlock_irq(%struct.TYPE_15__*) #1

declare dso_local i64 @xas_nomem(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ClearPageSwapCache(%struct.page*) #1

declare dso_local i32 @page_ref_sub(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
