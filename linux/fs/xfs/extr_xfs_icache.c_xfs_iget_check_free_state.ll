; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_iget_check_free_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_iget_check_free_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@XFS_IGET_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Corruption detected! Free inode 0x%llx not marked free! (mode 0x%x)\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Corruption detected! Free inode 0x%llx has blocks allocated!\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i32)* @xfs_iget_check_free_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_iget_check_free_state(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XFS_IGET_CREATE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %24 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, i32, ...) @xfs_warn(i32 %19, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %26)
  %28 = load i32, i32* @EFSCORRUPTED, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %10
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, i32, ...) @xfs_warn(i32 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EFSCORRUPTED, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %57

47:                                               ; preds = %2
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %49 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %46, %36, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_warn(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
