; ModuleID = '/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @romfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @romfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i8* @kmap(%struct.page* %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i64 @page_offset(%struct.page* %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @i_size_read(%struct.inode* %28)
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @PAGE_SIZE, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %9, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call %struct.TYPE_4__* @ROMFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @romfs_dev_read(i32 %54, i64 %55, i8* %56, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %44
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = call i32 @SetPageError(%struct.page* %62)
  store i64 0, i64* %9, align 8
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %44
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr i8, i8* %72, i64 %73
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %75, %76
  %78 = call i32 @memset(i8* %74, i32 0, i64 %77)
  br label %79

79:                                               ; preds = %71, %67
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @SetPageUptodate(%struct.page* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.page*, %struct.page** %5, align 8
  %87 = call i32 @flush_dcache_page(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %5, align 8
  %89 = call i32 @kunmap(%struct.page* %88)
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = call i32 @unlock_page(%struct.page* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @ROMFS_I(%struct.inode*) #1

declare dso_local i32 @romfs_dev_read(i32, i64, i8*, i64) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
