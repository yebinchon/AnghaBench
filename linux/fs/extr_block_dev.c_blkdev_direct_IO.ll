; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @blkdev_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %7 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %8 = load i32, i32* @BIO_MAX_PAGES, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @iov_iter_npages(%struct.iov_iter* %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %16 = call i64 @is_sync_kiocb(%struct.kiocb* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BIO_MAX_PAGES, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__blkdev_direct_IO_simple(%struct.kiocb* %23, %struct.iov_iter* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %18, %14
  %28 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BIO_MAX_PAGES, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  %33 = call i32 @__blkdev_direct_IO(%struct.kiocb* %28, %struct.iov_iter* %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %22, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local i64 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @__blkdev_direct_IO_simple(%struct.kiocb*, %struct.iov_iter*, i32) #1

declare dso_local i32 @__blkdev_direct_IO(%struct.kiocb*, %struct.iov_iter*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
