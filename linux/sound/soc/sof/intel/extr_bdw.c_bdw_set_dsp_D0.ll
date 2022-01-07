; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_set_dsp_D0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_set_dsp_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i64* }

@BDW_PCI_BAR = common dso_local global i64 0, align 8
@PCI_VDRTCTL2 = common dso_local global i64 0, align 8
@PCI_VDRTCL2_DCLCGE = common dso_local global i32 0, align 4
@PCI_VDRTCL2_DTCGE = common dso_local global i32 0, align 4
@PCI_VDRTCTL0 = common dso_local global i64 0, align 8
@PCI_VDRTCL0_D3PGD = common dso_local global i32 0, align 4
@PCI_PMCS = common dso_local global i64 0, align 8
@PCI_PMCS_PS_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BDW_DSP_BAR = common dso_local global i64 0, align 8
@SHIM_CSR = common dso_local global i64 0, align 8
@SHIM_CSR_S1IOCS = common dso_local global i32 0, align 4
@SHIM_CSR_SBCS1 = common dso_local global i32 0, align 4
@SHIM_CSR_LPCS = common dso_local global i32 0, align 4
@SHIM_CSR_STALL = common dso_local global i32 0, align 4
@SHIM_CSR_DCS_MASK = common dso_local global i32 0, align 4
@SHIM_CLKCTL = common dso_local global i64 0, align 8
@SHIM_CLKCTL_MASK = common dso_local global i32 0, align 4
@SHIM_CLKCTL_DCPLCG = common dso_local global i32 0, align 4
@SHIM_CLKCTL_SCOE0 = common dso_local global i32 0, align 4
@PCI_VDRTCL2_APLLSE_MASK = common dso_local global i32 0, align 4
@SHIM_CSR2 = common dso_local global i64 0, align 8
@SHIM_CSR2_SDFD_SSP1 = common dso_local global i32 0, align 4
@SHIM_HMDC = common dso_local global i32 0, align 4
@SHIM_HMDC_HDDA_E0_ALLCH = common dso_local global i32 0, align 4
@SHIM_HMDC_HDDA_E1_ALLCH = common dso_local global i32 0, align 4
@SHIM_IMRX = common dso_local global i32 0, align 4
@SHIM_IMRX_BUSY = common dso_local global i32 0, align 4
@SHIM_IMRX_DONE = common dso_local global i32 0, align 4
@SHIM_IMRD = common dso_local global i32 0, align 4
@SHIM_IMRD_DONE = common dso_local global i32 0, align 4
@SHIM_IMRD_BUSY = common dso_local global i32 0, align 4
@SHIM_IMRD_SSP0 = common dso_local global i32 0, align 4
@SHIM_IMRD_DMAC = common dso_local global i32 0, align 4
@SHIM_IPCX = common dso_local global i32 0, align 4
@SHIM_IPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @bdw_set_dsp_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_set_dsp_D0(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 10, i32* %4, align 4
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = load i64, i64* @BDW_PCI_BAR, align 8
  %8 = load i64, i64* @PCI_VDRTCTL2, align 8
  %9 = load i32, i32* @PCI_VDRTCL2_DCLCGE, align 4
  %10 = load i32, i32* @PCI_VDRTCL2_DTCGE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %6, i64 %7, i64 %8, i32 %11, i32 0)
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %14 = load i64, i64* @BDW_PCI_BAR, align 8
  %15 = load i64, i64* @PCI_VDRTCTL0, align 8
  %16 = load i32, i32* @PCI_VDRTCL0_D3PGD, align 4
  %17 = load i32, i32* @PCI_VDRTCL0_D3PGD, align 4
  %18 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %13, i64 %14, i64 %15, i32 %16, i32 %17)
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %20 = load i64, i64* @BDW_PCI_BAR, align 8
  %21 = load i64, i64* @PCI_PMCS, align 8
  %22 = load i32, i32* @PCI_PMCS_PS_MASK, align 4
  %23 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %19, i64 %20, i64 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %43, %1
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @BDW_PCI_BAR, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI_PMCS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* @PCI_PMCS_PS_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %48

43:                                               ; preds = %28
  %44 = call i32 @msleep(i32 20)
  br label %24

45:                                               ; preds = %24
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %152

48:                                               ; preds = %42
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %50 = load i64, i64* @BDW_DSP_BAR, align 8
  %51 = load i64, i64* @SHIM_CSR, align 8
  %52 = load i32, i32* @SHIM_CSR_S1IOCS, align 4
  %53 = load i32, i32* @SHIM_CSR_SBCS1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SHIM_CSR_LPCS, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %49, i64 %50, i64 %51, i32 %56, i32 0)
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %59 = load i64, i64* @BDW_DSP_BAR, align 8
  %60 = load i64, i64* @SHIM_CSR, align 8
  %61 = load i32, i32* @SHIM_CSR_STALL, align 4
  %62 = load i32, i32* @SHIM_CSR_DCS_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SHIM_CSR_STALL, align 4
  %65 = call i32 @SHIM_CSR_DCS(i32 4)
  %66 = or i32 %64, %65
  %67 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %58, i64 %59, i64 %60, i32 %63, i32 %66)
  %68 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %69 = load i64, i64* @BDW_DSP_BAR, align 8
  %70 = load i64, i64* @SHIM_CLKCTL, align 8
  %71 = load i32, i32* @SHIM_CLKCTL_MASK, align 4
  %72 = load i32, i32* @SHIM_CLKCTL_DCPLCG, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SHIM_CLKCTL_SCOE0, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SHIM_CLKCTL_MASK, align 4
  %77 = load i32, i32* @SHIM_CLKCTL_DCPLCG, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SHIM_CLKCTL_SCOE0, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %68, i64 %69, i64 %70, i32 %75, i32 %80)
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %83 = call i32 @bdw_reset(%struct.snd_sof_dev* %82)
  %84 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %85 = load i64, i64* @BDW_PCI_BAR, align 8
  %86 = load i64, i64* @PCI_VDRTCTL2, align 8
  %87 = load i32, i32* @PCI_VDRTCL2_DCLCGE, align 4
  %88 = load i32, i32* @PCI_VDRTCL2_DTCGE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PCI_VDRTCL2_DCLCGE, align 4
  %91 = load i32, i32* @PCI_VDRTCL2_DTCGE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %84, i64 %85, i64 %86, i32 %89, i32 %92)
  %94 = call i32 @usleep_range(i32 50, i32 55)
  %95 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %96 = load i64, i64* @BDW_PCI_BAR, align 8
  %97 = load i64, i64* @PCI_VDRTCTL2, align 8
  %98 = load i32, i32* @PCI_VDRTCL2_APLLSE_MASK, align 4
  %99 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %95, i64 %96, i64 %97, i32 %98, i32 0)
  %100 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %101 = load i64, i64* @BDW_PCI_BAR, align 8
  %102 = load i64, i64* @PCI_VDRTCTL0, align 8
  %103 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %100, i64 %101, i64 %102, i32 -4, i32 0)
  %104 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %105 = load i64, i64* @BDW_DSP_BAR, align 8
  %106 = load i64, i64* @SHIM_CSR2, align 8
  %107 = load i32, i32* @SHIM_CSR2_SDFD_SSP1, align 4
  %108 = load i32, i32* @SHIM_CSR2_SDFD_SSP1, align 4
  %109 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %104, i64 %105, i64 %106, i32 %107, i32 %108)
  %110 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %111 = load i64, i64* @BDW_DSP_BAR, align 8
  %112 = load i32, i32* @SHIM_HMDC, align 4
  %113 = load i32, i32* @SHIM_HMDC_HDDA_E0_ALLCH, align 4
  %114 = load i32, i32* @SHIM_HMDC_HDDA_E1_ALLCH, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @SHIM_HMDC_HDDA_E0_ALLCH, align 4
  %117 = load i32, i32* @SHIM_HMDC_HDDA_E1_ALLCH, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %110, i64 %111, i32 %112, i32 %115, i32 %118)
  %120 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %121 = load i64, i64* @BDW_DSP_BAR, align 8
  %122 = load i32, i32* @SHIM_IMRX, align 4
  %123 = load i32, i32* @SHIM_IMRX_BUSY, align 4
  %124 = load i32, i32* @SHIM_IMRX_DONE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %120, i64 %121, i32 %122, i32 %125, i32 0)
  %127 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %128 = load i64, i64* @BDW_DSP_BAR, align 8
  %129 = load i32, i32* @SHIM_IMRD, align 4
  %130 = load i32, i32* @SHIM_IMRD_DONE, align 4
  %131 = load i32, i32* @SHIM_IMRD_BUSY, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SHIM_IMRD_SSP0, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SHIM_IMRD_DMAC, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %127, i64 %128, i32 %129, i32 %136, i32 0)
  %138 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %139 = load i64, i64* @BDW_DSP_BAR, align 8
  %140 = load i32, i32* @SHIM_IPCX, align 4
  %141 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %138, i64 %139, i32 %140, i32 0)
  %142 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %143 = load i64, i64* @BDW_DSP_BAR, align 8
  %144 = load i32, i32* @SHIM_IPCD, align 4
  %145 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %142, i64 %143, i32 %144, i32 0)
  %146 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %147 = load i64, i64* @BDW_DSP_BAR, align 8
  %148 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %146, i64 %147, i32 128, i32 6)
  %149 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %150 = load i64, i64* @BDW_DSP_BAR, align 8
  %151 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %149, i64 %150, i32 224, i32 12298)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %48, %45
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i64, i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @SHIM_CSR_DCS(i32) #1

declare dso_local i32 @bdw_reset(%struct.snd_sof_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i64, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
