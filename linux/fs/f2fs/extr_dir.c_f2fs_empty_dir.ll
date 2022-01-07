; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_block = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NR_DENTRY_IN_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_dentry_block*, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @dir_blocks(%struct.inode* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i64 @f2fs_has_inline_dentry(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @f2fs_empty_inline_dir(%struct.inode* %15)
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.page* @f2fs_get_lock_data_page(%struct.inode* %23, i64 %24, i32 0)
  store %struct.page* %25, %struct.page** %5, align 8
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i64 @IS_ERR(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.page* %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %57

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %61

37:                                               ; preds = %22
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call %struct.f2fs_dentry_block* @page_address(%struct.page* %38)
  store %struct.f2fs_dentry_block* %39, %struct.f2fs_dentry_block** %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 2, i32* %6, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %7, align 8
  %46 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %45, i32 0, i32 0
  %47 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @find_next_bit_le(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @f2fs_put_page(%struct.page* %50, i32 1)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %61

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %18

60:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %36, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @dir_blocks(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_empty_inline_dir(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_dentry_block* @page_address(%struct.page*) #1

declare dso_local i32 @find_next_bit_le(i32*, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
