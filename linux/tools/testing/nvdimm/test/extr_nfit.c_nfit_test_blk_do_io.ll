; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_blk_do_io.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_blk_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_blk_region = type { %struct.nd_region, %struct.nfit_blk* }
%struct.nd_region = type { i32 }
%struct.nfit_blk = type { %struct.nfit_blk_mmio* }
%struct.nfit_blk_mmio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@BDW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_blk_region*, i32, i8*, i32, i32)* @nfit_test_blk_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_blk_do_io(%struct.nd_blk_region* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nd_blk_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfit_blk*, align 8
  %12 = alloca %struct.nfit_blk_mmio*, align 8
  %13 = alloca %struct.nd_region*, align 8
  %14 = alloca i32, align 4
  store %struct.nd_blk_region* %0, %struct.nd_blk_region** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.nd_blk_region*, %struct.nd_blk_region** %6, align 8
  %16 = getelementptr inbounds %struct.nd_blk_region, %struct.nd_blk_region* %15, i32 0, i32 1
  %17 = load %struct.nfit_blk*, %struct.nfit_blk** %16, align 8
  store %struct.nfit_blk* %17, %struct.nfit_blk** %11, align 8
  %18 = load %struct.nfit_blk*, %struct.nfit_blk** %11, align 8
  %19 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %18, i32 0, i32 0
  %20 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %19, align 8
  %21 = load i64, i64* @BDW, align 8
  %22 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %20, i64 %21
  store %struct.nfit_blk_mmio* %22, %struct.nfit_blk_mmio** %12, align 8
  %23 = load %struct.nd_blk_region*, %struct.nd_blk_region** %6, align 8
  %24 = getelementptr inbounds %struct.nd_blk_region, %struct.nd_blk_region* %23, i32 0, i32 0
  store %struct.nd_region* %24, %struct.nd_region** %13, align 8
  %25 = load %struct.nd_region*, %struct.nd_region** %13, align 8
  %26 = call i32 @nd_region_acquire_lane(%struct.nd_region* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %5
  %30 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %12, align 8
  %31 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  br label %60

40:                                               ; preds = %5
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %12, align 8
  %43 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @memcpy(i8* %41, i8* %48, i32 %49)
  %51 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %12, align 8
  %52 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @arch_invalidate_pmem(i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %40, %29
  %61 = load %struct.nd_region*, %struct.nd_region** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @nd_region_release_lane(%struct.nd_region* %61, i32 %62)
  ret i32 0
}

declare dso_local i32 @nd_region_acquire_lane(%struct.nd_region*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @arch_invalidate_pmem(i8*, i32) #1

declare dso_local i32 @nd_region_release_lane(%struct.nd_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
