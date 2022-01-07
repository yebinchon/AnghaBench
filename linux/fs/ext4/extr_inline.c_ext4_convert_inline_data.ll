; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_convert_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_convert_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32* }

@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_convert_inline_data(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_iloc, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @ext4_has_inline_data(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %15 = call i32 @ext4_clear_inode_state(%struct.inode* %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %17)
  store i32 %18, i32* %5, align 4
  %19 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %8, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 @ext4_get_inode_loc(%struct.inode* %20, %struct.ext4_iloc* %8)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %16
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32* @ext4_journal_start(%struct.inode* %27, i32 %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i32 @ext4_write_lock_xattr(%struct.inode* %38, i32* %6)
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call i64 @ext4_has_inline_data(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i32 @ext4_convert_inline_data_nolock(i32* %44, %struct.inode* %45, %struct.ext4_iloc* %8)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i32 @ext4_write_unlock_xattr(%struct.inode* %48, i32* %6)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ext4_journal_stop(i32* %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @brelse(i32* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %24, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_convert_inline_data_nolock(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
