; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_rx_en.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_rx_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_tdm_info = type { i32 }

@REG_PROCESS_CTRL = common dso_local global i32 0, align 4
@PROCESS_RX_EN = common dso_local global i64 0, align 8
@PROCESS_TDM_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_tdm_info*, i32)* @zx_tdm_rx_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_tdm_rx_en(%struct.zx_tdm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.zx_tdm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.zx_tdm_info* %0, %struct.zx_tdm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %3, align 8
  %7 = load i32, i32* @REG_PROCESS_CTRL, align 4
  %8 = call i64 @zx_tdm_readl(%struct.zx_tdm_info* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* @PROCESS_RX_EN, align 8
  %13 = load i64, i64* @PROCESS_TDM_EN, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* %5, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i64, i64* @PROCESS_RX_EN, align 8
  %19 = load i64, i64* @PROCESS_TDM_EN, align 8
  %20 = or i64 %18, %19
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %5, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %3, align 8
  %26 = load i32, i32* @REG_PROCESS_CTRL, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %25, i32 %26, i64 %27)
  ret void
}

declare dso_local i64 @zx_tdm_readl(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @zx_tdm_writel(%struct.zx_tdm_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
