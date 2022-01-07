; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i64 }

@F_CANCELLK = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @fuse_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @F_CANCELLK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @F_GETLK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %24 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %30 = call i32 @posix_test_lock(%struct.file* %28, %struct.file_lock* %29)
  store i32 0, i32* %9, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %34 = call i32 @fuse_getlk(%struct.file* %32, %struct.file_lock* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %44 = call i32 @posix_lock_file(%struct.file* %42, %struct.file_lock* %43, i32* null)
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %48 = call i32 @fuse_setlk(%struct.file* %46, %struct.file_lock* %47, i32 0)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @fuse_getlk(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

declare dso_local i32 @fuse_setlk(%struct.file*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
