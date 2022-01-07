; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_encrypt_one_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_encrypt_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { %struct.page*, i32, i32, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_io_info*)* @encrypt_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_one_page(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %7 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load i32, i32* @GFP_NOFS, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @f2fs_encrypted_file(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %22 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @f2fs_wait_on_block_writeback(%struct.inode* %20, i32 %23)
  br label %25

25:                                               ; preds = %47, %19
  %26 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %27 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.page* @fscrypt_encrypt_pagecache_blocks(%struct.TYPE_4__* %28, i32 %29, i32 0, i32 %30)
  %32 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %32, i32 0, i32 0
  store %struct.page* %31, %struct.page** %33, align 8
  %34 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %35 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %34, i32 0, i32 0
  %36 = load %struct.page*, %struct.page** %35, align 8
  %37 = call i64 @IS_ERR(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %25
  %40 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %41 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %40, i32 0, i32 0
  %42 = load %struct.page*, %struct.page** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.page* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %49 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @f2fs_flush_merged_writes(i32 %50)
  %52 = load i32, i32* @BLK_RW_ASYNC, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 50
  %55 = call i32 @congestion_wait(i32 %52, i32 %54)
  %56 = load i32, i32* @__GFP_NOFAIL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %25

59:                                               ; preds = %39
  %60 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %61 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %60, i32 0, i32 0
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.page* %62)
  store i32 %63, i32* %2, align 4
  br label %92

64:                                               ; preds = %25
  %65 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %66 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @META_MAPPING(i32 %67)
  %69 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %70 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.page* @find_lock_page(i32 %68, i32 %71)
  store %struct.page* %72, %struct.page** %5, align 8
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = icmp ne %struct.page* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %64
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i64 @PageUptodate(%struct.page* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i32 @page_address(%struct.page* %80)
  %82 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %83 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %82, i32 0, i32 0
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = call i32 @page_address(%struct.page* %84)
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i32 @memcpy(i32 %81, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %75
  %89 = load %struct.page*, %struct.page** %5, align 8
  %90 = call i32 @f2fs_put_page(%struct.page* %89, i32 1)
  br label %91

91:                                               ; preds = %88, %64
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %59, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @f2fs_encrypted_file(%struct.inode*) #1

declare dso_local i32 @f2fs_wait_on_block_writeback(%struct.inode*, i32) #1

declare dso_local %struct.page* @fscrypt_encrypt_pagecache_blocks(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_flush_merged_writes(i32) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i32 @META_MAPPING(i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
