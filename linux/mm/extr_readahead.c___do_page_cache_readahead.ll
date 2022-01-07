; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c___do_page_cache_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c___do_page_cache_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i64, i32 }

@page_pool = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__do_page_cache_readahead(%struct.address_space* %0, %struct.file* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load i32, i32* @page_pool, align 4
  %23 = call i32 @LIST_HEAD(i32 %22)
  store i32 0, i32* %15, align 4
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = call i32 @i_size_read(%struct.inode* %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = call i32 @readahead_gfp_mask(%struct.address_space* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %115

31:                                               ; preds = %5
  %32 = load i32, i32* %16, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %97, %31
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %100

51:                                               ; preds = %42
  %52 = load %struct.address_space*, %struct.address_space** %6, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i64, i64* %18, align 8
  %55 = call %struct.page* @xa_load(i32* %53, i64 %54)
  store %struct.page* %55, %struct.page** %12, align 8
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = call i32 @xa_is_value(%struct.page* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.address_space*, %struct.address_space** %6, align 8
  %67 = load %struct.file*, %struct.file** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @read_pages(%struct.address_space* %66, %struct.file* %67, i32* @page_pool, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  store i32 0, i32* %15, align 4
  br label %97

72:                                               ; preds = %58, %51
  %73 = load i32, i32* %17, align 4
  %74 = call %struct.page* @__page_cache_alloc(i32 %73)
  store %struct.page* %74, %struct.page** %12, align 8
  %75 = load %struct.page*, %struct.page** %12, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %100

78:                                               ; preds = %72
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.page*, %struct.page** %12, align 8
  %83 = getelementptr inbounds %struct.page, %struct.page* %82, i32 0, i32 1
  %84 = call i32 @list_add(i32* %83, i32* @page_pool)
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %87, %88
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load %struct.page*, %struct.page** %12, align 8
  %93 = call i32 @SetPageReadahead(%struct.page* %92)
  br label %94

94:                                               ; preds = %91, %78
  %95 = load i32, i32* %15, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %94, %71
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %37

100:                                              ; preds = %77, %50, %37
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.address_space*, %struct.address_space** %6, align 8
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @read_pages(%struct.address_space* %104, %struct.file* %105, i32* @page_pool, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %100
  %110 = call i32 @list_empty(i32* @page_pool)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  br label %115

115:                                              ; preds = %109, %30
  %116 = load i32, i32* %15, align 4
  ret i32 %116
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @readahead_gfp_mask(%struct.address_space*) #1

declare dso_local %struct.page* @xa_load(i32*, i64) #1

declare dso_local i32 @xa_is_value(%struct.page*) #1

declare dso_local i32 @read_pages(%struct.address_space*, %struct.file*, i32*, i32, i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @SetPageReadahead(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
