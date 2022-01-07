; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___recover_inline_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___recover_inline_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@NODE = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.page*)* @__recover_inline_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__recover_inline_status(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i8* @inline_data_addr(%struct.inode* %8, %struct.page* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @MAX_INLINE_DATA(%struct.inode* %14)
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %24, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load i32, i32* @NODE, align 4
  %31 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %29, i32 %30, i32 1, i32 1)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load i32, i32* @FI_DATA_EXIST, align 4
  %34 = call i32 @set_inode_flag(%struct.inode* %32, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @F2FS_INODE(%struct.page* %36)
  %38 = call i32 @set_raw_inline(%struct.inode* %35, i32 %37)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @set_page_dirty(%struct.page* %39)
  br label %43

41:                                               ; preds = %23
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %28
  ret void
}

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @set_raw_inline(%struct.inode*, i32) #1

declare dso_local i32 @F2FS_INODE(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
