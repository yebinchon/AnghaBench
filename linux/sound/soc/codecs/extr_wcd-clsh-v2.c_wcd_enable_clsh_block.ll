; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_enable_clsh_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_enable_clsh_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd_clsh_ctrl = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WCD9XXX_A_CDC_CLSH_CRC = common dso_local global i32 0, align 4
@WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcd_clsh_ctrl*, i32)* @wcd_enable_clsh_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd_enable_clsh_block(%struct.wcd_clsh_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.wcd_clsh_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  store %struct.wcd_clsh_ctrl* %0, %struct.wcd_clsh_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %6, i32 0, i32 1
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %26, label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %11
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @WCD9XXX_A_CDC_CLSH_CRC, align 4
  %29 = load i32, i32* @WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %20, %17
  %33 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %3, align 8
  %39 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
