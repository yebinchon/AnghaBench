; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"API usage violation\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ptr_ring is not empty\00", align 1
@PP_FLAG_DMA_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__page_pool_free(%struct.page_pool* %0) #0 {
  %2 = alloca %struct.page_pool*, align 8
  store %struct.page_pool* %0, %struct.page_pool** %2, align 8
  %3 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %4 = call i32 @page_pool_put(%struct.page_pool* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %9 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WARN(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %14 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %13, i32 0, i32 1
  %15 = call i32 @ptr_ring_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %21 = call i32 @__page_pool_safe_to_destroy(%struct.page_pool* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %25 = call i32 @__warn_in_flight(%struct.page_pool* %24)
  br label %26

26:                                               ; preds = %23, %7
  %27 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %28 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %27, i32 0, i32 1
  %29 = call i32 @ptr_ring_cleanup(i32* %28, i32* null)
  %30 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %31 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PP_FLAG_DMA_MAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %39 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @put_device(i32 %41)
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %45 = call i32 @kfree(%struct.page_pool* %44)
  br label %46

46:                                               ; preds = %43, %6
  ret void
}

declare dso_local i32 @page_pool_put(%struct.page_pool*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ptr_ring_empty(i32*) #1

declare dso_local i32 @__page_pool_safe_to_destroy(%struct.page_pool*) #1

declare dso_local i32 @__warn_in_flight(%struct.page_pool*) #1

declare dso_local i32 @ptr_ring_cleanup(i32*, i32*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.page_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
