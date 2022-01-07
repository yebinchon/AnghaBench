; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_new_buf_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_new_buf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_buf_desc = type { i32, i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.smc_link_group = type { %struct.smc_link* }
%struct.smc_link = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smc_buf_desc* (%struct.smc_link_group*, i32, i32)* @smcr_new_buf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smc_buf_desc* @smcr_new_buf_create(%struct.smc_link_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smc_buf_desc*, align 8
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_buf_desc*, align 8
  %9 = alloca %struct.smc_link*, align 8
  %10 = alloca i32, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.smc_buf_desc* @kzalloc(i32 32, i32 %11)
  store %struct.smc_buf_desc* %12, %struct.smc_buf_desc** %8, align 8
  %13 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %14 = icmp ne %struct.smc_buf_desc* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.smc_buf_desc* @ERR_PTR(i32 %17)
  store %struct.smc_buf_desc* %18, %struct.smc_buf_desc** %4, align 8
  br label %143

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_order(i32 %20)
  %22 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %23 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @__GFP_NOWARN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @__GFP_COMP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @__GFP_NORETRY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @__GFP_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %36 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @alloc_pages(i32 %34, i32 %37)
  %39 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %40 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %42 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %19
  %46 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %47 = call i32 @kfree(%struct.smc_buf_desc* %46)
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.smc_buf_desc* @ERR_PTR(i32 %49)
  store %struct.smc_buf_desc* %50, %struct.smc_buf_desc** %4, align 8
  br label %143

51:                                               ; preds = %19
  %52 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %53 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @page_address(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %58 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %60 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %59, i32 0, i32 0
  %61 = load %struct.smc_link*, %struct.smc_link** %60, align 8
  %62 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %63 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %61, i64 %62
  store %struct.smc_link* %63, %struct.smc_link** %9, align 8
  %64 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %65 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @sg_alloc_table(%struct.TYPE_2__* %68, i32 1, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %51
  %74 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %77 = call i32 @smc_buf_free(%struct.smc_link_group* %74, i32 %75, %struct.smc_buf_desc* %76)
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.smc_buf_desc* @ERR_PTR(i32 %78)
  store %struct.smc_buf_desc* %79, %struct.smc_buf_desc** %4, align 8
  br label %143

80:                                               ; preds = %51
  %81 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %82 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %89 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @sg_set_buf(i32 %87, i8* %90, i32 %91)
  %93 = load %struct.smc_link*, %struct.smc_link** %9, align 8
  %94 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %80
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %103

101:                                              ; preds = %80
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @smc_ib_buf_map_sg(i32 %95, %struct.smc_buf_desc* %96, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %112 = call i32 @smc_buf_free(%struct.smc_link_group* %109, i32 %110, %struct.smc_buf_desc* %111)
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  %115 = call %struct.smc_buf_desc* @ERR_PTR(i32 %114)
  store %struct.smc_buf_desc* %115, %struct.smc_buf_desc** %4, align 8
  br label %143

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load %struct.smc_link*, %struct.smc_link** %9, align 8
  %121 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %124 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %127 = call i32 @smc_ib_get_memory_region(i32 %122, i32 %125, %struct.smc_buf_desc* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %134 = call i32 @smc_buf_free(%struct.smc_link_group* %131, i32 %132, %struct.smc_buf_desc* %133)
  %135 = load i32, i32* %10, align 4
  %136 = call %struct.smc_buf_desc* @ERR_PTR(i32 %135)
  store %struct.smc_buf_desc* %136, %struct.smc_buf_desc** %4, align 8
  br label %143

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %116
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %141 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  store %struct.smc_buf_desc* %142, %struct.smc_buf_desc** %4, align 8
  br label %143

143:                                              ; preds = %138, %130, %108, %73, %45, %15
  %144 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  ret %struct.smc_buf_desc* %144
}

declare dso_local %struct.smc_buf_desc* @kzalloc(i32, i32) #1

declare dso_local %struct.smc_buf_desc* @ERR_PTR(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @alloc_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.smc_buf_desc*) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @sg_alloc_table(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @smc_buf_free(%struct.smc_link_group*, i32, %struct.smc_buf_desc*) #1

declare dso_local i32 @sg_set_buf(i32, i8*, i32) #1

declare dso_local i32 @smc_ib_buf_map_sg(i32, %struct.smc_buf_desc*, i32) #1

declare dso_local i32 @smc_ib_get_memory_region(i32, i32, %struct.smc_buf_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
