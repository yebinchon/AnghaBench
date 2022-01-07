; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.hfsplus_sb_info = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hfsplus_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.hfsplus_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOTEMPTY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %24 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = call i32 @hfsplus_delete_cat(i32 %28, %struct.inode* %29, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %47

36:                                               ; preds = %22
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @clear_nlink(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @current_time(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @hfsplus_delete_inode(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @mark_inode_dirty(%struct.inode* %45)
  br label %47

47:                                               ; preds = %36, %35
  %48 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfsplus_delete_cat(i32, %struct.inode*, i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
