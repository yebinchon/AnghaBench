; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_move_rehashed_dirents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_move_rehashed_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FI_INLINE_DENTRY = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i8*)* @f2fs_move_rehashed_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_move_rehashed_dirents(%struct.inode* %0, %struct.page* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @F2FS_I_SB(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @MAX_INLINE_DATA(%struct.inode* %12)
  %14 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %15 = call i8* @f2fs_kmalloc(i32 %11, i32 %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i32 @f2fs_put_page(%struct.page* %19, i32 1)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @MAX_INLINE_DATA(%struct.inode* %26)
  %28 = call i32 @memcpy(i8* %24, i8* %25, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @f2fs_truncate_inline_inode(%struct.inode* %29, %struct.page* %30, i32 0)
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @unlock_page(%struct.page* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @f2fs_add_inline_entries(%struct.inode* %34, i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %63

40:                                               ; preds = %23
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i32 @lock_page(%struct.page* %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @stat_dec_inline_dir(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load i32, i32* @FI_INLINE_DENTRY, align 4
  %47 = call i32 @clear_inode_flag(%struct.inode* %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @F2FS_I_SB(%struct.inode* %48)
  %50 = call i32 @f2fs_sb_has_flexible_inline_xattr(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @f2fs_has_inline_xattr(%struct.inode* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %52, %40
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kvfree(i8* %61)
  store i32 0, i32* %4, align 4
  br label %87

63:                                               ; preds = %39
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = call i32 @lock_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = load i32, i32* @NODE, align 4
  %68 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %66, i32 %67, i32 1, i32 1)
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call i32 @MAX_INLINE_DATA(%struct.inode* %71)
  %73 = call i32 @memcpy(i8* %69, i8* %70, i32 %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @f2fs_i_depth_write(%struct.inode* %74, i32 0)
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @MAX_INLINE_DATA(%struct.inode* %77)
  %79 = call i32 @f2fs_i_size_write(%struct.inode* %76, i32 %78)
  %80 = load %struct.page*, %struct.page** %6, align 8
  %81 = call i32 @set_page_dirty(%struct.page* %80)
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = call i32 @f2fs_put_page(%struct.page* %82, i32 1)
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @kvfree(i8* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %63, %60, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @f2fs_kmalloc(i32, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @f2fs_truncate_inline_inode(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @f2fs_add_inline_entries(%struct.inode*, i8*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @stat_dec_inline_dir(%struct.inode*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_sb_has_flexible_inline_xattr(i32) #1

declare dso_local i32 @f2fs_has_inline_xattr(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_i_depth_write(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
