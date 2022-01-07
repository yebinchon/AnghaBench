; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c___remove_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c___remove_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { void (%struct.page*)* }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, i32)* @__remove_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove_mapping(%struct.address_space* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca void (%struct.page*)*, align 8
  %12 = alloca i8*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.address_space*, %struct.address_space** %5, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call %struct.address_space* @page_mapping(%struct.page* %20)
  %22 = icmp ne %struct.address_space* %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.address_space*, %struct.address_space** %5, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @xa_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i32 @compound_nr(%struct.page* %29)
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @page_ref_freeze(%struct.page* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %108

37:                                               ; preds = %3
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @PageDirty(%struct.page* %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.page*, %struct.page** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @page_ref_unfreeze(%struct.page* %43, i32 %44)
  br label %108

46:                                               ; preds = %37
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i64 @PageSwapCache(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %52 = load %struct.page*, %struct.page** %6, align 8
  %53 = call i32 @page_private(%struct.page* %52)
  store i32 %53, i32* %51, align 4
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mem_cgroup_swapout(%struct.page* %54, i32 %56)
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__delete_from_swap_cache(%struct.page* %58, i32 %60)
  %62 = load %struct.address_space*, %struct.address_space** %5, align 8
  %63 = getelementptr inbounds %struct.address_space, %struct.address_space* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @xa_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @put_swap_page(%struct.page* %66, i32 %68)
  br label %107

70:                                               ; preds = %46
  store i8* null, i8** %12, align 8
  %71 = load %struct.address_space*, %struct.address_space** %5, align 8
  %72 = getelementptr inbounds %struct.address_space, %struct.address_space* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load void (%struct.page*)*, void (%struct.page*)** %74, align 8
  store void (%struct.page*)* %75, void (%struct.page*)** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = call i64 @page_is_file_cache(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.address_space*, %struct.address_space** %5, align 8
  %84 = call i32 @mapping_exiting(%struct.address_space* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load %struct.address_space*, %struct.address_space** %5, align 8
  %88 = call i32 @dax_mapping(%struct.address_space* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i8* @workingset_eviction(%struct.page* %91)
  store i8* %92, i8** %12, align 8
  br label %93

93:                                               ; preds = %90, %86, %82, %78, %70
  %94 = load %struct.page*, %struct.page** %6, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @__delete_from_page_cache(%struct.page* %94, i8* %95)
  %97 = load %struct.address_space*, %struct.address_space** %5, align 8
  %98 = getelementptr inbounds %struct.address_space, %struct.address_space* %97, i32 0, i32 0
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @xa_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load void (%struct.page*)*, void (%struct.page*)** %11, align 8
  %102 = icmp ne void (%struct.page*)* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load void (%struct.page*)*, void (%struct.page*)** %11, align 8
  %105 = load %struct.page*, %struct.page** %6, align 8
  call void %104(%struct.page* %105)
  br label %106

106:                                              ; preds = %103, %93
  br label %107

107:                                              ; preds = %106, %50
  store i32 1, i32* %4, align 4
  br label %113

108:                                              ; preds = %42, %36
  %109 = load %struct.address_space*, %struct.address_space** %5, align 8
  %110 = getelementptr inbounds %struct.address_space, %struct.address_space* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @xa_unlock_irqrestore(i32* %110, i64 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i32 @page_ref_freeze(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @page_ref_unfreeze(%struct.page*, i32) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @mem_cgroup_swapout(%struct.page*, i32) #1

declare dso_local i32 @__delete_from_swap_cache(%struct.page*, i32) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_swap_page(%struct.page*, i32) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @mapping_exiting(%struct.address_space*) #1

declare dso_local i32 @dax_mapping(%struct.address_space*) #1

declare dso_local i8* @workingset_eviction(%struct.page*) #1

declare dso_local i32 @__delete_from_page_cache(%struct.page*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
