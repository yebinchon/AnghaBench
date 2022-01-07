; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepage_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepage_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.orangefs_write_range = type { i64, i64 }
%struct.iov_iter = type { i32 }
%struct.bio_vec = type { i64, i64, %struct.page* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@ORANGEFS_IO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @orangefs_writepage_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_writepage_locked(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.orangefs_write_range*, align 8
  %7 = alloca %struct.iov_iter, align 4
  %8 = alloca %struct.bio_vec, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %5, align 8
  store %struct.orangefs_write_range* null, %struct.orangefs_write_range** %6, align 8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @set_page_writeback(%struct.page* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i64 @i_size_read(%struct.inode* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i64 @PagePrivate(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @page_private(%struct.page* %26)
  %28 = inttoptr i64 %27 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %28, %struct.orangefs_write_range** %6, align 8
  %29 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %30 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp uge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %37 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %41 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  br label %54

50:                                               ; preds = %25
  %51 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %52 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %71

55:                                               ; preds = %2
  %56 = call i32 @WARN_ON(i32 1)
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i64 @page_offset(%struct.page* %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %10, align 8
  br label %70

68:                                               ; preds = %55
  %69 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %78, %79
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i1 [ true, %71 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 2
  store %struct.page* %85, %struct.page** %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = urem i64 %89, %90
  %92 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i32, i32* @WRITE, align 4
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @iov_iter_bvec(%struct.iov_iter* %7, i32 %97, %struct.bio_vec* %8, i32 1, i64 %98)
  %100 = load i32, i32* @ORANGEFS_IO_WRITE, align 4
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %105 = call i64 @wait_for_direct_io(i32 %100, %struct.inode* %101, i64* %12, %struct.iov_iter* %7, i64 %102, i64 %103, %struct.orangefs_write_range* %104, i32* null)
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %81
  %109 = load %struct.page*, %struct.page** %3, align 8
  %110 = call i32 @SetPageError(%struct.page* %109)
  %111 = load %struct.page*, %struct.page** %3, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @mapping_set_error(%struct.TYPE_2__* %113, i64 %114)
  br label %117

116:                                              ; preds = %81
  store i64 0, i64* %11, align 8
  br label %117

117:                                              ; preds = %116, %108
  %118 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %119 = icmp ne %struct.orangefs_write_range* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %122 = call i32 @kfree(%struct.orangefs_write_range* %121)
  %123 = load %struct.page*, %struct.page** %3, align 8
  %124 = call i32 @set_page_private(%struct.page* %123, i32 0)
  %125 = load %struct.page*, %struct.page** %3, align 8
  %126 = call i32 @ClearPagePrivate(%struct.page* %125)
  %127 = load %struct.page*, %struct.page** %3, align 8
  %128 = call i32 @put_page(%struct.page* %127)
  br label %129

129:                                              ; preds = %120, %117
  %130 = load i64, i64* %11, align 8
  %131 = trunc i64 %130 to i32
  ret i32 %131
}

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i64) #1

declare dso_local i64 @wait_for_direct_io(i32, %struct.inode*, i64*, %struct.iov_iter*, i64, i64, %struct.orangefs_write_range*, i32*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @kfree(%struct.orangefs_write_range*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
