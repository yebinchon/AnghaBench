; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_hwbm.c_hwbm_pool_refill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_hwbm.c_hwbm_pool_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbm_pool = type { i32, i64 (%struct.hwbm_pool*, i8*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwbm_pool_refill(%struct.hwbm_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwbm_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.hwbm_pool* %0, %struct.hwbm_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %9 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = icmp sle i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @netdev_alloc_frag(i32 %18)
  store i8* %19, i8** %7, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %32 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %31, i32 0, i32 1
  %33 = load i64 (%struct.hwbm_pool*, i8*)*, i64 (%struct.hwbm_pool*, i8*)** %32, align 8
  %34 = icmp ne i64 (%struct.hwbm_pool*, i8*)* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %37 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %36, i32 0, i32 1
  %38 = load i64 (%struct.hwbm_pool*, i8*)*, i64 (%struct.hwbm_pool*, i8*)** %37, align 8
  %39 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 %38(%struct.hwbm_pool* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @hwbm_buf_free(%struct.hwbm_pool* %44, i8* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %30
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hwbm_buf_free(%struct.hwbm_pool*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
