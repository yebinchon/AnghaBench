; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_block_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_block_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_mem_block = type { i64, i32, i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c" disabled block %d:%d at offset 0x%x\0A\00", align 1
@SST_VDRTCTL2 = common dso_local global i64 0, align 8
@SST_VDRTCL2_DCLCGE = common dso_local global i32 0, align 4
@SST_VDRTCTL0 = common dso_local global i64 0, align 8
@SST_VDRTCL0_DSRAMPGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_mem_block*)* @hsw_block_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_block_disable(%struct.sst_mem_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_mem_block*, align 8
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_mem_block* %0, %struct.sst_mem_block** %3, align 8
  %7 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %8 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %7, i32 0, i32 4
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  store %struct.sst_dsp* %9, %struct.sst_dsp** %4, align 8
  %10 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %11 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  %17 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %18 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %17, i32 0, i32 4
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %18, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %23 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %26 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %29 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %33 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SST_VDRTCTL2, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %45 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SST_VDRTCTL2, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %43, i64 %49)
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SST_VDRTCTL0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.sst_mem_block*, %struct.sst_mem_block** %3, align 8
  %59 = call i32 @hsw_block_get_bit(%struct.sst_mem_block* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SST_VDRTCL0_DSRAMPGE_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %16
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %69 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SST_VDRTCTL0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %67, i64 %73)
  br label %75

75:                                               ; preds = %64, %16
  %76 = call i32 @udelay(i32 10)
  %77 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %78 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SST_VDRTCTL2, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %89 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SST_VDRTCTL2, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %87, i64 %93)
  %95 = call i32 @udelay(i32 50)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %75, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hsw_block_get_bit(%struct.sst_mem_block*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
