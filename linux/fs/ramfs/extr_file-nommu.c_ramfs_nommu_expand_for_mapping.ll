; ModuleID = '/home/carl/AnghaBench/linux/fs/ramfs/extr_file-nommu.c_ramfs_nommu_expand_for_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ramfs/extr_file-nommu.c_ramfs_nommu_expand_for_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ramfs_nommu_expand_for_mapping(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mapping_gfp_mask(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @get_order(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAX_ORDER, align 4
  %23 = icmp uge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EFBIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %129

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @inode_newsize_ok(%struct.inode* %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  br label %129

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @i_size_write(%struct.inode* %39, i64 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.page* @alloc_pages(i32 %42, i32 %43)
  store %struct.page* %44, %struct.page** %9, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %129

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = add i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @split_page(%struct.page* %60, i32 %61)
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %73, %50
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %69, i64 %70
  %72 = call i32 @__free_page(%struct.page* %71)
  br label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %64

76:                                               ; preds = %64
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i64, i64* %6, align 8
  %79 = mul i64 %77, %78
  store i64 %79, i64* %5, align 8
  %80 = load %struct.page*, %struct.page** %9, align 8
  %81 = call i8* @page_address(%struct.page* %80)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @memset(i8* %82, i32 0, i64 %83)
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %112, %76
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.page, %struct.page* %90, i64 %91
  store %struct.page* %92, %struct.page** %14, align 8
  %93 = load %struct.page*, %struct.page** %14, align 8
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @add_to_page_cache_lru(%struct.page* %93, i32 %96, i64 %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %116

103:                                              ; preds = %89
  %104 = load %struct.page*, %struct.page** %14, align 8
  %105 = call i32 @SetPageDirty(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %14, align 8
  %107 = call i32 @SetPageUptodate(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %14, align 8
  %109 = call i32 @unlock_page(%struct.page* %108)
  %110 = load %struct.page*, %struct.page** %14, align 8
  %111 = call i32 @put_page(%struct.page* %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %85

115:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %129

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %121, %116
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.page*, %struct.page** %9, align 8
  %123 = load i64, i64* %8, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %8, align 8
  %125 = getelementptr inbounds %struct.page, %struct.page* %122, i64 %123
  %126 = call i32 @__free_page(%struct.page* %125)
  br label %117

127:                                              ; preds = %117
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %115, %47, %36, %27
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, i32, i64, i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
