; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_buf_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_buf_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32 }
%struct.smc_buf_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_ib_buf_unmap_sg(%struct.smc_ib_device* %0, %struct.smc_buf_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.smc_ib_device*, align 8
  %5 = alloca %struct.smc_buf_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.smc_ib_device* %0, %struct.smc_ib_device** %4, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %8 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.smc_ib_device*, %struct.smc_ib_device** %4, align 8
  %20 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %23 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %30 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ib_dma_unmap_sg(i32 %21, %struct.TYPE_4__* %28, i32 %35, i32 %36)
  %38 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %39 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
