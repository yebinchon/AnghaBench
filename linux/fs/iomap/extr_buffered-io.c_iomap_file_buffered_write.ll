; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_file_buffered_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_file_buffered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.iomap_ops = type { i32 }

@IOMAP_WRITE = common dso_local global i32 0, align 4
@iomap_write_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iomap_file_buffered_write(%struct.kiocb* %0, %struct.iov_iter* %1, %struct.iomap_ops* %2) #0 {
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.iomap_ops*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store %struct.iomap_ops* %2, %struct.iomap_ops** %6, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %38, %3
  %22 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %23 = call i64 @iov_iter_count(%struct.iov_iter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %29 = call i64 @iov_iter_count(%struct.iov_iter* %28)
  %30 = load i32, i32* @IOMAP_WRITE, align 4
  %31 = load %struct.iomap_ops*, %struct.iomap_ops** %6, align 8
  %32 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %33 = load i32, i32* @iomap_write_actor, align 4
  %34 = call i64 @iomap_apply(%struct.inode* %26, i64 %27, i64 %29, i32 %30, %struct.iomap_ops* %31, %struct.iov_iter* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %45

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %21

45:                                               ; preds = %37, %21
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  ret i64 %53
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, %struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
