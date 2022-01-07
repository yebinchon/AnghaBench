; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_full_dirent* }
%struct.jffs2_full_dirent = type { i64, %struct.jffs2_full_dirent* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jffs2_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_inode_info*, align 8
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_full_dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %14)
  store %struct.jffs2_sb_info* %15, %struct.jffs2_sb_info** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %16)
  store %struct.jffs2_inode_info* %17, %struct.jffs2_inode_info** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  %20 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %19)
  store %struct.jffs2_inode_info* %20, %struct.jffs2_inode_info** %8, align 8
  %21 = call i32 (...) @JFFS2_NOW()
  store i32 %21, i32* %11, align 4
  %22 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %23 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %22, i32 0, i32 0
  %24 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %23, align 8
  store %struct.jffs2_full_dirent* %24, %struct.jffs2_full_dirent** %9, align 8
  br label %25

25:                                               ; preds = %37, %2
  %26 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %27 = icmp ne %struct.jffs2_full_dirent* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %30 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOTEMPTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %39 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %38, i32 0, i32 1
  %40 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %39, align 8
  store %struct.jffs2_full_dirent* %40, %struct.jffs2_full_dirent** %9, align 8
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %43 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @jffs2_do_unlink(%struct.jffs2_sb_info* %42, %struct.jffs2_inode_info* %43, i32 %47, i32 %51, %struct.jffs2_inode_info* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ITIME(i32 %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call %struct.inode* @d_inode(%struct.dentry* %64)
  %66 = call i32 @clear_nlink(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @drop_nlink(%struct.inode* %67)
  br label %69

69:                                               ; preds = %57, %41
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %33
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @JFFS2_NOW(...) #1

declare dso_local i32 @jffs2_do_unlink(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, %struct.jffs2_inode_info*, i32) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
