; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_rx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { i32 }

@SSPA_RXSP = common dso_local global i32 0, align 4
@SSPA_SP_S_EN = common dso_local global i32 0, align 4
@SSPA_SP_WEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_device*)* @mmp_sspa_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_sspa_rx_enable(%struct.ssp_device* %0) #0 {
  %2 = alloca %struct.ssp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ssp_device* %0, %struct.ssp_device** %2, align 8
  %4 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %5 = load i32, i32* @SSPA_RXSP, align 4
  %6 = call i32 @mmp_sspa_read_reg(%struct.ssp_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SSPA_SP_S_EN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @SSPA_SP_WEN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %14 = load i32, i32* @SSPA_RXSP, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @mmp_sspa_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @mmp_sspa_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
