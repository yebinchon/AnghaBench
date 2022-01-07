; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_do_read_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_do_read_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_do_read_inline_data(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i64 @PageUptodate(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @F2FS_P_SB(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @f2fs_bug_on(i32 %19, i32 %22)
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @MAX_INLINE_DATA(%struct.inode* %25)
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @zero_user_segment(%struct.page* %24, i32 %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i8* @inline_data_addr(%struct.inode* %29, %struct.page* %30)
  store i8* %31, i8** %6, align 8
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @MAX_INLINE_DATA(%struct.inode* %36)
  %38 = call i32 @memcpy(i8* %34, i8* %35, i32 %37)
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @flush_dcache_page(%struct.page* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @kunmap_atomic(i8* %41)
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i64 @PageUptodate(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %17
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @SetPageUptodate(%struct.page* %47)
  br label %49

49:                                               ; preds = %16, %46, %17
  ret void
}

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
