; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_segments_dirty_segments_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_segments_dirty_segments_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segments_attr = type { i32 }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_sustat = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to get segment stat: err=%d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_segments_attr*, %struct.the_nilfs*, i8*)* @nilfs_segments_dirty_segments_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segments_dirty_segments_show(%struct.nilfs_segments_attr* %0, %struct.the_nilfs* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_segments_attr*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nilfs_sustat, align 4
  %9 = alloca i32, align 4
  store %struct.nilfs_segments_attr* %0, %struct.nilfs_segments_attr** %5, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 1
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nilfs_sufile_get_stat(i32 %15, %struct.nilfs_sustat* %8)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 1
  %19 = call i32 @up_read(i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @nilfs_msg(i32 %25, i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_sufile_get_stat(i32, %struct.nilfs_sustat*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
