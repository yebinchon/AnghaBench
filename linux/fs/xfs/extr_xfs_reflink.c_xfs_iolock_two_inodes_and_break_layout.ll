; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_iolock_two_inodes_and_break_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_iolock_two_inodes_and_break_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@I_MUTEX_NONDIR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*)* @xfs_iolock_two_inodes_and_break_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_iolock_two_inodes_and_break_layout(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = icmp ugt %struct.inode* %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @swap(%struct.inode* %11, %struct.inode* %12)
  br label %14

14:                                               ; preds = %10, %2
  br label %15

15:                                               ; preds = %73, %48, %14
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @break_layout(%struct.inode* %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = icmp ne %struct.inode* %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @break_layout(%struct.inode* %27, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @inode_lock(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @break_layout(%struct.inode* %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call i32 @inode_unlock(%struct.inode* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EWOULDBLOCK, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %15

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %77

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = icmp eq %struct.inode* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %77

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load i32, i32* @I_MUTEX_NONDIR2, align 4
  %59 = call i32 @inode_lock_nested(%struct.inode* %57, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call i32 @break_layout(%struct.inode* %60, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = call i32 @inode_unlock(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i32 @inode_unlock(%struct.inode* %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @EWOULDBLOCK, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %15

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %74, %55, %49, %31, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @swap(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @break_layout(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
