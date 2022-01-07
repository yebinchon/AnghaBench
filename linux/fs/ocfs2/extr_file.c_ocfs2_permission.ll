; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }

@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Another case of recursive locking:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_lock_holder, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ECHILD, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %17, i32* null, i32 0, %struct.ocfs2_lock_holder* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @ML_ERROR, align 4
  %28 = call i32 @mlog(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @dump_stack()
  br label %30

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @generic_permission(%struct.inode* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %35, i32 0, %struct.ocfs2_lock_holder* %8, i32 %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, i32*, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
