; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_should_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_should_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_list = type { i32, i32, i32* }
%struct.kiocb = type { i32, i32* }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.async_list*, %struct.kiocb*)* @io_should_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_should_merge(%struct.async_list* %0, %struct.kiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.async_list*, align 8
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.async_list* %0, %struct.async_list** %4, align 8
  store %struct.kiocb* %1, %struct.kiocb** %5, align 8
  %8 = load %struct.async_list*, %struct.async_list** %4, align 8
  %9 = getelementptr inbounds %struct.async_list, %struct.async_list* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.async_list*, %struct.async_list** %4, align 8
  %17 = getelementptr inbounds %struct.async_list, %struct.async_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.async_list*, %struct.async_list** %4, align 8
  %22 = getelementptr inbounds %struct.async_list, %struct.async_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.async_list*, %struct.async_list** %4, align 8
  %25 = getelementptr inbounds %struct.async_list, %struct.async_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @PAGE_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %15
  %39 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %40 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %49

45:                                               ; preds = %38, %15
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.async_list*, %struct.async_list** %4, align 8
  %48 = getelementptr inbounds %struct.async_list, %struct.async_list* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
