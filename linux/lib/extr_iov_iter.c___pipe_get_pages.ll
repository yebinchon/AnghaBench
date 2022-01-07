; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c___pipe_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c___pipe_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iov_iter*, i64, %struct.page**, i32, i64*)* @__pipe_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__pipe_get_pages(%struct.iov_iter* %0, i64 %1, %struct.page** %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.pipe_inode_info*, align 8
  %13 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.page** %2, %struct.page*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %15 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %14, i32 0, i32 0
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %15, align 8
  store %struct.pipe_inode_info* %16, %struct.pipe_inode_info** %12, align 8
  %17 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = call i64 @push_pipe(%struct.iov_iter* %17, i64 %18, i32* %10, i64* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* @EFAULT, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %6, align 8
  br label %58

26:                                               ; preds = %5
  %27 = load i64, i64* %13, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %35, %26
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %37 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.page*
  %46 = load %struct.page**, %struct.page*** %9, align 8
  %47 = getelementptr inbounds %struct.page*, %struct.page** %46, i32 1
  store %struct.page** %47, %struct.page*** %9, align 8
  store %struct.page* %45, %struct.page** %46, align 8
  %48 = ptrtoint %struct.page* %45 to i32
  %49 = call i32 @get_page(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %52 = call i32 @next_idx(i32 %50, %struct.pipe_inode_info* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %13, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %23
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i64 @push_pipe(%struct.iov_iter*, i64, i32*, i64*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @next_idx(i32, %struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
