; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_set_dsp_D3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_set_dsp_D3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SST_VDRTCTL2 = common dso_local global i64 0, align 8
@SST_VDRTCL2_DCLCGE = common dso_local global i32 0, align 4
@SST_VDRTCL2_DTCGE = common dso_local global i32 0, align 4
@SST_VDRTCTL0 = common dso_local global i64 0, align 8
@SST_VDRTCL0_DSRAMPGE_MASK = common dso_local global i32 0, align 4
@SST_VDRTCL0_ISRAMPGE_MASK = common dso_local global i32 0, align 4
@SST_VDRTCL0_D3PGD = common dso_local global i32 0, align 4
@SST_VDRTCL0_D3SRAMPGD = common dso_local global i32 0, align 4
@SST_VDRTCL2_APLLSE_MASK = common dso_local global i32 0, align 4
@SST_CLKCTL = common dso_local global i32 0, align 4
@SST_CLKCTL_MASK = common dso_local global i32 0, align 4
@SST_PMCS = common dso_local global i64 0, align 8
@SST_PMCS_PS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @hsw_set_dsp_D3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_set_dsp_D3(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %6 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SST_VDRTCTL2, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %13 = load i32, i32* @SST_VDRTCL2_DTCGE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SST_VDRTCTL2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %18, i64 %24)
  %26 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %27 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SST_VDRTCTL0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @SST_VDRTCL0_DSRAMPGE_MASK, align 4
  %34 = load i32, i32* @SST_VDRTCL0_ISRAMPGE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @SST_VDRTCL0_D3PGD, align 4
  %39 = load i32, i32* @SST_VDRTCL0_D3SRAMPGD, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %46 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SST_VDRTCTL0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %44, i64 %50)
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SST_VDRTCTL2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @SST_VDRTCL2_APLLSE_MASK, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %64 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SST_VDRTCTL2, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %62, i64 %68)
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %71 = load i32, i32* @SST_CLKCTL, align 4
  %72 = load i32, i32* @SST_CLKCTL_MASK, align 4
  %73 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %75 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SST_PMCS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @SST_PMCS_PS_MASK, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %86 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SST_PMCS, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %84, i64 %90)
  %92 = call i32 @udelay(i32 50)
  %93 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %94 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SST_VDRTCTL2, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %101 = load i32, i32* @SST_VDRTCL2_DTCGE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %107 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SST_VDRTCTL2, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %105, i64 %111)
  %113 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
