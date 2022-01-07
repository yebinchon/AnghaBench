; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_prepare_clean_segments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_prepare_clean_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32 }
%struct.nilfs_argv = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot delete checkpoints\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot delete virtual blocks from DAT file\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot mark copying blocks dirty\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"error %d preparing GC: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ioctl_prepare_clean_segments(%struct.the_nilfs* %0, %struct.nilfs_argv* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_argv*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.nilfs_argv* %1, %struct.nilfs_argv** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %11 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %12 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %11, i64 1
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @nilfs_ioctl_delete_checkpoints(%struct.the_nilfs* %10, %struct.nilfs_argv* %12, i8* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %22 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %23 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %22, i64 2
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @nilfs_ioctl_free_vblocknrs(%struct.the_nilfs* %21, %struct.nilfs_argv* %23, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %33 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %34 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %33, i64 3
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @nilfs_ioctl_mark_blocks_dirty(%struct.the_nilfs* %32, %struct.nilfs_argv* %34, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %41, %30, %19
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @nilfs_msg(i32 %46, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @nilfs_ioctl_delete_checkpoints(%struct.the_nilfs*, %struct.nilfs_argv*, i8*) #1

declare dso_local i32 @nilfs_ioctl_free_vblocknrs(%struct.the_nilfs*, %struct.nilfs_argv*, i8*) #1

declare dso_local i32 @nilfs_ioctl_mark_blocks_dirty(%struct.the_nilfs*, %struct.nilfs_argv*, i8*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
