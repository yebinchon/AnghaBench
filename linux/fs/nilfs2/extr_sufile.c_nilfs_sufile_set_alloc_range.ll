; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_set_alloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_set_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_sufile_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_set_alloc_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nilfs_sufile_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode* %10)
  store %struct.nilfs_sufile_info* %11, %struct.nilfs_sufile_info** %7, align 8
  %12 = load i32, i32* @ERANGE, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %7, align 8
  %30 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %7, align 8
  %33 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %23, %3
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @up_write(i32* %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
