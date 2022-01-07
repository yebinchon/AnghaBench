; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_flyback_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_flyback_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd_clsh_ctrl = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WCD9XXX_A_ANA_RX_SUPPLIES = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_VNEG_EN_MASK = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT = common dso_local global i32 0, align 4
@WCD_USLEEP_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcd_clsh_ctrl*, i32, i32)* @wcd_clsh_flyback_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd_clsh_flyback_ctrl(%struct.wcd_clsh_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wcd_clsh_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.wcd_clsh_ctrl* %0, %struct.wcd_clsh_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %28, label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %13
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @WCD9XXX_A_ANA_RX_SUPPLIES, align 4
  %31 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_EN_MASK, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %34)
  %36 = call i32 @usleep_range(i32 100, i32 110)
  br label %37

37:                                               ; preds = %28, %22, %19
  %38 = load i32, i32* @WCD_USLEEP_RANGE, align 4
  %39 = add nsw i32 500, %38
  %40 = call i32 @usleep_range(i32 500, i32 %39)
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
