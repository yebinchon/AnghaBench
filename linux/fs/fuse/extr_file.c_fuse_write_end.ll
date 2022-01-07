; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @fuse_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.page*, %struct.page** %13, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %15, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  br label %55

25:                                               ; preds = %7
  %26 = load %struct.page*, %struct.page** %13, align 8
  %27 = call i32 @PageUptodate(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.page*, %struct.page** %13, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @zero_user_segment(%struct.page* %40, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = call i32 @SetPageUptodate(%struct.page* %45)
  br label %47

47:                                               ; preds = %44, %25
  %48 = load %struct.inode*, %struct.inode** %15, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = call i32 @fuse_write_update_size(%struct.inode* %48, i32 %51)
  %53 = load %struct.page*, %struct.page** %13, align 8
  %54 = call i32 @set_page_dirty(%struct.page* %53)
  br label %55

55:                                               ; preds = %47, %24
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = call i32 @unlock_page(%struct.page* %56)
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i32 @put_page(%struct.page* %58)
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i64, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
