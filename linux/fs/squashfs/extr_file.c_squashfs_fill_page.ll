; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_fill_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_fill_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.squashfs_cache_entry = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @squashfs_fill_page(%struct.page* %0, %struct.squashfs_cache_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.squashfs_cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.squashfs_cache_entry* %1, %struct.squashfs_cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i8* @kmap_atomic(%struct.page* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @squashfs_copy_data(i8* %13, %struct.squashfs_cache_entry* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %22, %24
  %26 = call i32 @memset(i8* %21, i32 0, i64 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @kunmap_atomic(i8* %27)
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @flush_dcache_page(%struct.page* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @SetPageUptodate(%struct.page* %35)
  br label %40

37:                                               ; preds = %4
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @SetPageError(%struct.page* %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @squashfs_copy_data(i8*, %struct.squashfs_cache_entry*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
