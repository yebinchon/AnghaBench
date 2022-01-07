; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_get_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_get_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.smc_buf_desc = type { i32, i32** }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ib_get_memory_region(%struct.ib_pd* %0, i32 %1, %struct.smc_buf_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_buf_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smc_buf_desc* %2, %struct.smc_buf_desc** %7, align 8
  %9 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %10 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %19 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %20 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %21 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = call i32* @ib_alloc_mr(%struct.ib_pd* %18, i32 %19, i32 %23)
  %25 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %26 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  store i32* %24, i32** %29, align 8
  %30 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %31 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %17
  %39 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %40 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %47 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %17
  %53 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %7, align 8
  %54 = call i32 @smc_ib_map_mr_sg(%struct.smc_buf_desc* %53)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %38, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32* @ib_alloc_mr(%struct.ib_pd*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @smc_ib_map_mr_sg(%struct.smc_buf_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
