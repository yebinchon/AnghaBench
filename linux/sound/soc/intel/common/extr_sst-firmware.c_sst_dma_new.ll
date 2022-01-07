; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dma_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32, %struct.sst_dma*, i32, %struct.TYPE_2__, %struct.sst_pdata* }
%struct.sst_dma = type { i32, %struct.sst_dsp* }
%struct.TYPE_2__ = type { i64 }
%struct.sst_pdata = type { i32, i32, i32, i64, i64 }
%struct.resource = type { i32, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"error: invalid DMA engine %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error: DMA device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @sst_dma_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_dma_new(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  %5 = alloca %struct.sst_dma*, align 8
  %6 = alloca %struct.resource, align 8
  %7 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 5
  %10 = load %struct.sst_pdata*, %struct.sst_pdata** %9, align 8
  store %struct.sst_pdata* %10, %struct.sst_pdata** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 5
  %13 = load %struct.sst_pdata*, %struct.sst_pdata** %12, align 8
  %14 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 5
  %21 = load %struct.sst_pdata*, %struct.sst_pdata** %20, align 8
  %22 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %25 [
    i32 128, label %24
  ]

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %27 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 5
  %31 = load %struct.sst_pdata*, %struct.sst_pdata** %30, align 8
  %32 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %114

37:                                               ; preds = %24
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %39 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sst_dma* @devm_kzalloc(i32 %40, i32 16, i32 %41)
  store %struct.sst_dma* %42, %struct.sst_dma** %5, align 8
  %43 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %44 = icmp ne %struct.sst_dma* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %114

48:                                               ; preds = %37
  %49 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %50 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %51 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %50, i32 0, i32 1
  store %struct.sst_dsp* %49, %struct.sst_dsp** %51, align 8
  %52 = call i32 @memset(%struct.resource* %6, i32 0, i32 24)
  %53 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %54 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %58 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 2
  store i64 %60, i64* %61, align 8
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %63 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %67 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %71 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = sub nsw i64 %73, 1
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %79 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %82 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dw_probe(i32 %80, %struct.resource* %6, i32 %83)
  %85 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %86 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %88 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %48
  %93 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %94 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %98 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %7, align 4
  br label %107

101:                                              ; preds = %48
  %102 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %103 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %104 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %103, i32 0, i32 2
  store %struct.sst_dma* %102, %struct.sst_dma** %104, align 8
  %105 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %106 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  store i32 0, i32* %2, align 4
  br label %114

107:                                              ; preds = %92
  %108 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %109 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sst_dma*, %struct.sst_dma** %5, align 8
  %112 = call i32 @devm_kfree(i32 %110, %struct.sst_dma* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %101, %45, %25, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.sst_dma* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @dw_probe(i32, %struct.resource*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.sst_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
