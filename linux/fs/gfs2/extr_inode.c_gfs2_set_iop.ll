; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_set_iop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_set_iop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32* }
%struct.gfs2_sbd = type { i32 }

@gfs2_file_iops = common dso_local global i32 0, align 4
@gfs2_file_fops_nolock = common dso_local global i32 0, align 4
@gfs2_file_fops = common dso_local global i32 0, align 4
@gfs2_dir_iops = common dso_local global i32 0, align 4
@gfs2_dir_fops_nolock = common dso_local global i32 0, align 4
@gfs2_dir_fops = common dso_local global i32 0, align 4
@gfs2_symlink_iops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_set_iop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_set_iop(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %5)
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @S_ISREG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  store i32* @gfs2_file_iops, i32** %15, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = call i64 @gfs2_localflocks(%struct.gfs2_sbd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  store i32* @gfs2_file_fops_nolock, i32** %21, align 8
  br label %25

22:                                               ; preds = %13
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  store i32* @gfs2_file_fops, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %63

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @S_ISDIR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  store i32* @gfs2_dir_iops, i32** %32, align 8
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = call i64 @gfs2_localflocks(%struct.gfs2_sbd* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  store i32* @gfs2_dir_fops_nolock, i32** %38, align 8
  br label %42

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32* @gfs2_dir_fops, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %62

43:                                               ; preds = %26
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @S_ISLNK(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i32* @gfs2_symlink_iops, i32** %49, align 8
  br label %61

50:                                               ; preds = %43
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  store i32* @gfs2_file_iops, i32** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @init_special_inode(%struct.inode* %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %50, %47
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %25
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @gfs2_localflocks(%struct.gfs2_sbd*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
