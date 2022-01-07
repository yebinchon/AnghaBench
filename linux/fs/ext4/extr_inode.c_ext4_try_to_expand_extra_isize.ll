; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_try_to_expand_extra_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_try_to_expand_extra_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }

@EXT4_STATE_NO_EXPAND = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32*)* @ext4_try_to_expand_extra_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_try_to_expand_extra_isize(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %15 = call i64 @ext4_test_inode_state(%struct.inode* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EOVERFLOW, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @ext4_handle_valid(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %28)
  %30 = call i64 @jbd2_journal_extend(i32* %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %24, %20
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i64 @ext4_write_trylock_xattr(%struct.inode* %36, i32* %10)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @__ext4_expand_extra_isize(%struct.inode* %43, i32 %44, %struct.ext4_iloc* %6, i32* %45, i32* %10)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @ext4_write_unlock_xattr(%struct.inode* %47, i32* %10)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %39, %32, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @ext4_handle_valid(i32*) #1

declare dso_local i64 @jbd2_journal_extend(i32*, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @ext4_write_trylock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @__ext4_expand_extra_isize(%struct.inode*, i32, %struct.ext4_iloc*, i32*, i32*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
