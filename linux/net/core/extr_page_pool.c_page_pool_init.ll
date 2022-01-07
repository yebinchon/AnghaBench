; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c_page_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c_page_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.page_pool_params = type { i32 }

@PP_FLAG_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PP_FLAG_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_pool*, %struct.page_pool_params*)* @page_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_pool_init(%struct.page_pool* %0, %struct.page_pool_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page_pool*, align 8
  %5 = alloca %struct.page_pool_params*, align 8
  %6 = alloca i32, align 4
  store %struct.page_pool* %0, %struct.page_pool** %4, align 8
  store %struct.page_pool_params* %1, %struct.page_pool_params** %5, align 8
  store i32 1024, i32* %6, align 4
  %7 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %8 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %7, i32 0, i32 0
  %9 = load %struct.page_pool_params*, %struct.page_pool_params** %5, align 8
  %10 = call i32 @memcpy(%struct.TYPE_2__* %8, %struct.page_pool_params* %9, i32 24)
  %11 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %12 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PP_FLAG_ALL, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %24 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %30 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp ugt i32 %34, 32768
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @E2BIG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %33
  %40 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %41 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %48 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %87

56:                                               ; preds = %46, %39
  %57 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %58 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %57, i32 0, i32 3
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i64 @ptr_ring_init(i32* %58, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %87

66:                                               ; preds = %56
  %67 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %68 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %67, i32 0, i32 2
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %71 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %70, i32 0, i32 1
  %72 = call i32 @refcount_set(i32* %71, i32 1)
  %73 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %74 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PP_FLAG_DMA_MAP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %82 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @get_device(i32 %84)
  br label %86

86:                                               ; preds = %80, %66
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %63, %53, %36, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.page_pool_params*, i32) #1

declare dso_local i64 @ptr_ring_init(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
