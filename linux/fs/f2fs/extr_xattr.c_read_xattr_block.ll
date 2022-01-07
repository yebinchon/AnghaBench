; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_read_xattr_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_read_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VALID_XATTR_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @read_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_xattr_block(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @inline_xattr_size(%struct.inode* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %19, i32 %20)
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = call i64 @IS_ERR(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = call i32 @PTR_ERR(%struct.page* %26)
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = call i8* @page_address(%struct.page* %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @VALID_XATTR_BLOCK_SIZE, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i32 @f2fs_put_page(%struct.page* %38, i32 1)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @inline_xattr_size(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
