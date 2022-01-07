; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_warn_segment_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_warn_segment_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"I/O error reading segment\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Magic number mismatch\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Sequence number mismatch\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Checksum error in super root\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Checksum error in segment payload\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Inconsistency found\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"No super root in the last segment\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"unrecognized segment error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid segment: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_warn_segment_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_warn_segment_error(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %20 [
    i32 131, label %8
    i32 130, label %14
    i32 129, label %15
    i32 133, label %16
    i32 134, label %17
    i32 132, label %18
    i32 128, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* @KERN_ERR, align 4
  %11 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %9, i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %27

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %27

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %27

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %27

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %27

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %21, i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %19, %18, %17, %16, %15, %14
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_WARNING, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %20, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
