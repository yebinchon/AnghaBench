; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_file.c_jfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_file.c_jfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }
%struct.jfs_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @jfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jfs_inode_info*, align 8
  %8 = alloca %struct.jfs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @dquot_file_open(%struct.inode* %9, %struct.file* %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @S_ISREG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FMODE_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %34)
  store %struct.jfs_inode_info* %35, %struct.jfs_inode_info** %7, align 8
  %36 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %37 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %40 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.jfs_sb_info* @JFS_SBI(i32 %46)
  store %struct.jfs_sb_info* %47, %struct.jfs_sb_info** %8, align 8
  %48 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %49 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %48, i32 0, i32 2
  %50 = call i32 @addressPXD(i32* %49)
  %51 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %52 = call i32 @BLKTOAG(i32 %50, %struct.jfs_sb_info* %51)
  %53 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %54 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %56 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %61 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = call i32 @atomic_inc(i32* %64)
  br label %66

66:                                               ; preds = %43, %33
  %67 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %68 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_irq(i32* %68)
  br label %70

70:                                               ; preds = %66, %28, %21, %15
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dquot_file_open(%struct.inode*, %struct.file*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @BLKTOAG(i32, %struct.jfs_sb_info*) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
