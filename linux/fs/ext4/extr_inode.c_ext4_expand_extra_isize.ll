; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_expand_extra_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_expand_extra_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }

@EXT4_STATE_NO_EXPAND = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_expand_extra_isize(%struct.inode* %0, i32 %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_iloc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %14 = call i64 @ext4_test_inode_state(%struct.inode* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brelse(i32 %19)
  %21 = load i32, i32* @EOVERFLOW, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* @EXT4_HT_INODE, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %28)
  %30 = call i32* @ext4_journal_start(%struct.inode* %24, i32 %25, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %38 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @brelse(i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %23
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @ext4_write_lock_xattr(%struct.inode* %43, i32* %9)
  %45 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BUFFER_TRACE(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %51 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ext4_journal_get_write_access(i32* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %58 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @brelse(i32 %59)
  br label %78

61:                                               ; preds = %42
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @__ext4_expand_extra_isize(%struct.inode* %62, i32 %63, %struct.ext4_iloc* %64, i32* %65, i32* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %70 = call i32 @ext4_mark_iloc_dirty(i32* %67, %struct.inode* %68, %struct.ext4_iloc* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %61
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = call i32 @ext4_write_unlock_xattr(%struct.inode* %76, i32* %9)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @ext4_journal_stop(i32* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %34, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local i32 @__ext4_expand_extra_isize(%struct.inode*, i32, %struct.ext4_iloc*, i32*, i32*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
