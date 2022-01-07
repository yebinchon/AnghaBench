; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_release_unused_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_release_unused_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, i64, %struct.inode* }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage_da_data*, i32)* @mpage_release_unused_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpage_release_unused_pages(%struct.mpage_da_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mpage_da_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pagevec, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %16 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %15, i32 0, i32 2
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %11, align 8
  %21 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %22 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %25 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %120

29:                                               ; preds = %2
  %30 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %31 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %35 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = shl i32 %42, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = shl i32 %49, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = call i32 @ext4_es_remove_extent(%struct.inode* %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %41, %29
  %64 = call i32 @pagevec_init(%struct.pagevec* %9)
  br label %65

65:                                               ; preds = %118, %63
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %65
  %70 = load %struct.address_space*, %struct.address_space** %11, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pagevec_lookup_range(%struct.pagevec* %9, %struct.address_space* %70, i32* %7, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %120

76:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %115, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %83 = load %struct.page**, %struct.page*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.page*, %struct.page** %83, i64 %85
  %87 = load %struct.page*, %struct.page** %86, align 8
  store %struct.page* %87, %struct.page** %14, align 8
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = call i32 @PageLocked(%struct.page* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.page*, %struct.page** %14, align 8
  %95 = call i32 @PageWriteback(%struct.page* %94)
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %81
  %100 = load %struct.page*, %struct.page** %14, align 8
  %101 = call i64 @page_mapped(%struct.page* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.page*, %struct.page** %14, align 8
  %105 = call i32 @clear_page_dirty_for_io(%struct.page* %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load %struct.page*, %struct.page** %14, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = call i32 @block_invalidatepage(%struct.page* %107, i32 0, i32 %108)
  %110 = load %struct.page*, %struct.page** %14, align 8
  %111 = call i32 @ClearPageUptodate(%struct.page* %110)
  br label %112

112:                                              ; preds = %106, %81
  %113 = load %struct.page*, %struct.page** %14, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %77

118:                                              ; preds = %77
  %119 = call i32 @pagevec_release(%struct.pagevec* %9)
  br label %65

120:                                              ; preds = %28, %75, %65
  ret void
}

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_range(%struct.pagevec*, %struct.address_space*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @block_invalidatepage(%struct.page*, i32, i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
