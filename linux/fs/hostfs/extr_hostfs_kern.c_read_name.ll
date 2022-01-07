; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_read_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.hostfs_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@hostfs_link_iops = common dso_local global i32 0, align 4
@hostfs_dir_iops = common dso_local global i32 0, align 4
@hostfs_dir_fops = common dso_local global i32 0, align 4
@hostfs_iops = common dso_local global i32 0, align 4
@hostfs_file_fops = common dso_local global i32 0, align 4
@hostfs_aops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_name(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostfs_stat, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @stat_file(i8* %9, %struct.hostfs_stat* %7, i32 -1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MKDEV(i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %52 [
    i32 130, label %25
    i32 132, label %28
    i32 133, label %33
    i32 134, label %33
    i32 131, label %33
    i32 128, label %33
    i32 129, label %43
  ]

25:                                               ; preds = %15
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 9
  store i32* @hostfs_link_iops, i32** %27, align 8
  br label %55

28:                                               ; preds = %15
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 9
  store i32* @hostfs_dir_iops, i32** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 8
  store i32* @hostfs_dir_fops, i32** %32, align 8
  br label %55

33:                                               ; preds = %15, %15, %15, %15
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @S_IFMT, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @init_special_inode(%struct.inode* %34, i32 %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 9
  store i32* @hostfs_iops, i32** %42, align 8
  br label %55

43:                                               ; preds = %15
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 9
  store i32* @hostfs_iops, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 8
  store i32* @hostfs_file_fops, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 7
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* @hostfs_aops, i32** %51, align 8
  br label %55

52:                                               ; preds = %15
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %43, %33, %28, %25
  %56 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_nlink(%struct.inode* %64, i32 %66)
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i_uid_write(%struct.inode* %68, i32 %70)
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i_gid_write(%struct.inode* %72, i32 %74)
  %76 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @timespec_to_timespec64(i32 %77)
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @timespec_to_timespec64(i32 %82)
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @timespec_to_timespec64(i32 %87)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %55, %52, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @stat_file(i8*, %struct.hostfs_stat*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
