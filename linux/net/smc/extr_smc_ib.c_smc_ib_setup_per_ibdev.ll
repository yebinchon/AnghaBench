; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_setup_per_ibdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_setup_per_ibdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32, i32*, i32*, i32 }
%struct.ib_cq_init_attr = type { i32, i32 }

@SMC_MAX_CQE = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@smc_wr_tx_cq_handler = common dso_local global i32 0, align 4
@smc_wr_rx_cq_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @smc_ib_setup_per_ibdev(%struct.smc_ib_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.smc_ib_device*, align 8
  %4 = alloca %struct.ib_cq_init_attr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.smc_ib_device* %0, %struct.smc_ib_device** %3, align 8
  %8 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %4, i32 0, i32 0
  %9 = load i32, i32* @SMC_MAX_CQE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @cache_line_size()
  %12 = icmp eq i32 %11, 128
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 7, i32 6
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @MAX_ORDER, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @SMC_MAX_CQE, align 4
  %20 = add nsw i32 %19, 2
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sub nsw i32 %30, 2
  %32 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %4, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %35 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @smc_wr_tx_cq_handler, align 4
  %38 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %39 = call i8* @ib_create_cq(i32 %36, i32 %37, i32* null, %struct.smc_ib_device* %38, %struct.ib_cq_init_attr* %4)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %42 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %44 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @PTR_ERR_OR_ZERO(i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %48 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %54 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %2, align 8
  br label %90

56:                                               ; preds = %33
  %57 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %58 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @smc_wr_rx_cq_handler, align 4
  %61 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %62 = call i8* @ib_create_cq(i32 %59, i32 %60, i32* null, %struct.smc_ib_device* %61, %struct.ib_cq_init_attr* %4)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %65 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %67 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @PTR_ERR_OR_ZERO(i32* %68)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %71 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %77 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %84

78:                                               ; preds = %56
  %79 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %80 = call i32 @smc_wr_add_dev(%struct.smc_ib_device* %79)
  %81 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %82 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %2, align 8
  br label %90

84:                                               ; preds = %75
  %85 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %86 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ib_destroy_cq(i32* %87)
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %2, align 8
  br label %90

90:                                               ; preds = %84, %78, %52
  %91 = load i64, i64* %2, align 8
  ret i64 %91
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i8* @ib_create_cq(i32, i32, i32*, %struct.smc_ib_device*, %struct.ib_cq_init_attr*) #1

declare dso_local i64 @PTR_ERR_OR_ZERO(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @smc_wr_add_dev(%struct.smc_ib_device*) #1

declare dso_local i32 @ib_destroy_cq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
