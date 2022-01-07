; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_data_start.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_data_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iov_iter*, i32*, i64*)* @data_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_start(%struct.iov_iter* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %10 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %13 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %19 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @allocated(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %17
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %35 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @next_idx(i32 %33, %struct.TYPE_2__* %36)
  store i32 %37, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %32, %28, %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  ret void
}

declare dso_local i32 @allocated(i32*) #1

declare dso_local i32 @next_idx(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
