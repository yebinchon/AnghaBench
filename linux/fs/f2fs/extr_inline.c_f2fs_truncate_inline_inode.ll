; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_truncate_inline_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_truncate_inline_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@NODE = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_truncate_inline_inode(%struct.inode* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i64 @MAX_INLINE_DATA(%struct.inode* %9)
  %11 = icmp sge i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i8* @inline_data_addr(%struct.inode* %14, %struct.page* %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = load i32, i32* @NODE, align 4
  %19 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %17, i32 %18, i32 1, i32 1)
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i64 @MAX_INLINE_DATA(%struct.inode* %23)
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @memset(i8* %22, i32 0, i64 %26)
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @set_page_dirty(%struct.page* %28)
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load i32, i32* @FI_DATA_EXIST, align 4
  %35 = call i32 @clear_inode_flag(%struct.inode* %33, i32 %34)
  br label %36

36:                                               ; preds = %12, %32, %13
  ret void
}

declare dso_local i64 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
