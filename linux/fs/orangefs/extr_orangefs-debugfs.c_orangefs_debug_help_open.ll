; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_orangefs_debug_help_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_orangefs_debug_help_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.seq_file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GOSSIP_DEBUGFS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"orangefs_debug_help_open: start\0A\00", align 1
@orangefs_debug_disabled = common dso_local global i64 0, align 8
@help_debug_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"orangefs_debug_help_open: rc:%d:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @orangefs_debug_help_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_debug_help_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GOSSIP_DEBUGFS_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @gossip_debug(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @orangefs_debug_disabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call i32 @seq_open(%struct.file* %15, i32* @help_debug_ops)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %29

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.seq_file*
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %19, %13
  %30 = load i32, i32* @GOSSIP_DEBUGFS_DEBUG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, ...) @gossip_debug(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @gossip_debug(i32, i8*, ...) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
