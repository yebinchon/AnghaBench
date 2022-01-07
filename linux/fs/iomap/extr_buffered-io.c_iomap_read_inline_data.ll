; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.page*, %struct.iomap*)* @iomap_read_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_read_inline_data(%struct.inode* %0, %struct.page* %1, %struct.iomap* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.iomap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.iomap* %2, %struct.iomap** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i64 @i_size_read(%struct.inode* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i64 @PageUptodate(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load %struct.iomap*, %struct.iomap** %6, align 8
  %23 = getelementptr inbounds %struct.iomap, %struct.iomap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @offset_in_page(i32 %24)
  %26 = sub i64 %21, %25
  %27 = icmp ugt i64 %20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i8* @kmap_atomic(%struct.page* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.iomap*, %struct.iomap** %6, align 8
  %34 = getelementptr inbounds %struct.iomap, %struct.iomap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i8* %32, i32 %35, i64 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr i8, i8* %38, i64 %39
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %41, %42
  %44 = call i32 @memset(i8* %40, i32 0, i64 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @kunmap_atomic(i8* %45)
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @SetPageUptodate(%struct.page* %47)
  br label %49

49:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
