; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_apbif_wr_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_apbif_wr_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@CHANNEL_CTRL = common dso_local global i32 0, align 4
@CHANNEL_CLEAR = common dso_local global i32 0, align 4
@CHANNEL_STATUS = common dso_local global i32 0, align 4
@CHANNEL_TXFIFO = common dso_local global i32 0, align 4
@CHANNEL_RXFIFO = common dso_local global i32 0, align 4
@CIF_TX_CTRL = common dso_local global i32 0, align 4
@CIF_RX_CTRL = common dso_local global i32 0, align 4
@DAM_LIVE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @tegra30_ahub_apbif_wr_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra30_ahub_apbif_wr_rd_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 143, label %7
    i32 133, label %7
    i32 148, label %7
    i32 134, label %7
    i32 128, label %7
    i32 138, label %7
    i32 142, label %7
    i32 132, label %7
    i32 147, label %7
    i32 135, label %7
    i32 139, label %7
    i32 129, label %7
    i32 144, label %7
    i32 136, label %7
    i32 140, label %7
    i32 130, label %7
    i32 145, label %7
    i32 137, label %7
    i32 141, label %7
    i32 131, label %7
    i32 146, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %51

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CHANNEL_CTRL, align 4
  %12 = call i64 @REG_IN_ARRAY(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CHANNEL_CLEAR, align 4
  %17 = call i64 @REG_IN_ARRAY(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CHANNEL_STATUS, align 4
  %22 = call i64 @REG_IN_ARRAY(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CHANNEL_TXFIFO, align 4
  %27 = call i64 @REG_IN_ARRAY(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CHANNEL_RXFIFO, align 4
  %32 = call i64 @REG_IN_ARRAY(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CIF_TX_CTRL, align 4
  %37 = call i64 @REG_IN_ARRAY(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CIF_RX_CTRL, align 4
  %42 = call i64 @REG_IN_ARRAY(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DAM_LIVE_STATUS, align 4
  %47 = call i64 @REG_IN_ARRAY(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39, %34, %29, %24, %19, %14, %9
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %7
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @REG_IN_ARRAY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
