; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_checkpoints_checkpoints_number_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_checkpoints_checkpoints_number_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_checkpoints_attr = type { i32 }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_cpstat = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to get checkpoint stat: err=%d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_checkpoints_attr*, %struct.the_nilfs*, i8*)* @nilfs_checkpoints_checkpoints_number_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_checkpoints_checkpoints_number_show(%struct.nilfs_checkpoints_attr* %0, %struct.the_nilfs* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_checkpoints_attr*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nilfs_cpstat, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_checkpoints_attr* %0, %struct.nilfs_checkpoints_attr** %5, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 1
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nilfs_cpfile_get_stat(i32 %16, %struct.nilfs_cpstat* %9)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 1
  %20 = call i32 @up_read(i32* %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @nilfs_msg(i32 %26, i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_cpfile_get_stat(i32, %struct.nilfs_cpstat*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
