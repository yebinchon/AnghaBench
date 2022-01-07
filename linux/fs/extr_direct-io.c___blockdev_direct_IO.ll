; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c___blockdev_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c___blockdev_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.inode = type { i32 }
%struct.block_device = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.iov_iter = type { i32 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blockdev_direct_IO(%struct.kiocb* %0, %struct.inode* %1, %struct.block_device* %2, %struct.iov_iter* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.block_device*, align 8
  %12 = alloca %struct.iov_iter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.block_device* %2, %struct.block_device** %11, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.block_device*, %struct.block_device** %11, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @prefetch(i8* %20)
  %22 = load %struct.block_device*, %struct.block_device** %11, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @prefetch(i8* %24)
  %26 = load %struct.block_device*, %struct.block_device** %11, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @prefetch(i8* %31)
  %33 = load %struct.kiocb*, %struct.kiocb** %9, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = load %struct.block_device*, %struct.block_device** %11, align 8
  %36 = load %struct.iov_iter*, %struct.iov_iter** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @do_blockdev_direct_IO(%struct.kiocb* %33, %struct.inode* %34, %struct.block_device* %35, %struct.iov_iter* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @do_blockdev_direct_IO(%struct.kiocb*, %struct.inode*, %struct.block_device*, %struct.iov_iter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
