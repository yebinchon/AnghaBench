; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_cache_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_cache_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_conn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @fuse_cache_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_cache_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %7, align 8
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = call i64 @iov_iter_count(%struct.iov_iter* %26)
  %28 = add nsw i64 %25, %27
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i64 @i_size_read(%struct.inode* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %22, %2
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %35 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @fuse_update_attributes(%struct.inode* %33, %struct.TYPE_4__* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %45 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %46 = call i32 @generic_file_read_iter(%struct.kiocb* %44, %struct.iov_iter* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, %struct.TYPE_4__*) #1

declare dso_local i32 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
