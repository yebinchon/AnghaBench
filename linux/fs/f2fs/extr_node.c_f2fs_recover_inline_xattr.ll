; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_inline_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_inline_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32 }

@F2FS_INLINE_XATTR = common dso_local global i32 0, align 4
@FI_INLINE_XATTR = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_recover_inline_xattr(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.f2fs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @F2FS_I_SB(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.page* @f2fs_get_node_page(i32 %11, i32 %14)
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @F2FS_I_SB(%struct.inode* %16)
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = call i32 @IS_ERR(%struct.page* %18)
  %20 = call i32 @f2fs_bug_on(i32 %17, i32 %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %21)
  store %struct.f2fs_inode* %22, %struct.f2fs_inode** %9, align 8
  %23 = load %struct.f2fs_inode*, %struct.f2fs_inode** %9, align 8
  %24 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @F2FS_INLINE_XATTR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load i32, i32* @FI_INLINE_XATTR, align 4
  %32 = call i32 @set_inode_flag(%struct.inode* %30, i32 %31)
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load i32, i32* @FI_INLINE_XATTR, align 4
  %36 = call i32 @clear_inode_flag(%struct.inode* %34, i32 %35)
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i8* @inline_xattr_addr(%struct.inode* %38, %struct.page* %39)
  store i8* %40, i8** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i8* @inline_xattr_addr(%struct.inode* %41, %struct.page* %42)
  store i8* %43, i8** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = call i64 @inline_xattr_size(%struct.inode* %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = load i32, i32* @NODE, align 4
  %48 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %46, i32 %47, i32 1, i32 1)
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %37, %33
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @f2fs_update_inode(%struct.inode* %54, %struct.page* %55)
  %57 = load %struct.page*, %struct.page** %8, align 8
  %58 = call i32 @f2fs_put_page(%struct.page* %57, i32 1)
  ret void
}

declare dso_local %struct.page* @f2fs_get_node_page(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i8* @inline_xattr_addr(%struct.inode*, %struct.page*) #1

declare dso_local i64 @inline_xattr_size(%struct.inode*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
