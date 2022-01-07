; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { %struct.smc_link* }
%struct.smc_link = type { i32 }
%struct.smc_buf_desc = type { i32, i64, i32*, i64* }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link_group*, i32, %struct.smc_buf_desc*)* @smcr_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcr_buf_free(%struct.smc_link_group* %0, i32 %1, %struct.smc_buf_desc* %2) #0 {
  %4 = alloca %struct.smc_link_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_buf_desc*, align 8
  %7 = alloca %struct.smc_link*, align 8
  store %struct.smc_link_group* %0, %struct.smc_link_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.smc_buf_desc* %2, %struct.smc_buf_desc** %6, align 8
  %8 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %9 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %8, i32 0, i32 0
  %10 = load %struct.smc_link*, %struct.smc_link** %9, align 8
  %11 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %12 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %10, i64 %11
  store %struct.smc_link* %12, %struct.smc_link** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %17 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %25 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @smc_ib_put_memory_region(i64 %29)
  br label %31

31:                                               ; preds = %23, %15
  %32 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %33 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = call i32 @smc_ib_buf_unmap_sg(i32 %34, %struct.smc_buf_desc* %35, i32 %36)
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %40 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @smc_ib_buf_unmap_sg(i32 %41, %struct.smc_buf_desc* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %47 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @sg_free_table(i32* %50)
  %52 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %53 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %58 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %61 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @__free_pages(i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %45
  %65 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %66 = call i32 @kfree(%struct.smc_buf_desc* %65)
  ret void
}

declare dso_local i32 @smc_ib_put_memory_region(i64) #1

declare dso_local i32 @smc_ib_buf_unmap_sg(i32, %struct.smc_buf_desc*, i32) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @__free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.smc_buf_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
