; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_spdif_clk_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_spdif_clk_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_master = type { i32 }

@BP = common dso_local global i32 0, align 4
@SE = common dso_local global i32 0, align 4
@a_mclk = common dso_local global i32 0, align 4
@b_mclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, i32)* @fsi_spdif_clk_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_spdif_clk_ctrl(%struct.fsi_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %9 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %8)
  store %struct.fsi_master* %9, %struct.fsi_master** %5, align 8
  %10 = load i32, i32* @BP, align 4
  %11 = load i32, i32* @SE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %21 = call i64 @fsi_is_port_a(%struct.fsi_priv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %25 = load i32, i32* @a_mclk, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fsi_core_mask_set(%struct.fsi_master* %24, i32 %25, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %31 = load i32, i32* @b_mclk, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @fsi_core_mask_set(%struct.fsi_master* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %28, %23 ], [ %34, %29 ]
  ret void
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i64 @fsi_is_port_a(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_core_mask_set(%struct.fsi_master*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
