; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_queue_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_queue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }
%struct.io_uring_sqe = type { i32 }
%struct.io_data = type { i32, %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, %struct.io_data* }

@infd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_uring*, i8*, i8*)* @queue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_read(%struct.io_uring* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_uring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.io_uring_sqe*, align 8
  %9 = alloca %struct.io_data*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr i8, i8* %10, i64 48
  %12 = call %struct.io_data* @malloc(i8* %11)
  store %struct.io_data* %12, %struct.io_data** %9, align 8
  %13 = load %struct.io_data*, %struct.io_data** %9, align 8
  %14 = icmp ne %struct.io_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.io_uring*, %struct.io_uring** %5, align 8
  %18 = call %struct.io_uring_sqe* @io_uring_get_sqe(%struct.io_uring* %17)
  store %struct.io_uring_sqe* %18, %struct.io_uring_sqe** %8, align 8
  %19 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %20 = icmp ne %struct.io_uring_sqe* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.io_data*, %struct.io_data** %9, align 8
  %23 = call i32 @free(%struct.io_data* %22)
  store i32 1, i32* %4, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.io_data*, %struct.io_data** %9, align 8
  %26 = getelementptr inbounds %struct.io_data, %struct.io_data* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.io_data*, %struct.io_data** %9, align 8
  %29 = getelementptr inbounds %struct.io_data, %struct.io_data* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.io_data*, %struct.io_data** %9, align 8
  %31 = getelementptr inbounds %struct.io_data, %struct.io_data* %30, i32 0, i32 4
  store i8* %27, i8** %31, align 8
  %32 = load %struct.io_data*, %struct.io_data** %9, align 8
  %33 = getelementptr inbounds %struct.io_data, %struct.io_data* %32, i64 1
  %34 = load %struct.io_data*, %struct.io_data** %9, align 8
  %35 = getelementptr inbounds %struct.io_data, %struct.io_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.io_data* %33, %struct.io_data** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.io_data*, %struct.io_data** %9, align 8
  %39 = getelementptr inbounds %struct.io_data, %struct.io_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.io_data*, %struct.io_data** %9, align 8
  %43 = getelementptr inbounds %struct.io_data, %struct.io_data* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %45 = load i32, i32* @infd, align 4
  %46 = load %struct.io_data*, %struct.io_data** %9, align 8
  %47 = getelementptr inbounds %struct.io_data, %struct.io_data* %46, i32 0, i32 1
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @io_uring_prep_readv(%struct.io_uring_sqe* %44, i32 %45, %struct.TYPE_2__* %47, i32 1, i8* %48)
  %50 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %51 = load %struct.io_data*, %struct.io_data** %9, align 8
  %52 = call i32 @io_uring_sqe_set_data(%struct.io_uring_sqe* %50, %struct.io_data* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %24, %21, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.io_data* @malloc(i8*) #1

declare dso_local %struct.io_uring_sqe* @io_uring_get_sqe(%struct.io_uring*) #1

declare dso_local i32 @free(%struct.io_data*) #1

declare dso_local i32 @io_uring_prep_readv(%struct.io_uring_sqe*, i32, %struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @io_uring_sqe_set_data(%struct.io_uring_sqe*, %struct.io_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
