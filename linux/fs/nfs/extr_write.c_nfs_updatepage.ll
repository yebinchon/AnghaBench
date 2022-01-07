; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_updatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_updatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@NFSIOS_VFSUPDATEPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"NFS:       nfs_updatepage(%pD2 %d@%lld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"NFS:       nfs_updatepage returns %d (isize %lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_updatepage(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_open_context*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %13)
  store %struct.nfs_open_context* %14, %struct.nfs_open_context** %9, align 8
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call %struct.address_space* @page_file_mapping(%struct.page* %15)
  store %struct.address_space* %16, %struct.address_space** %10, align 8
  %17 = load %struct.address_space*, %struct.address_space** %10, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = load i32, i32* @NFSIOS_VFSUPDATEPAGE, align 4
  %22 = call i32 @nfs_inc_stats(%struct.inode* %20, i32 %21)
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = ptrtoint %struct.file* %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call i64 @page_file_offset(%struct.page* %27)
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %26, i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %64

36:                                               ; preds = %4
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = call i64 @nfs_can_extend_write(%struct.file* %37, %struct.page* %38, %struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @nfs_page_length(%struct.page* %46)
  %48 = call i32 @max(i32 %45, i32 %47)
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.nfs_open_context*, %struct.nfs_open_context** %9, align 8
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @nfs_writepage_setup(%struct.nfs_open_context* %50, %struct.page* %51, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.address_space*, %struct.address_space** %10, align 8
  %59 = call i32 @nfs_set_pageerror(%struct.address_space* %58)
  br label %63

60:                                               ; preds = %49
  %61 = load %struct.page*, %struct.page** %6, align 8
  %62 = call i32 @__set_page_dirty_nobuffers(%struct.page* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call i64 @i_size_read(%struct.inode* %66)
  %68 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %67)
  %69 = load i32, i32* %12, align 4
  ret i32 %69
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.address_space* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, ...) #1

declare dso_local i64 @page_file_offset(%struct.page*) #1

declare dso_local i64 @nfs_can_extend_write(%struct.file*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_writepage_setup(%struct.nfs_open_context*, %struct.page*, i32, i32) #1

declare dso_local i32 @nfs_set_pageerror(%struct.address_space*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
