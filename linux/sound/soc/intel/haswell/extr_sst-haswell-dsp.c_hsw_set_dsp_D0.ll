; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_set_dsp_D0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_set_dsp_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SST_VDRTCTL2 = common dso_local global i64 0, align 8
@SST_VDRTCL2_DCLCGE = common dso_local global i32 0, align 4
@SST_VDRTCL2_DTCGE = common dso_local global i32 0, align 4
@SST_VDRTCTL0 = common dso_local global i64 0, align 8
@SST_VDRTCL0_D3PGD = common dso_local global i32 0, align 4
@SST_PMCS = common dso_local global i64 0, align 8
@SST_PMCS_PS_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SST_CSR = common dso_local global i32 0, align 4
@SST_CSR_S1IOCS = common dso_local global i32 0, align 4
@SST_CSR_SBCS1 = common dso_local global i32 0, align 4
@SST_CSR_LPCS = common dso_local global i32 0, align 4
@SST_CSR_STALL = common dso_local global i32 0, align 4
@SST_CSR_DCS_MASK = common dso_local global i32 0, align 4
@SST_CLKCTL = common dso_local global i32 0, align 4
@SST_CLKCTL_MASK = common dso_local global i32 0, align 4
@SST_CLKCTL_DCPLCG = common dso_local global i32 0, align 4
@SST_CLKCTL_SCOE0 = common dso_local global i32 0, align 4
@SST_VDRTCL2_APLLSE_MASK = common dso_local global i32 0, align 4
@SST_VDRTCL0_DSRAMPGE_MASK = common dso_local global i32 0, align 4
@SST_VDRTCL0_ISRAMPGE_MASK = common dso_local global i32 0, align 4
@SST_VDRTCL0_DSRAMPGE_SHIFT = common dso_local global i32 0, align 4
@SST_CSR2 = common dso_local global i32 0, align 4
@SST_CSR2_SDFD_SSP1 = common dso_local global i32 0, align 4
@SST_HMDC = common dso_local global i32 0, align 4
@SST_HMDC_HDDA_E0_ALLCH = common dso_local global i32 0, align 4
@SST_HMDC_HDDA_E1_ALLCH = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@SST_IMRX_BUSY = common dso_local global i32 0, align 4
@SST_IMRX_DONE = common dso_local global i32 0, align 4
@SST_IMRD = common dso_local global i32 0, align 4
@SST_IMRD_DONE = common dso_local global i32 0, align 4
@SST_IMRD_BUSY = common dso_local global i32 0, align 4
@SST_IMRD_SSP0 = common dso_local global i32 0, align 4
@SST_IMRD_DMAC = common dso_local global i32 0, align 4
@SST_IPCX = common dso_local global i32 0, align 4
@SST_IPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @hsw_set_dsp_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_set_dsp_D0(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 10, i32* %4, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SST_VDRTCTL2, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %15 = load i32, i32* @SST_VDRTCL2_DTCGE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SST_VDRTCTL2, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %20, i64 %26)
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SST_VDRTCTL0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @SST_VDRTCL0_D3PGD, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %40 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SST_VDRTCTL0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %38, i64 %44)
  %46 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %47 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SST_PMCS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @SST_PMCS_PS_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %59 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SST_PMCS, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %57, i64 %63)
  br label %65

65:                                               ; preds = %82, %1
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %71 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SST_PMCS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  %77 = load i32, i32* @SST_PMCS_PS_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %87

82:                                               ; preds = %69
  %83 = call i32 @msleep(i32 1)
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %225

87:                                               ; preds = %81
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %89 = load i32, i32* @SST_CSR, align 4
  %90 = load i32, i32* @SST_CSR_S1IOCS, align 4
  %91 = load i32, i32* @SST_CSR_SBCS1, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SST_CSR_LPCS, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %88, i32 %89, i32 %94, i32 0)
  %96 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %97 = load i32, i32* @SST_CSR, align 4
  %98 = load i32, i32* @SST_CSR_STALL, align 4
  %99 = load i32, i32* @SST_CSR_DCS_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SST_CSR_STALL, align 4
  %102 = call i32 @SST_CSR_DCS(i32 4)
  %103 = or i32 %101, %102
  %104 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %96, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %106 = load i32, i32* @SST_CLKCTL, align 4
  %107 = load i32, i32* @SST_CLKCTL_MASK, align 4
  %108 = load i32, i32* @SST_CLKCTL_DCPLCG, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SST_CLKCTL_SCOE0, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SST_CLKCTL_MASK, align 4
  %113 = load i32, i32* @SST_CLKCTL_DCPLCG, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SST_CLKCTL_SCOE0, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %105, i32 %106, i32 %111, i32 %116)
  %118 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %119 = call i32 @hsw_reset(%struct.sst_dsp* %118)
  %120 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %121 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SST_VDRTCTL2, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl(i64 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @SST_VDRTCL2_DCLCGE, align 4
  %128 = load i32, i32* @SST_VDRTCL2_DTCGE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %134 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SST_VDRTCTL2, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %132, i64 %138)
  %140 = call i32 @udelay(i32 50)
  %141 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %142 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SST_VDRTCTL2, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl(i64 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* @SST_VDRTCL2_APLLSE_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %154 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SST_VDRTCTL2, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %152, i64 %158)
  %160 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %161 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SST_VDRTCTL0, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @SST_VDRTCL0_DSRAMPGE_MASK, align 4
  %168 = load i32, i32* @SST_VDRTCL0_ISRAMPGE_MASK, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @SST_VDRTCL0_DSRAMPGE_SHIFT, align 4
  %173 = shl i32 1, %172
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %6, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %179 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SST_VDRTCTL0, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %177, i64 %183)
  %185 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %186 = load i32, i32* @SST_CSR2, align 4
  %187 = load i32, i32* @SST_CSR2_SDFD_SSP1, align 4
  %188 = load i32, i32* @SST_CSR2_SDFD_SSP1, align 4
  %189 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %191 = load i32, i32* @SST_HMDC, align 4
  %192 = load i32, i32* @SST_HMDC_HDDA_E0_ALLCH, align 4
  %193 = load i32, i32* @SST_HMDC_HDDA_E1_ALLCH, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @SST_HMDC_HDDA_E0_ALLCH, align 4
  %196 = load i32, i32* @SST_HMDC_HDDA_E1_ALLCH, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %190, i32 %191, i32 %194, i32 %197)
  %199 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %200 = load i32, i32* @SST_IMRX, align 4
  %201 = load i32, i32* @SST_IMRX_BUSY, align 4
  %202 = load i32, i32* @SST_IMRX_DONE, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %199, i32 %200, i32 %203, i32 0)
  %205 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %206 = load i32, i32* @SST_IMRD, align 4
  %207 = load i32, i32* @SST_IMRD_DONE, align 4
  %208 = load i32, i32* @SST_IMRD_BUSY, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @SST_IMRD_SSP0, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @SST_IMRD_DMAC, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %205, i32 %206, i32 %213, i32 0)
  %215 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %216 = load i32, i32* @SST_IPCX, align 4
  %217 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %215, i32 %216, i32 0)
  %218 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %219 = load i32, i32* @SST_IPCD, align 4
  %220 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %218, i32 %219, i32 0)
  %221 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %222 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %221, i32 128, i32 6)
  %223 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %224 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %223, i32 224, i32 12298)
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %87, %84
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @SST_CSR_DCS(i32) #1

declare dso_local i32 @hsw_reset(%struct.sst_dsp*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @sst_dsp_shim_write(%struct.sst_dsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
