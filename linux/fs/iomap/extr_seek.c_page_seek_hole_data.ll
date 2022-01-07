; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_page_seek_hole_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_page_seek_hole_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space_operations* }
%struct.address_space_operations = type { i32 (%struct.page*, i32, i32)* }
%struct.page = type { %struct.TYPE_2__* }

@SEEK_DATA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SEEK_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i64*, i32)* @page_seek_hole_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_seek_hole_data(%struct.inode* %0, %struct.page* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space_operations*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.address_space_operations*, %struct.address_space_operations** %18, align 8
  store %struct.address_space_operations* %19, %struct.address_space_operations** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @i_blocksize(%struct.inode* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SEEK_DATA, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i64 @page_offset(%struct.page* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = icmp sge i64 %29, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %125

39:                                               ; preds = %4
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SEEK_HOLE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %125

49:                                               ; preds = %44
  %50 = load i64, i64* %14, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load %struct.address_space_operations*, %struct.address_space_operations** %10, align 8
  %58 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %57, i32 0, i32 0
  %59 = load i32 (%struct.page*, i32, i32)*, i32 (%struct.page*, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.page*, i32, i32)* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56, %52
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i32 @PageUptodate(%struct.page* %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %125

67:                                               ; preds = %56
  %68 = load %struct.page*, %struct.page** %7, align 8
  %69 = call i32 @lock_page(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %7, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %122

81:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %117, %81
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @offset_in_page(i64 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %90, %91
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %117

95:                                               ; preds = %86
  %96 = load %struct.address_space_operations*, %struct.address_space_operations** %10, align 8
  %97 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %96, i32 0, i32 0
  %98 = load i32 (%struct.page*, i32, i32)*, i32 (%struct.page*, i32, i32)** %97, align 8
  %99 = load %struct.page*, %struct.page** %7, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 %98(%struct.page* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = call i32 @unlock_page(%struct.page* %106)
  store i32 1, i32* %5, align 4
  br label %125

108:                                              ; preds = %95
  %109 = load i64, i64* %14, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i64*, i64** %8, align 8
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %108, %94
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %82

121:                                              ; preds = %82
  br label %122

122:                                              ; preds = %121, %80
  %123 = load %struct.page*, %struct.page** %7, align 8
  %124 = call i32 @unlock_page(%struct.page* %123)
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %105, %61, %48, %38
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
