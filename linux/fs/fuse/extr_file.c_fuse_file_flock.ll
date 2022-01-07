; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.file_lock = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @fuse_file_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_flock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %8, align 8
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %16 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %22 = call i32 @locks_lock_file_wait(%struct.file* %20, %struct.file_lock* %21)
  store i32 %22, i32* %9, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.fuse_file*, %struct.fuse_file** %25, align 8
  store %struct.fuse_file* %26, %struct.fuse_file** %10, align 8
  %27 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %31 = call i32 @fuse_setlk(%struct.file* %29, %struct.file_lock* %30, i32 1)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @fuse_setlk(%struct.file*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
